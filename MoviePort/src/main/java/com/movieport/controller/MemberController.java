package com.movieport.controller;

import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.movieport.model.MemberVO;
import com.movieport.service.MemberService;
import com.movieport.service.KakaoService;


@Controller
@RequestMapping(value = "/member/*")
public class MemberController {
	private static final Logger log = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	private MemberService memberService;
	
	@Autowired
	private KakaoService membersService;

	@Autowired
	private JavaMailSender mailSender;

	@Autowired
	private BCryptPasswordEncoder pwEncoder;	

	// 회원가입 페이지 이동
	@GetMapping("/join")
	public void joinGET() {
		log.info("회원가입 페이지 진입");
	}

	// 회원가입
	@PostMapping("/join")
	public String joinPOST(MemberVO member) throws Exception {
		log.info("회원가입 동작");

		String rawPw = ""; // 인코딩 전 비밀번호
		String encodePw = ""; // 인코딩 후 비밀번호

		rawPw = member.getPwd(); // 비밀번호 데이터 얻기
		encodePw = pwEncoder.encode(rawPw); // 비밀번호 인코딩
		member.setPwd(encodePw); // 인코딩된 비밀번호 member 객체에 다시 저장

		// 회원가입 쿼리 실행
		memberService.memberJoin(member);

		return "redirect:/main";
	}

	// 로그인 페이지 이동
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void loginGET() {
		log.info("로그인 페이지 이동");
	}

	// 아이디 중복 검사
	@PostMapping("/memberIdChk")
	@ResponseBody
	public String memberIdChkPOST(String id) throws Exception {
		log.info("아이디 중복 검사 동작");

		int result = memberService.idCheck(id);

		log.info("결과값 = " + result);

		if (result != 0) {
			return "fail"; // 아이디 중복
		} else {
			return "success"; // 아이디 중복 X
		}
	}

	// 이메일 인증
	@GetMapping("/mailCheck")
	@ResponseBody
	public String mailCheckGET(String email) throws Exception {
		// 뷰로부터 넘어온 데이터 확인
		log.info("이메일 : " + email);

		// 인증번호(난수) 생성
		Random random = new Random();
		int checkNum = random.nextInt(888888) + 111111;
		log.info("인증번호 : " + checkNum);

		// 이메일 보내기
		String setFrom = "gustlr7374@naver.com";
		String toMail = email;
		String title = "MoviePort - 회원가입 인증 이메일입니다.";
		String content = "홈페이지를 방문해주셔서 감사합니다." + "<br><br>" + "인증번호는 " + checkNum + " 입니다." + "<br>"
				+ "해당 인증번호를 인증번호 확인란에 기입하여 주세요.";

		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper hepler = new MimeMessageHelper(message, true, "utf-8");
			hepler.setFrom(setFrom);
			hepler.setTo(toMail);
			hepler.setSubject(title);
			hepler.setText(content, true);
			mailSender.send(message);
		} catch (Exception e) {
			e.printStackTrace();
		}

