package com.study.springa.service;

import java.util.List;

import com.study.springa.entity.BoardVO;
import com.study.springa.entity.Member;

public interface BoardService {

	public List<BoardVO> boardList();
	public void boardInsert(BoardVO vo);
	public BoardVO boardView(int idx);
	public void boardUpdate(BoardVO vo);
	public void boardDelete(int idx);
	public Member loginCheck(Member vo);
	public void joininsert(Member vo);
	public boolean count(String idx);
}
