package productcrudapp.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import productcrudapp.model.Product;

@Component
public class ProductDao {
	@Autowired
   private HibernateTemplate hibernateTemplate;
   //Create 
	@Transactional
   public void createProduct(Product product)
   {
	   this.hibernateTemplate.saveOrUpdate(product);
   }
	//Get all products
	public List<Product> getAllProducts()
	{
		List<Product> products = this.hibernateTemplate.loadAll(Product.class);
		return products;
	}
	//Delete product
	@Transactional
	public void deleteProduct(int pId)
	{
		Product p = this.hibernateTemplate.load(Product.class,pId);
		this.hibernateTemplate.delete(p);
	}
	//Get single Product
	public Product getProduct (int pId)
	{
		return this.hibernateTemplate.get(Product.class, pId);
	}
}
