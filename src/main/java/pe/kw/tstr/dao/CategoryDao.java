package pe.kw.tstr.dao;

import java.util.List;

import pe.kw.tstr.bean.Category;

public interface CategoryDao {

	public List<Category> findAll();
	
	public List<Category> findByParent(int idParent);
	
	public List<Category> findChildren(int idParent);
	
}
