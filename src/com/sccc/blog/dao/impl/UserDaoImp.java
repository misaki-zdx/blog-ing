package com.sccc.blog.dao.impl;


import com.sccc.blog.bean.po.BlogUserEntity;
import com.sccc.blog.dao.UserDao;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Author Misaki
 * Create By 2018/6/4
 */

//�־ò�ע��
@Repository
//�Զ������������ύ�ع�  @Transactional
public class UserDaoImp extends BaseDaoImp implements UserDao {
    @Override
    public void saveUser(String name, String password, String email) {
        init();
        BlogUserEntity blogUserEntity = new BlogUserEntity();
        blogUserEntity.setUserName(name);
        blogUserEntity.setPassword(password);
        blogUserEntity.setEmail(email);
        session.save(blogUserEntity);
        destroy();
    }

    @Override
    public List<BlogUserEntity> getAll(Class clazz) {
        return null;
    }

    @Override
    public int getUser(String name, String password) {
        //����ֵ��3��  0�޴��û�  1���û�Ϊ��ͨ�ο�  2���û�Ϊ����Ա
        int result = 0;
        @SuppressWarnings("unchecked")
        List<BlogUserEntity> list = super.search("FROM BlogUserEntity where username = '" + name + "' and password = '" + password + "'");
        if (list != null && list.size() == 1) {
            BlogUserEntity user = list.get(0);
            result = 1;
            if (null != user.getType()) {
                result = 2;
            }
        }
        return result;
    }

    @Override
    public int getUser(String name) {
        int result = 0;
        List list = super.search("FROM BlogUserEntity where username = '" + name + "'");
        if (list != null && list.size() == 1) {
            result = 1;
        }
        return result;
    }
}
