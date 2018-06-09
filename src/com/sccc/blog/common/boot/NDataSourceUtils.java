package com.sccc.blog.common.boot;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import com.sccc.blog.common.api.SpringContextUtils;

import java.sql.*;

public final class NDataSourceUtils {
    public static ComboPooledDataSource dataSource;

    static {
        dataSource = (ComboPooledDataSource) SpringContextUtils.getBean(ComboPooledDataSource.class);
    }

    public static Connection getConnection() throws SQLException {
        return dataSource.getConnection();
    }

    public static void closeResultSet(ResultSet rs) throws SQLException {
        closeAll(null, null, rs);
    }

    public static void closeStatement(Statement st) throws SQLException {
        closeAll(null, st, null);
    }

    public static void closeConnection(Connection con) throws SQLException {
        closeAll(con, null, null);
    }

    public static void closeAll(Connection con, Statement st, ResultSet rs) throws SQLException {
        if (rs != null) {
            rs.close();
        }
        if (st != null) {
            st.close();
        }
        if (con != null) {
            con.close();
        }
    }

    public static void rollback(Connection con) throws SQLException {
        rollback(con, null);
    }

    public static void rollback(Connection con, Savepoint point) throws SQLException {
        if (con != null) {
            if (point != null) {
                con.rollback(point);
            } else {
                con.rollback();
            }
        }
    }
}
