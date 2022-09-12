package net.codetechn.crud.dao;

import net.codetechn.crud.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import javax.transaction.Transactional;
import java.util.List;

@Component
public class UserDaoImpl implements UserDao{

    @Autowired
    private HibernateTemplate hibernateTemplate;


    @Transactional
    public void createUser(User user) {
        this.hibernateTemplate.saveOrUpdate(user);

    }


    public List<User> users() {
        List <User> users=this.hibernateTemplate.loadAll(User.class);
        return users;
    }

    @Transactional
    public void deleteUser(int uid) {
      User user = hibernateTemplate.load(User.class,uid)  ;
      this.hibernateTemplate.delete(user);

    }

    public User getSingleUSer(int uid) {
        return this.hibernateTemplate.get(User.class,uid);
    }
}
