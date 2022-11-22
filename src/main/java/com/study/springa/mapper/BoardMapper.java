package com.study.springa.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springa.entity.BoardVO;
import com.study.springa.entity.Member;
@Mapper
public interface BoardMapper {

	public List<BoardVO> boardList();
	public void boardInsert(BoardVO vo);

	public BoardVO boardView(int idx);
	public void boardUpdate(BoardVO vo);
	public void boardDelete(int idx);
	public Member loginCheck(Member vo);

	public void joininsert(Member vo);

	public boolean count(String idx);
}
