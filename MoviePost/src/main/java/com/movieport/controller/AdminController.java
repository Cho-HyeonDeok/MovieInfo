package com.movieport.controller;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.movieport.model.MemberVO;
import com.movieport.model.MovieVO;
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
	
	// 영화추가 페이지 이동
	@GetMapping("/movieEnroll")
	public void movieEnrollGET() {
		log.info("영화추가 페이지 진입");
	}
	
	// 영화추가
	@PostMapping("/movieEnroll")
	public String MovieEnrollPOST(MovieVO movie) throws Exception {
		log.info("영화추가 동작");
		
		adminService.movieEnroll(movie);
		
		return "redirect:movieList";
	}
	
	// 영화리스트 페이지로 이동
	@GetMapping("/movieList")
	public String movieListGET(Model model) throws Exception {
		log.info("영화리스트 페이지 진입");

		model.addAttribute("movieList", adminService.movieList());
		return "/admin/movieList";
	}
	
	// 영화 상세 정보 페이지로 이동
	@GetMapping("/movieDetail")
	public String movieDetailGET(String m_code, Model model) throws Exception {
		log.info("영화 상세 정보 페이지 진입");

		log.info("선택한 영화 코드 : " + m_code);

		model.addAttribute("info", adminService.movieDetail(m_code));
		return "/admin/movieDetail";
	}
	
	
	// 영화정보 수정하기
	@PostMapping("/movieUpdate.do")
	public String movieUpdatePOST(MovieVO movie, Model model, String m_code) throws Exception {
		log.info("영화정보 수정 동작");
		String thumb = movie.getThumb();
		String title = movie.getTitle();
		String original_title = movie.getOriginal_title();
		String language = movie.getLanguage();
		String genres = movie.getGenres();
		String video = movie.getVideo();
		String showdate = movie.getShowdate();
		String type = movie.getType();
		String content = movie.getContent();

		log.info("입력한 썸네일 : " + thumb);
		log.info("입력한 영화제목 : " + title);
		log.info("입력한 기존제목 : " + original_title);
		log.info("입력한 언어 : " + language);
		log.info("입력한 장르 : " + genres);
		log.info("입력한 영상링크 : " + video);
		log.info("입력한 상영일 : " + showdate);
		log.info("입력한 영화상영구분 : " + type);
		log.info("입력한 줄거리 : " + content);

		int result = adminService.movieInfoUpdate(movie);
		log.info("result : " + result + "aaaaaaaaaa");
		log.info("result : " + result);

		if (result != 1) { // 영화정보 업데이트 실패시
			log.info("수정 실패");
			model.addAttribute("msg", "영화정보 수정에 실패하였습니다.");
			model.addAttribute("info", adminService.movieDetail(m_code));
			return "/admin/movieDetail";
		}

		log.info("수정 성공");
		return "redirect:/admin/movieList";
	}
	
	// 영화정보 삭제
	@PostMapping("/movieDelete")
	public String deleteMoviePOST(Model model, MovieVO movie) throws Exception {
		log.info("영화정보삭제 동작");
		
		adminService.movieDelete(movie);
		log.info("삭제완료");
		return "redirect:/admin/movieList";
	}
}
