package pe.kw.tstr.model;

import org.javalite.activejdbc.LazyList;
import org.javalite.activejdbc.Model;

public class Question extends Model {

    public LazyList<Alternative> findByStatus(String status) {
        return get(Alternative.class, "status = ?", status);
    }

}