package ua.otlev.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import ua.otlev.entity.User;
import ua.otlev.mapper.UserMapper;

import java.util.List;

public class UserDaoImpl implements UserDao {

    public final JdbcTemplate jdbcTemplate;

    @Autowired
    public UserDaoImpl (JdbcTemplate jdbcTemplate){
        this.jdbcTemplate = jdbcTemplate;
    }

    public void save(User user) {
        String sql = "INSERT INTO user (name, email, age) VALUES (?, ?, ?)";
        jdbcTemplate.update(sql, user.getName(), user.getEmail(), user.getAge());
    }

    public User getById(int id) {
        String sql = "SELECT * FROM user WHERE id=? ";
        return jdbcTemplate.queryForObject(sql, new UserMapper(), id);
    }

    public List<User> findAll() {
        String sql = "SELECT * FROM user";
        return jdbcTemplate.query(sql, new UserMapper());
    }

    public void update(User user) {
        String sql = "UPDATE user SET name=?, email=?, age=? where id=?";
        jdbcTemplate.update(sql, user.getName(), user.getEmail(), user.getAge(), user.getId());
    }

    public void delete(int id) {
        String sql = "DELETE FROM user WHERE id=?";
        jdbcTemplate.update(sql, id);
    }
}
