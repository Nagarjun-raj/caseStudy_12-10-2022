package com.gl.casestudy3.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.gl.casestudy3.bean.CompanyShare;
import com.gl.casestudy3.service.CompanyService;

public interface CompanyRepository extends JpaRepository<CompanyShare, Long> {
	@Query("select max(companyId) from CompanyShare")
	public Long findMaxCompanyId();

}
