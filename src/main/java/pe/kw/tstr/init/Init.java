package pe.kw.tstr.init;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.javalite.activejdbc.Base;

import pe.kw.tstr.bean.Category;
import pe.kw.tstr.dao.CategoryDao;
import pe.kw.tstr.dao.imp.CategoryDaoImp;



public class Init {
	
	final static Logger logger = LoggerFactory.getLogger(Init.class);
	
	static{
		Base.open("com.mysql.jdbc.Driver", "jdbc:mysql://localhost/clio", "root", "f00");
	}
	
	public static void main(String[] args) {
		
		CategoryDao dao = new CategoryDaoImp();
		
		for (Category c : dao.findByParent(2)) {
			logger.info(c.toString());
		}
		
		
	}

}
