package org.example.chienliste.interfaces;

import java.util.List;

public interface Repository <T> {
    boolean save(T o);
    boolean update(T o);
    boolean delete(T o);

    T findById(int id);

    List<T> findAll();
}