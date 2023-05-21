package com.laptrinhjavaweb.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.laptrinhjavaweb.dao.impl.IProductDAO;
import com.laptrinhjavaweb.mapper.RowMapper;
import com.laptrinhjavaweb.mapper.productMapper;
import com.laptrinhjavaweb.model.productModel;

public class productDAO extends AbstractDAO<productModel> implements IProductDAO{
	
	

	@Override
	public List<productModel> selectall() {
		String sql= "SELECT * FROM product";
		return query(sql, new productMapper());
	}

	@Override
	public List<productModel> selectProductOfCompany(String idCongTy) {
		String sql= "SELECT * FROM product where idHang= ?";
		return query(sql, new productMapper(), idCongTy);
	}

	@Override
	public productModel selectProductOfid(String idSanPham) {
		String sql= "SELECT * FROM product where idSanPham= ?";
		List<productModel> list = query(sql, new productMapper(), idSanPham);
		return list.isEmpty() ? null : list.get(0);
	}

	@Override
	public List<productModel> selectNameProduct(String tenSanPham) {
		String sql= "select * from product where tenSanPham like '%"+ tenSanPham+ "%'";
		return query(sql, new productMapper());
	}

	@Override
	public void updateProductByID(String idSanPham, String tenSanPham, int giaSanPham, String hang) {
		String sql = "UPDATE product SET tenSanPham = ?, giaSanPham = ?, nhaSanXuat = ? WHERE idSanPham =?";
		update(sql, tenSanPham, giaSanPham, hang, idSanPham);
	}

	@Override
	public void addProduct(String idSanPham, String tenSanPham, int giaSanPham, String hang, String img, String idHang) {
		String sql = "INSERT INTO product (idSanPham, tenSanPham, giaSanPham, nhaSanXuat, img, idHang) VALUES (?, ?, ?, ?,?,?)";
		update(sql, idSanPham,tenSanPham, giaSanPham, hang,img, idHang);
	}

	@Override
	public void deleteProduct(String idSanPham) {
		String sql= "DELETE FROM product WHERE idSanPham = ?";
		update(sql, idSanPham);
		
	}

	
	
	

}
