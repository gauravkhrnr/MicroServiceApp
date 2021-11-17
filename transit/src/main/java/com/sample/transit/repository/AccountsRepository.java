package com.sample.transit.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.sample.transit.model.Accounts;

@Repository
public interface AccountsRepository extends CrudRepository<Accounts, Long> {
}
