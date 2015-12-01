package dao;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by Mihun on 30.11.2015.
 */
public interface GenericDao<T> {
    T create();
    T read(String key) throws SQLException;
    void update(T instance);
    void delete(T instance);

}
