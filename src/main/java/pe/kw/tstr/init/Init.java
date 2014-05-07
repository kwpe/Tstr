package pe.kw.tstr.init;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.javalite.activejdbc.Base;

import pe.kw.tstr.model.Alternative;
import pe.kw.tstr.model.Category;
import pe.kw.tstr.model.Question;


public class Init {

    final static Logger logger = LoggerFactory.getLogger(Init.class);

    static {
        Base.open("com.mysql.jdbc.Driver", "jdbc:mysql://localhost/clio", "root", "admin");
    }

    public static void main(String[] args) {

        Category category = new Category();
        category.set("description", "science");
        category.save();

        Question question = new Question();
        question.set("content", "blablablabla");
        question.save();

        Alternative alternative = new Alternative();
        alternative.set("question_id", question.getId());
        alternative.set("value", "jejejeje");
        alternative.save();

        Alternative alternative1 = new Alternative();
        alternative1.set("question_id", question.getId());
        alternative1.set("value", "jejejeje");
        alternative1.save();

        System.out.println(category.toJson(false));
        System.out.println(question.toJson(false));
        System.out.println(question.getAll(Alternative.class).toJson(false));

        System.out.println(question.findByStatus("0").toJson(false));
    }

}
