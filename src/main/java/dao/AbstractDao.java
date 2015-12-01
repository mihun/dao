package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

/**
 * Created by Mihun on 30.11.2015.
 */
public abstract class AbstractDao<T> implements GenericDao<T>{

    private Connection connection;

    public abstract String getSelectQuery();


    public abstract String getCreateQuery();

    public abstract String getUpdateQuery();

    public abstract String getDeleteQuery();

    protected abstract List<T> parseResultSet(ResultSet rs);


    @Override
    public T read(String key) {
        List<T> list;
        String sql = getSelectQuery();
        sql += "  WHERE attrs.VALUE = ?)";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, key);
            System.out.println("wp");
            ResultSet rs = statement.executeQuery();
            list = parseResultSet(rs);
        } catch (Exception e) {
           e.printStackTrace();
            throw new RuntimeException(e);
        }
        if (list == null || list.size() == 0) {
            throw new RuntimeException("not found");
        }
        if (list.size() > 1) {
            throw new RuntimeException("Received more than one record.");
        }
        return list.iterator().next();
    }



    public AbstractDao(Connection connection) {
        this.connection = connection;
    }
}


