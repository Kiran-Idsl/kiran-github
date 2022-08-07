package com.kiran.service;

import java.util.List;

import com.kiran.entity.JobSeekerInfo;

public interface IJobSeekerMgmtService {
	//public  String registerJobSeeker(JobSeekerInfo info);
	public  List<JobSeekerInfo>  fetchAllJobseekers();
	//public  String   fetchResumePathByJsId(Integer jsId);
    //public  String   fetchPhotoPathByJsId(Integer jsId);
	 
}
