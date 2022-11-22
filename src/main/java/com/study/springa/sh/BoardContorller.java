package com.study.springa.sh;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.study.springa.entity.BoardVO;
import com.study.springa.service.BoardService;

@Controller
public class BoardContorller {
	@Autowired
	BoardService service;
	@RequestMapping("/boardList.do")
	public String list(Model model) {
		List<BoardVO> list = service.boardList();
		model.addAttribute("list", list);
		return "boardList";

}
	@RequestMapping("/boardForm.do")
	public String boardForm() {
		return "boardWrite";
	}
	@RequestMapping("/boardWrite.do")
	public String boardWrite(BoardVO vo) {
		System.out.println(vo);
		service.boardInsert(vo);
		return "redirect:/boardList.do";
		
	}
	@GetMapping("/boardView.do")
	public String boardView(@RequestParam("idx")int idx, Model model) {
		BoardVO vo=service.boardView(idx);
		model.addAttribute("vo",vo);
		return "boardView";
	}
		
	@PostMapping("/boardUpdateForm.do/boardUpdate.do/{idx}")
	public String boardUpdate(BoardVO vo) {
		System.out.println(vo);
		service.boardUpdate(vo);
		return "redirect:/boardList.do";
	}
	
	@GetMapping("/boardUpdateForm.do/{idx}")
	public String boardUpdateForm(Model model,@PathVariable int idx) {
		BoardVO vo = service.boardView(idx);
		model.addAttribute("vo", vo);
		return "boardUpdate";
	}
	@GetMapping("/boardDelete.do/{idx}")
	public String boardDelete(@PathVariable int idx) {
		service.boardDelete(idx);
		return "redirect:/boardList.do";
}
	
		
	}

