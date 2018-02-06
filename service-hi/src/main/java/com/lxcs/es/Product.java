package com.lxcs.es;

import org.springframework.data.annotation.Id;
import org.springframework.data.elasticsearch.annotations.Document;
import org.springframework.data.elasticsearch.annotations.Field;

/**
 * Created by shuai on 2018/1/2.
 */
@Document(indexName = "es-product", type = "product", shards = 2, replicas = 1, refreshInterval = "-1")
public class Product {
    @Id
    private String id;
    private	String	mid; //monggo  的id
    private	String	url; //商品url
    private	String	md5Url;//MD5加密后的url
    private	String	title;//商品名称
    private	String	websiteId;//来源网站
    private	String	price; //价格（用户付款的最终价格）
    private	String	pagePrice; //页面标注价格
    private	String	oldPrice; //页面标注的原价，没有原价时与price相同
    private	String	imageUrl;//商品图片
    private	String	detail;//详情
    private	String	enteredTime;//进入时间
    private	String	isDeleted;//是否删除
    private	String	updatedTime;//更新时间
    private	String	brandId; //品牌ID
    private	String	categoryLocationId; //品类层级ID
    private	String	isSoldOut; //是否有货
    private	String	skuId; //商品唯一sku码
    private	String	styleId;//风格ID

    public Product() {
    }


    public String getId() {
        return this.id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getMid() {
        return mid;
    }

    public void setMid(String mid) {
        this.mid = mid;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getMd5Url() {
        return md5Url;
    }

    public void setMd5Url(String md5Url) {
        this.md5Url = md5Url;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getWebsiteId() {
        return websiteId;
    }

    public void setWebsiteId(String websiteId) {
        this.websiteId = websiteId;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getPagePrice() {
        return pagePrice;
    }

    public void setPagePrice(String pagePrice) {
        this.pagePrice = pagePrice;
    }

    public String getOldPrice() {
        return oldPrice;
    }

    public void setOldPrice(String oldPrice) {
        this.oldPrice = oldPrice;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getEnteredTime() {
        return enteredTime;
    }

    public void setEnteredTime(String enteredTime) {
        this.enteredTime = enteredTime;
    }

    public String getIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(String isDeleted) {
        this.isDeleted = isDeleted;
    }

    public String getUpdatedTime() {
        return updatedTime;
    }

    public void setUpdatedTime(String updatedTime) {
        this.updatedTime = updatedTime;
    }

    public String getBrandId() {
        return brandId;
    }

    public void setBrandId(String brandId) {
        this.brandId = brandId;
    }

    public String getCategoryLocationId() {
        return categoryLocationId;
    }

    public void setCategoryLocationId(String categoryLocationId) {
        this.categoryLocationId = categoryLocationId;
    }

    public String getIsSoldOut() {
        return isSoldOut;
    }

    public void setIsSoldOut(String isSoldOut) {
        this.isSoldOut = isSoldOut;
    }

    public String getSkuId() {
        return skuId;
    }

    public void setSkuId(String skuId) {
        this.skuId = skuId;
    }

    public String getStyleId() {
        return styleId;
    }

    public void setStyleId(String styleId) {
        this.styleId = styleId;
    }
}
