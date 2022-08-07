package com.kiran.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.kiran.repository.ProductRepository;

@Transactional
@Service("productService")
public class ProductServiceImpl implements IProductService {

	@Autowired
	private ProductRepository productRepository;

	@Override
	public List<String> search(String keyword) {
		return productRepository.search(keyword);
	}

}
