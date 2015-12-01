import actors.User;
import dao.DaoFactory;
import dao.GenericDao;
import dao.OracleDaoFactory;

import java.sql.Connection;
import java.sql.SQLException;

/**
 * Created by Mihun on 01.12.2015.
 */
public class Main {
    public static void main(String[] args) {
        DaoFactory daoFactory = new OracleDaoFactory();
        try(Connection con = daoFactory.getConnection()){
            GenericDao<User> genericDao = daoFactory.getDao(con, User.class);
            User user = genericDao.read("777-000-004");
            System.out.println(user);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
