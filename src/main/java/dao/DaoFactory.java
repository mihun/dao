package dao; /**
 * Created by Mihun on 13.11.2015.
 */
import java.sql.Connection;
import java.sql.SQLException;


public interface DaoFactory {
    interface DaoCreator {
        GenericDao create(Connection connection);
    }
     Connection getConnection() throws SQLException;
     GenericDao getDao(Connection connection, Class daoClass) throws SQLException;
}
