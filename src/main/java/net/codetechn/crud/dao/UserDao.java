package net.codetechn.crud.dao;

import net.codetechn.crud.entity.User;

import java.util.List;

public interface UserDao {

    public void createUser(User user);

    public List<User> users();

    public  void deleteUser(int uid);

    public User getSingleUSer(int uid);

}
