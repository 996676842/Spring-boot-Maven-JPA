package com.bonc.tender.repository;


import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.bonc.tender.entity.User;

public interface UserRepository extends PagingAndSortingRepository <User, Integer>{

	
	/**按照Spring data 定义的规则，查询方法以find|read|get开头.
	涉及条件查询时，条件的属性用条件关键字连接，
	要注意的是：条件属性以首字母大写其余字母小写为规定。**/
	Page<User> findByEmail(String email,Pageable pageable);

	Page<User> findByName(String choice,Pageable pageable);


}
