package com.flextonic.restapi.repository;

import com.flextonic.restapi.model.Technology;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(collectionResourceRel = "technology", path = "technology")
public interface TechnologyRepository extends PagingAndSortingRepository<Technology, Integer> {
}
