package com.gl.casestudy3.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gl.casestudy3.bean.CompanyShare;
import com.gl.casestudy3.repository.CompanyRepository;

@Service
public class CompanyService {
	@Autowired
	private CompanyRepository repository;
	
	public void save(CompanyShare company) {
		repository.save(company);
	}
	
	public List<CompanyShare> findAll(){
		return repository.findAll();
	}
	
	public CompanyShare findById(Long id){
		return repository.getById(id);
	}
	
	public Long generateCompanyId() {
		Long v=repository.findMaxCompanyId();
		if(v==null)
			v=1000001L;
		else
			v=v+1;
		return v;
		
	}
	public void delete(long id) {
		repository.deleteById(id);
	}

}
