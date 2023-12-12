package com.movieport.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.movieport.model.MemberVO;
import com.movieport.model.MovieVO;
import com.movieport.model.ReviewVO;
import com.movieport.service.AdminService;

import net.coobird.thumbnailator.Thumbnails;

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
	public void memberListGET(Model model) throws Exception {
		log.info("회원리스트 페이지 진입");

		model.addAttribute("memberList", adminService.memberList());
		log.info("memberList : " + adminService.memberList());
	}

	// 회원 상세 정보 페이지로 이동
	@GetMapping("/memberDetail")
	public void memberDetailGET(String id, Model model) throws Exception {
		log.info("회원 상세 정보 페이지 진입");

		log.info("선택한 회원 아이디 : " + id);

		model.addAttribute("info", adminService.memberDetail(id));
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

	// 리뷰 리스트 페이지로 이동
	@GetMapping("/reviewList")
	public void reviewListGET(Model model) throws Exception {
		log.info("리뷰리스트 페이지 진입");

		model.addAttribute("reviewList", adminService.getReviewList());
		log.info("reviewList : " + adminService.getReviewList());
	}

	// 리뷰 상세 페이지로 이동
	@GetMapping("/reviewDetail")
	public void reviewDetailGET(int reviewid, Model model) throws Exception {
		log.info("리뷰 상세 페이지 진입");

		model.addAttribute("detail", adminService.getReviewListDetail(reviewid));
		log.info("상세 : " + adminService.getReviewListDetail(reviewid));
	}

	// 리뷰 삭제
	@PostMapping("/deleteReview")
	public String deleteReviewPOST(ReviewVO review, RedirectAttributes rttr) throws Exception {
		log.info("리뷰 삭제 동작");

		int reviewid = review.getReviewid();
		log.info("삭제할 reviewid : " + reviewid);

		adminService.deleteReview(review);
		rttr.addFlashAttribute("msg", "리뷰가 삭제되었습니다.");
		log.info("삭제 성공");

		return "redirect:/admin/reviewList";
	}

	@GetMapping("/display")
	public ResponseEntity<byte[]> getImage(String fileName) {
		File file = new File("C:\\\\spring\\\\git\\\\MoviePort\\\\MoviePort\\\\src\\\\main\\\\webapp\\\\resources\\\\img\\\\" + fileName);

		ResponseEntity<byte[]> result = null;

		try {

			HttpHeaders header = new HttpHeaders();

			header.add("Content-type", Files.probeContentType(file.toPath()));

			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);

		} catch (IOException e) {
			e.printStackTrace();
		}

		return result;
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

	/* 첨부 파일 업로드 */
	@PostMapping(value = "/uploadAjaxAction", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<MovieVO>> uploadAjaxActionPOST(MultipartFile[] thumb) {

		log.info("이미지 업로드..........");

		/* 이미지 파일 체크 */
		for (MultipartFile multipartFile : thumb) {

			File checkfile = new File(multipartFile.getOriginalFilename());
			String type = null;

			try {
				type = Files.probeContentType(checkfile.toPath());
				log.info("MIME TYPE : " + type);
			} catch (IOException e) {
				e.printStackTrace();
			}

			if (!type.startsWith("image")) {
				List<MovieVO> list = null;
				return new ResponseEntity<>(list, HttpStatus.BAD_REQUEST);
			}

		}
		String uploadFolder = "C:\\spring\\git\\MoviePort\\MoviePort\\src\\main\\webapp\\resources\\img\\";

		/* 폴더 생성 */
		File uploadPath = new File(uploadFolder);

		if (uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}

		/* 이미저 정보 담는 객체 */
		List<MovieVO> list = new ArrayList();

		for (MultipartFile multipartFile : thumb) {

			/* 이미저 정보 객체 */
			MovieVO vo = new MovieVO();

			/* 파일 이름 */
			String uploadFileName = multipartFile.getOriginalFilename();
			vo.setThumb(uploadFileName);

//			/* uuid 적용 파일 이름 */
//			String uuid = UUID.randomUUID().toString();
//			
//			uploadFileName = uuid + "_" + uploadFileName;

			/* 파일 위치, 파일 이름을 합친 File 객체 */
			File saveFile = new File(uploadPath, uploadFileName);

			/* 파일 저장 */
			try {
				multipartFile.transferTo(saveFile);

				/* 썸네일 생성 */
				File thumbnailFile = new File(uploadPath, "s_" + uploadFileName);

				BufferedImage bo_image = ImageIO.read(saveFile);

				// 비율
				double ratio = 3;
				// 넓이 높이
				int width = (int) (bo_image.getWidth() / ratio);
				int height = (int) (bo_image.getHeight() / ratio);

				Thumbnails.of(saveFile).size(width, height).toFile(thumbnailFile);
			} catch (Exception e) {
				e.printStackTrace();
			}
			list.add(vo);
		}
		ResponseEntity<List<MovieVO>> result = new ResponseEntity<List<MovieVO>>(list, HttpStatus.OK);
		return result;
	}

	// 영화정보 삭제
	@PostMapping("/movieDelete")
	public String deleteMoviePOST(Model model, MovieVO movie) throws Exception {
		log.info("영화정보삭제 동작");

		adminService.movieDelete(movie);
		log.info("삭제완료");
		return "redirect:/admin/movieList";
	}

	// 로그아웃
	@GetMapping("/logout")
	public String logoutAdminGET(HttpServletRequest request) throws Exception {
		log.info("logoutAdminGET메서드 진입");
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:/main";
	}
}
