package com.movieport.controller;

import java.io.Console;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.movieport.model.LikesVO;
import com.movieport.model.MemberVO;
import com.movieport.model.MovieVO;
import com.movieport.service.LikesService;

@Controller
public class LikesController {

	@Autowired
	private LikesService likesService;

	@PostMapping("/likes/insert")
	@ResponseBody
	public String likesInsertPOST(LikesVO likes, HttpServletRequest request) {

		// 로그인 체크
		HttpSession session = request.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("member");

		if (memberVO == null) {
			return "5";
		}

		System.out.println(likes);

		// 좋아요 등록
		int result = likesService.likesInsert(likes);

		return result + "";
	}

	@GetMapping("/mypage/likes")
	public String likesSelectListGet(Model model, HttpServletRequest request) {

		// 로그인 체크
		HttpSession session = request.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("member");

		model.addAttribute("likesInfo", likesService.LikesSelectList(memberVO.getId()));

		return "/mypage/likes";
	}

	/* 좋아요 삭제 */
	@PostMapping("/likes/delete")
	public String likesDeletePOST(LikesVO likes) {

		System.out.println(likes);

		likesService.likesDelete(likes.getL_num());

		return "redirect:/mypage/likes";
	}
}
