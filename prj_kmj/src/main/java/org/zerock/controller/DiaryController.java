package org.zerock.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.DiaryVO;
import org.zerock.domain.MemberVO;
import org.zerock.service.BoardService;
import org.zerock.service.DiaryService;
import org.zerock.service.MemberService;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/diary/*")
@Log4j
public class DiaryController {
	@Autowired
	private MemberService mService; 
	
	@Autowired
	private BoardService bService;
	
	@Autowired
	private DiaryService dService;
	
	//다이어리 페이지 이동 메소드
	@RequestMapping("/diary")
	public String diary(HttpServletRequest request, HttpServletResponse response, Model model) throws IOException {
		log.info("diary.....");
		response.setContentType("text/html;charset=utf-8");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		String path = null;
		String id = (String) session.getAttribute("id");
		log.info("diarylist........"+id);
		if(id!=null) {
			
			model.addAttribute("list", dService.getList(id));
			path="/diary/diary";
		}else if(id==null){
			out.print("<script>alert('로그인 후 이용가능합니다.'); </script>");
			out.flush();
			path = "/diary/login";
		}
		return path;
	}
	
	//로그인 처리 메소드 (세션 저장)
	@PostMapping("/loginForm")
	public void loginForm(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String p_id = request.getParameter("id");
		String p_pw = request.getParameter("pw");
		int count = mService.login(p_id, p_pw);
		log.info("loginForm");
		if(count == 1) {
			HttpSession session = request.getSession();
			session.setAttribute("id", p_id);
			session.setAttribute("pw", p_pw);
			//로그인 성공시 세션에 아이디, 비밀번호 저장 후 게시판으로 이동.
			out.print("<script>location.href='/diary/list'; </script>");
			out.flush();
		}else {
			//로그인 실패
			out.print("<script>alert('아이디 또는 비밀번호가 잘못되었습니다.');  location.href='/diary/login'; </script>");
			out.flush();
		}
	}
	
	//로그인 페이지 이동 메소드
	@RequestMapping("/login")
	public void login() {
		log.info("login.........");
		
	}
	
	//다이어리 작성 페이지 이동 메소드
	@GetMapping("/writeDiary")
	public void writeDiary() {
		
		log.info("writeDiary Page Move......");
		
	}
	
	//다이어리 작성 처리
	@PostMapping("/submitDiary")
	public String submitDiary(DiaryVO diary) {
		log.info("submitDiary....."+diary);
		dService.register(diary);
		return "redirect:/diary/diary";
	}
	
	//다이어리 상세 조회 페이지 이동
	
	//다이어리 게시글 수정 페이지 이동
	
	//다이어리 게시글 수정 처리
	
	//다이어리 게시물 삭제
	
	//회원가입페이지 이동 메소드
	@RequestMapping("/regist")
	public void regist() {
		
		log.info("regist......");
	}
	
	
	//회원가입 전송 메소드
	@PostMapping("/registSubmit")
	public void registForm(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		MemberVO member = new MemberVO();
		member.setId(request.getParameter("id"));
		member.setPw(request.getParameter("pw"));
		member.setName(request.getParameter("name"));
		member.setPhone(request.getParameter("phone"));
		member.setEmail(request.getParameter("email"));
		mService.insert(member);
		log.info("registSubmit"+member);
		out.print("<script>alert('회원가입이 완료되었습니다.'); location.href='/diary/login'; </script>");
		
	}
	
	
	//로그아웃 페이지 이동 메소드
	@RequestMapping("/logout")
	public void logOut() {
		log.info("logOut........");
	}
	
	
	//아이디 중복체크 
	@PostMapping("/idCheck")
	public void idCheck(String id, HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		int result = mService.idCheck(id);
		if(result==1) {
			out.print("중복된 아이디입니다.");
		}else {
			out.print("사용 가능한 아이디입니다.");
		}
		
	}
	
	//수정 페이지 이동 메소드 
	@GetMapping({"/modify", "/modify"})
	public void modify(@RequestParam("bno") Long bno, Model model) {
		log.info("/get or modify");
		
		model.addAttribute("board", bService.get(bno));
	}
	
	//마이페이지 이동 메소드
	@RequestMapping("/myPage")
	public String myPage(HttpServletRequest request, HttpServletResponse response, Model model) throws IOException {
		log.info("go myPage......");
		response.setContentType("text/html;charset=utf-8");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		String path = null;
		String id = (String)session.getAttribute("id");
		log.info(mService.infoMember(id));
		if(id!=null) {	
			model.addAttribute("member", mService.infoMember(id));
			path="/diary/myPage";
		}else if(id==null){
			out.print("<script>alert('로그인 후 이용가능합니다.'); </script>");
			out.flush();
			path = "/diary/login";
		}
		
		return path;
		
	}
	
	//회원 정보 변경, 회원탈퇴 확인 페이지 이동
	@GetMapping({"/updateMember", "/identify"})
	public void updateMember(@RequestParam("id") String id, Model model) {
		log.info("/updateMember+ /identify");
		
		model.addAttribute("member", mService.infoMember(id));
	}
	
	//회원 정보 수정 
	@PostMapping("/update")
	public String update(MemberVO member, RedirectAttributes rttr) {
		log.info("update"+member);
		if(mService.update(member)) {
			rttr.addFlashAttribute("result", "success");
		}
		
		return "redirect:/diary/myPage"; 
	}
	
	//회원 탈퇴 페이지 
	@PostMapping("/identify")
	public void identify(@RequestParam("id") String id, Model model) {
		log.info("/identify");
		
		model.addAttribute("member", mService.infoMember(id));
	}
	
	//회원 탈퇴 처리
	@PostMapping("/removeId")
	public String removeId(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		log.info("remove id ...."+id+" "+pw);
		mService.remove(id, pw);
		session.invalidate();
		
		return "redirect:/diary/list";
	}
}
