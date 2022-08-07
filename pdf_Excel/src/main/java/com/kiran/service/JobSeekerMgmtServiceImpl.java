package com.kiran.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kiran.entity.JobSeekerInfo;
import com.kiran.repo.IJobSeekerRepo;
@Service
public class JobSeekerMgmtServiceImpl implements IJobSeekerMgmtService {
	@Autowired
	private IJobSeekerRepo  jsRepo;
	
	@Override
	public List<JobSeekerInfo> fetchAllJobseekers() {
		return jsRepo.findAll();
	}
	
}