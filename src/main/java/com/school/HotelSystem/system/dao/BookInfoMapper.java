package com.school.HotelSystem.system.dao;

import com.school.HotelSystem.system.model.BookInfo;

public interface BookInfoMapper {
    int deleteByPrimaryKey(Integer travellerId);

    int insert(BookInfo record);

    int insertSelective(BookInfo record);

    BookInfo selectByPrimaryKey(Integer travellerId);

    int updateByPrimaryKeySelective(BookInfo record);

    int updateByPrimaryKey(BookInfo record);
}