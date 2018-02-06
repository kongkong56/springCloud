package com.lxcs.es;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.elasticsearch.annotations.Query;
import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;

import java.util.List;


/**
 * Created by shuai on 2018/1/2.
 */
public interface ProductRepository extends ElasticsearchRepository<Product,Long> {
    public List<Product> findById(String id);

    public List<Product> findByTitleLike(String title);

    public List<Product> findByTitleIsLike(String title);

    @Query("{\"bool\" : {\"must\" : {\"term\" : {\"md5Url\" : \"?0\"}}}}")
    Page<Product> findByMd5UrlLike(String md5Url, Pageable pageable);
}