		String num = Integer.toString(checkNum);
		return num;
	}

	// 로그인
	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public String loginPOST(HttpServletRequest request, MemberVO member, RedirectAttributes rttr) throws Exception {

		HttpSession session = request.getSession();
		String rawPw = "";
		String encodePw = "";

		MemberVO lvo = memberService.memberLogin(member); // 제출한 아이디하고 일치하는 아이디가 있는지 확인

		if (lvo != null) { // 아이디,비밀번호가 일치하지 않는경우

			rawPw = member.getPwd(); // 사용자가 제출한 비밀번호
			encodePw = lvo.getPwd(); // DB에 저장된 인코딩된 비밀번호
			System.out.println(rawPw + "====>" + encodePw);

			if (true == pwEncoder.matches(rawPw, encodePw)) { // 비밀번호가 일치하는지 판단
//				lvo.setPwd("");
				session.setAttribute("member", lvo); // session에 사용자 정보 저장
				return "redirect:/main";
			} else {
				rttr.addFlashAttribute("result", 0);
				rttr.addFlashAttribute("msg", "비밀번호가 일치하지 않습니다.");
				return "redirect:/member/login";
			}
		} else { // 일치하는 아이디가 존재하지 않을 시(로그인 실패처리)
			rttr.addFlashAttribute("result", 0);
			rttr.addFlashAttribute("msg", "아이디 또는 비밀번호가 일치하지 않습니다.");
			return "redirect:/member/login";
		}
	}

	// 카카오 로그인
	@RequestMapping(value="/kakaoLogin", method=RequestMethod.GET)
	public String kakaoLogin(@RequestParam(value = "code", required = false) String code, HttpServletRequest request, MemberVO member, RedirectAttributes rttr) throws Exception {
		log.info("KakaoLogin 진입");
		String access_Token = membersService.getAccessToken(code);
	    MemberVO userInfo = membersService.getUserInfo(access_Token);
	    
	    HttpSession session = request.getSession();
	    
		String rawEmail = "";
		String encodeEmail = "";	
		
		if(userInfo != null) { // 아이디,비밀번호가 일치하지 않는경우
			
			rawEmail = userInfo.getEmail(); // 사용자가 제출한 비밀번호
			encodeEmail = userInfo.getEmail(); // DB에 저장된 인코딩된 비밀번호

			
			if(rawEmail.equals(encodeEmail)) { // 비밀번호가 일치하는지 판단
				userInfo.setEmail("");
				session.setAttribute("member", userInfo); // session에 사용자 정보 저장
				return "redirect:/main";
			} else {
				rttr.addFlashAttribute("result", 0);
				return "redirect:/member/login";
			} 
		} else { // 일치하는 아이디가 존재하지 않을 시(로그인 실패처리)
			rttr.addFlashAttribute("result", 0);
			return "redirect:/member/login";
		}
	}


	// 메인페이지 로그아웃
	@RequestMapping(value = "logout.do", method = RequestMethod.GET)
	public String logoutMainGET(HttpServletRequest request) throws Exception {
		log.info("logoutMainGET메서드 진입");
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:/member/login";
	}

	// 아이디 찾기 페이지로 이동
	@GetMapping("/findIdCheck")
	public void findIdCheckGET() {
		log.info("아이디 찾기 페이지 진입");
	}

	// 아이디 찾기 결과 페이지로 이동
	@GetMapping("/findIdView")
	public void findIdViewGET() {
		log.info("아이디 찾기 결과 페이지 진입");
	}

	// 아이디 찾기
	@PostMapping("/findIdCheck")
	public String findIdPOST(Model model, MemberVO member, RedirectAttributes rttr) throws Exception {
		log.info("name : " + member.getName() + ", phone : " + member.getPhone());

		if (memberService.findIdCheck(member) == 0) {
			log.info("일치하는 아이디 없음");
			rttr.addFlashAttribute("msg", "일치하는 회원 정보가 없습니다.\\n회원성명과 핸드폰번호를 확인해주세요.");

			return "redirect:/member/findIdCheck";
		} else {
			model.addAttribute("member", memberService.findId(member));
			System.out.println("member : " + memberService.findId(member));

			return "/member/findIdView";
		}
	}

	// 비밀번호 찾기 페이지로 이동
	@GetMapping("/findPwdCheck")
	public void findPwdCheckGET() {
		log.info("비밀번호 찾기 페이지 진입");
	}

	// 비밀번호 찾기(임시 비밀번호 이메일로 발송, 기존 비밀번호를 임시 비밀번호로 변경)
	@PostMapping("/findPwdCheck")
	public String findPwdCheckPOST(Model model, MemberVO member, RedirectAttributes rttr) throws Exception {
		log.info("id : " + member.getId() + ", email : " + member.getEmail());

		if (memberService.findPwdCheck(member) == 0) {
			log.info("일치하는 회원 정보 없음");
			rttr.addFlashAttribute("msg", "일치하는 회원 정보가 없습니다.\\n아이디와 이메일을 확인해주세요.");

			return "redirect:/member/findPwdCheck";
		} else {
			// 임시 비밀번호(난수) 생성
			Random random = new Random();
			int newPwd = random.nextInt(888888) + 111111;

			// 기존 비밀번호 -> 임시 비밀번호로 변경
			String rawPwd = ""; // 인코딩 전 비밀번호
			String encodePwd = ""; // 인코딩 후 비밀번호

			rawPwd = Integer.toString(newPwd); // 임시 비밀번호 데이터 얻기
			log.info("인코딩 전 새로운 임시 비밀번호 : " + rawPwd);
			encodePwd = pwEncoder.encode(rawPwd); // 임시 비밀번호 인코딩
			member.setPwd(encodePwd); // 인코딩된 임시 비밀번호 member 객체에 다시 저장
			log.info("인코딩 후 새로운 임시 비밀번호 : " + member.getPwd());

			model.addAttribute("email", member.getEmail());
			memberService.findPwd(member);

			// 이메일 보내기
			String setFrom = "gustlr7374@naver.com";
			String toMail = member.getEmail();
			String title = "※중요※ MoviePort - 임시 비밀번호 발송 이메일입니다.";
			String content = "비밀번호 변경 권장 안내" + "<br><br>" + "임시 비밀번호는 " + newPwd + " 입니다." + "<br>"
					+ "임시 비밀번호로 로그인 후 반드시 비밀번호 변경을 해주시기 바랍니다!!!";

			try {
				MimeMessage message = mailSender.createMimeMessage();
				MimeMessageHelper hepler = new MimeMessageHelper(message, true, "utf-8");
				hepler.setFrom(setFrom);
				hepler.setTo(toMail);
				hepler.setSubject(title);
				hepler.setText(content, true);
				mailSender.send(message);
			} catch (Exception e) {
				e.printStackTrace();
			}

			return "/member/findPwdView";
		}
	}

	// 비밀번호 찾기 결과 페이지로 이동
	@GetMapping("/findPwdView")
	public void findPwdViewGET() {
		log.info("비밀번호 찾기 결과 페이지 진입");
	}

}
