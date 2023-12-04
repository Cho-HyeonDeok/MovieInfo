package com.movieport.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.movieport.model.MemberVO;
import com.movieport.service.AdminService;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
	private static final Logger log = LoggerFactory.getLogger(AdminController.class);

	@Autowired
	AdminService adminService;

	// 관리자 페이지 메인으로 이동
	@GetMapping("/adminMain")
	public void adminMainGET() {
		log.info("관리자 페이지 메인 진입");
	}

	// 회원리스트 페이지로 이동
	@GetMapping("/memberList")
	public String memberListGET(Model model) throws Exception {
		log.info("회원리스트 페이지 진입");

		model.addAttribute("memberList", adminService.memberList());
		log.info("memberList : " + adminService.memberList());
		return "/admin/memberList";
	}

	// 회원 상세 정보 페이지로 이동
	@GetMapping("/memberDetail")
	public String memberDetailGET(String id, Model model) throws Exception {
		log.info("회원 상세 정보 페이지 진입");

		log.info("선택한 회원 아이디 : " + id);

		model.addAttribute("info", adminService.memberDetail(id));
		return "/admin/memberDetail";
	}

	// 회원정보 수정하기
	@PostMapping("/memberUpdate.do")
	public String memberUpdatePOST(MemberVO member, Model model, String id) throws Exception {
		log.info("회원정보 수정 동작");

		String nickname = member.getNickname();
		String admin = member.getAdmin();
		String block = member.getBlock();

		log.info("입력한 닉네임 : " + nickname);
		log.info("입력한 관리자 권한 : " + admin);
		log.info("입력한 차단한 유무 : " + block);

		int result = adminService.memberInfoUpdate(member);
		log.info("result : " + result);

		if (result != 1) { // 회원정보 업데이트 실패시
			log.info("수정 실패");
			model.addAttribute("msg", "회원정보 수정에 실패하였습니다.");
			model.addAttribute("info", adminService.memberDetail(id));
			return "/admin/memberDetail";
		}

		log.info("수정 성공");
		return "redirect:/admin/memberList";
	}
}
