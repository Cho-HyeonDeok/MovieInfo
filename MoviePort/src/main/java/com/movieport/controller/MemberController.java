package com.movieport.controller;

import java.util.Random;

import javax.mail.internet.MimeMessage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.movieport.model.MemberVO;
import com.movieport.service.MemberService;

@Controller
@RequestMapping(value = "/member")
public class MemberController {
	private static final Logger log = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	private MemberService memberService;

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
		String title = "MoviePort 회원가입 인증 이메일 입니다.";
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
}
