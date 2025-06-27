package com.groupone.common;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisConfig {
    private static SqlSessionFactory sqlSessionFactory;

    static {
        try {
            String resource = "mybatis-config.xml"; // resources 기준 경로
            InputStream inputStream = Resources.getResourceAsStream(resource);
            sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    // SqlSessionFactory 반환
    public static SqlSessionFactory getSqlSessionFactory() {
        return sqlSessionFactory;
    }

    // SqlSession 반환 (auto-commit true)
    public static SqlSession getSqlSession() {
        return sqlSessionFactory.openSession(true);
    }
}
