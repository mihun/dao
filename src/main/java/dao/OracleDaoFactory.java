package dao;

import actors.User;
import dao.impl.OracleUserDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

public class OracleDaoFactory implements DaoFactory {
    private String user = "daouser";
    private String password = "aa11";
    private String url = "jdbc:oracle:thin:@localhost:1521:XE";
    private String driver = "oracle.jdbc.driver.OracleDriver";
    private Map<Class, DaoCreator> creators;
    @Override
    public Connection getConnection() throws SQLException {
        Connection connection = null;
        try {
            connection = DriverManager.getConnection(url, user, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return  connection;
    }

    @Override
    public GenericDao getDao(Connection connection, Class daoClass) throws SQLException {
        DaoCreator creator = creators.get(daoClass);
        if (creator == null) {
            throw new RuntimeException("Dao object for " + daoClass + " not found.");
        }
        return creator.create(connection);
    }


    public OracleDaoFactory() {
        try { Class.forName(driver);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        creators = new HashMap<Class, DaoCreator>();
        creators.put(User.class, new DaoCreator() {
            @Override
            public GenericDao create(Connection connection) {
                return new OracleUserDao(connection);
            }
        });
    }
}
