package org.example.chienliste.interfaces;

import java.util.List;

public interface Repository <T> {
    boolean add(T o);

    List<T> findAll();
}