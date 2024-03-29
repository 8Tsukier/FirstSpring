package ua.otlev.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.otlev.dao.UserDao;
import ua.otlev.entity.User;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    public UserDao userDao;

    public void save(User user) {
        userDao.save(user);
    }

    public User getById(int id) {
        return userDao.getById(id);
    }

    public List<User> findAll() {
        return userDao.findAll();
    }

    public void update(User user) {
        userDao.update(user);
    }

    public void delete(int id) {
        userDao.delete(id);
    }
}
