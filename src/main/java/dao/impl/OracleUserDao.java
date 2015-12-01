package dao.impl;

import dao.AbstractDao;
import actors.User;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.LinkedList;
import java.util.List;

/**
 * Created by Mihun on 01.12.2015.
 */
public class OracleUserDao extends AbstractDao<User> {
    public OracleUserDao(Connection connection) {
        super(connection);
    }

    @Override
    public String getSelectQuery() {
        return "SELECT o.name, o.description, o.OBJECT_TYPE_ID, attr.VALUE, attr.DATE_VALUE " +
                "                FROM OBJECTS o JOIN ATTRIBUTES attr ON (o.OBJECT_ID = attr.OBJECT_ID) " +
                "                AND o.OBJECT_ID = (SELECT attrs.OBJECT_ID " +
                "                FROM  ATTRIBUTES attrs ";
    }

    @Override
    public String getCreateQuery() {
        return null;
    }

    @Override
    public String getUpdateQuery() {
        return null;
    }

    @Override
    public String getDeleteQuery() {
        return null;
    }

    @Override
    protected List<User> parseResultSet(ResultSet rs) {
        LinkedList<User> result = new LinkedList<>();
        try {
            User user;
            rs.next();
            user = new User();
            user.setFirstName(rs.getString("value"));
            rs.next();
            user.setLastName(rs.getString("value"));
            rs.next();
            user.setRegistrationDate(null); // parse date
            rs.next();
            user.setPhoneNumber(rs.getString("value"));
            rs.next();
            user.setBirthday(null);   // parse date
            result.add(user);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return result;
    }




    @Override
    public User create() {
        return null;
    }

    @Override
    public void update(User group) {

    }

    @Override
    public void delete(User group) {

    }
}
