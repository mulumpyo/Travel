package com.groupone.mapper;

import org.apache.ibatis.annotations.Param;

public interface WishListMapper {
    public int insertWishlist(@Param("userNo") int userNo, @Param("pCode") int pCode);
}