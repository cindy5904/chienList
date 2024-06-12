package org.example.chienliste.service;

import org.example.chienliste.entity.Chien;
import org.example.chienliste.interfaces.Repository;

import java.util.List;

public class ChienService extends BaseService implements Repository<Chien> {
    public ChienService() {
        super();
    }

    @Override
    public boolean save(Chien o) {
        session = sessionFactory.openSession();
        session.beginTransaction();
        session.save(o);
        session.getTransaction().commit();
        session.close();
        return true;
    }

    @Override
    public boolean update(Chien o) {
        return false;
    }

    @Override
    public boolean delete(Chien o) {
        return false;
    }

    @Override
    public Chien findById(int id) {
        return null;
    }

    @Override
    public List<Chien> findAll() {
        session = sessionFactory.openSession();
        List<Chien> chiens = session.createQuery("from Chien", Chien.class).list();
        session.close();
        return chiens;
    }
}
