package pe.kw.tstr.dao.imp;

import java.util.List;

import pe.kw.tstr.bean.Category;
import pe.kw.tstr.dao.CategoryDao;

public class CategoryDaoImp implements CategoryDao{

	public List<Category> findAll() {
		// TODO Auto-generated method stub
		return Category.findAll();
	}

	public List<Category> findByParent(int idParent) {
		// TODO Auto-generated method stub
		return Category.where("parent = ?", idParent);
	}
	
	
	public List<Category> findChildren(int idParent){
		
		
		
		return null;
	}
	

}
