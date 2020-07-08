package com.greedystar.generator.db;


import com.greedystar.generator.entity.ColumnInfo;
import com.greedystar.generator.utils.ConfigUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Author GreedyStar
 * Date   2018/4/19
 */
public class ConnectionUtil {
    private Connection connection;
    private Statement statement;
    private ResultSet resultSet;

    /**
     * 初始化数据库连接
     *
     * @return
     */
    public boolean initConnection() {
        try {
            Class.forName(DriverFactory.getDriver(ConfigUtil.getConfiguration().getDb().getUrl()));
            String url = ConfigUtil.getConfiguration().getDb().getUrl();
            String username = ConfigUtil.getConfiguration().getDb().getUsername();
            String password = ConfigUtil.getConfiguration().getDb().getPassword();
            connection = DriverManager.getConnection(url, username, password);
            return true;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    /**
     * 获取表结构数据
     *
     * @param tableName 表名
     * @return 包含表结构数据的列表
     */
    public List<ColumnInfo> getMetaData(String tableName) throws SQLException {
        ResultSet tempResultSet = connection.getMetaData().getPrimaryKeys(null, null, tableName);
        String primaryKey = null;
        if (tempResultSet.next()) {
            primaryKey = tempResultSet.getObject(4).toString();
        }
        List<ColumnInfo> columnInfos = new ArrayList<>();
        statement = connection.createStatement();
        String sql = "SELECT * FROM " + tableName + " WHERE 1 != 1";
        resultSet = statement.executeQuery(sql);
        ResultSetMetaData metaData = resultSet.getMetaData();
        Map<String, String> comment = getColumnCommentByTableName(statement, tableName);
        for (int i = 1; i <= metaData.getColumnCount(); i++) {
            ColumnInfo info;
            if (metaData.getColumnName(i).equals(primaryKey)) {
                info = new ColumnInfo(metaData.getColumnName(i), metaData.getColumnType(i), true, comment.get
                        (metaData.getColumnName(i)));
            } else {
                info = new ColumnInfo(metaData.getColumnName(i), metaData.getColumnType(i), false, comment.get
                        (metaData.getColumnName(i)));
            }
            columnInfos.add(info);
        }


        statement.close();
        resultSet.close();


        return columnInfos;
    }

    public void close() {
        try {
            if (!connection.isClosed()) {
                connection.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    /**
     * 获得某表中所有字段的注释
     *
     * @param tableName
     * @return
     * @throws Exception
     */
    public Map<String, String> getColumnCommentByTableName(Statement stmt, String tableName) throws SQLException {
        Map map = new HashMap();
        String table = tableName;
        ResultSet rs = stmt.executeQuery("show full columns from " + table);
        if (rs != null && rs.next()) {
            map.put(rs.getString("Field"), rs.getString("Comment"));
            while (rs.next()) {
                map.put(rs.getString("Field"), rs.getString("Comment"));
            }
        }
        rs.close();
        return map;
    }

}
