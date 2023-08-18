package com.odbd.goods.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.odbd.goods.vo.GoodsVO;
import com.odbd.goods.vo.ImageFileVO;

@Mapper
@Repository("goodsDAO")
public interface GoodsDAO {
	public List<GoodsVO> selectGoodsList(String goodsStatus ) throws DataAccessException;
	/*
	public List<String> selectKeywordSearch(String keyword) throws DataAccessException;
	public GoodsVO selectGoodsDetail(String goods_id) throws DataAccessException;
	public List<ImageFileVO> selectGoodsDetailImage(String goods_id) throws DataAccessException;
	public List<GoodsVO> selectGoodsBySearchWord(String searchWord) throws DataAccessException;
	*/
}
