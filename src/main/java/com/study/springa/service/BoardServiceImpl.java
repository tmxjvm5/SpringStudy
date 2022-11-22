package com.study.springa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.springa.entity.BoardVO;
import com.study.springa.entity.Member;
import com.study.springa.mapper.BoardMapper;
@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	BoardMapper mapper;
	@Override
	public List<BoardVO> boardList() {
		// TODO Auto-generated method stub
		return mapper.boardList();
	}
	@Override
	public void boardInsert(BoardVO vo) {
		mapper.boardInsert(vo);
		
	}
	@Override
	public BoardVO boardView(int idx) {
		BoardVO vo=mapper.boardView(idx);
		return vo;
	}
	@Override
	public void boardUpdate(BoardVO vo) {
		mapper.boardUpdate(vo);
		
		
	}
	@Override
	public void boardDelete(int idx) {
		mapper.boardDelete(idx);
		
	}
	@Override
	public Member loginCheck(Member vo) {
		Member mvo = mapper.loginCheck(vo);
		return mvo;
	}
	@Override
	public void joininsert(Member vo) {
		mapper.joininsert(vo);
		
	}
	@Override
	public boolean count(String idx) {
		// TODO Auto-generated method stub
		return mapper.count(idx);
	}
	
}
