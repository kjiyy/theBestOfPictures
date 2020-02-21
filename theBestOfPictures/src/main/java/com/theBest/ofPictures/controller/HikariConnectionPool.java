package com.theBest.ofPictures.controller;

import java.sql.Connection;
import java.sql.SQLException;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

public class HikariConnectionPool {
	private static HikariConnectionPool instance = null;
	private HikariDataSource ds;
	
	public HikariConnectionPool() {
		HikariConfig config = new HikariConfig();
		config.setDriverClassName("com.mysql.cj.jdbc.Driver");
		config.setJdbcUrl("jdbc:mysql//localhost:3306/dev_db");
		config.setUsername("jiyy");
		config.setPassword("wldud");
		ds = new HikariDataSource(config);
	}
	
	public Connection getConnect() {
		Connection connection = null;
		try {
			connection = ds.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return connection;
	}
	
	public static HikariConnectionPool getInstance() {
		if (instance == null) {
			instance = new HikariConnectionPool();
		}
		return instance;
	}
}
