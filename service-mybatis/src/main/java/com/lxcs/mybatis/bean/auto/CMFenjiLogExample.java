package com.lxcs.mybatis.bean.auto;

import java.util.ArrayList;
import java.util.List;

public class CMFenjiLogExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    protected int limitStart = -1;

    protected int limitEnd = -1;

    public CMFenjiLogExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    public void setLimitStart(int limitStart) {
        this.limitStart=limitStart;
    }

    public int getLimitStart() {
        return limitStart;
    }

    public void setLimitEnd(int limitEnd) {
        this.limitEnd=limitEnd;
    }

    public int getLimitEnd() {
        return limitEnd;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andExtensionNumberIsNull() {
            addCriterion("extension_number is null");
            return (Criteria) this;
        }

        public Criteria andExtensionNumberIsNotNull() {
            addCriterion("extension_number is not null");
            return (Criteria) this;
        }

        public Criteria andExtensionNumberEqualTo(String value) {
            addCriterion("extension_number =", value, "extensionNumber");
            return (Criteria) this;
        }

        public Criteria andExtensionNumberNotEqualTo(String value) {
            addCriterion("extension_number <>", value, "extensionNumber");
            return (Criteria) this;
        }

        public Criteria andExtensionNumberGreaterThan(String value) {
            addCriterion("extension_number >", value, "extensionNumber");
            return (Criteria) this;
        }

        public Criteria andExtensionNumberGreaterThanOrEqualTo(String value) {
            addCriterion("extension_number >=", value, "extensionNumber");
            return (Criteria) this;
        }

        public Criteria andExtensionNumberLessThan(String value) {
            addCriterion("extension_number <", value, "extensionNumber");
            return (Criteria) this;
        }

        public Criteria andExtensionNumberLessThanOrEqualTo(String value) {
            addCriterion("extension_number <=", value, "extensionNumber");
            return (Criteria) this;
        }

        public Criteria andExtensionNumberLike(String value) {
            addCriterion("extension_number like", value, "extensionNumber");
            return (Criteria) this;
        }

        public Criteria andExtensionNumberNotLike(String value) {
            addCriterion("extension_number not like", value, "extensionNumber");
            return (Criteria) this;
        }

        public Criteria andExtensionNumberIn(List<String> values) {
            addCriterion("extension_number in", values, "extensionNumber");
            return (Criteria) this;
        }

        public Criteria andExtensionNumberNotIn(List<String> values) {
            addCriterion("extension_number not in", values, "extensionNumber");
            return (Criteria) this;
        }

        public Criteria andExtensionNumberBetween(String value1, String value2) {
            addCriterion("extension_number between", value1, value2, "extensionNumber");
            return (Criteria) this;
        }

        public Criteria andExtensionNumberNotBetween(String value1, String value2) {
            addCriterion("extension_number not between", value1, value2, "extensionNumber");
            return (Criteria) this;
        }

        public Criteria andFenjiNumberIsNull() {
            addCriterion("fenji_number is null");
            return (Criteria) this;
        }

        public Criteria andFenjiNumberIsNotNull() {
            addCriterion("fenji_number is not null");
            return (Criteria) this;
        }

        public Criteria andFenjiNumberEqualTo(String value) {
            addCriterion("fenji_number =", value, "fenjiNumber");
            return (Criteria) this;
        }

        public Criteria andFenjiNumberNotEqualTo(String value) {
            addCriterion("fenji_number <>", value, "fenjiNumber");
            return (Criteria) this;
        }

        public Criteria andFenjiNumberGreaterThan(String value) {
            addCriterion("fenji_number >", value, "fenjiNumber");
            return (Criteria) this;
        }

        public Criteria andFenjiNumberGreaterThanOrEqualTo(String value) {
            addCriterion("fenji_number >=", value, "fenjiNumber");
            return (Criteria) this;
        }

        public Criteria andFenjiNumberLessThan(String value) {
            addCriterion("fenji_number <", value, "fenjiNumber");
            return (Criteria) this;
        }

        public Criteria andFenjiNumberLessThanOrEqualTo(String value) {
            addCriterion("fenji_number <=", value, "fenjiNumber");
            return (Criteria) this;
        }

        public Criteria andFenjiNumberLike(String value) {
            addCriterion("fenji_number like", value, "fenjiNumber");
            return (Criteria) this;
        }

        public Criteria andFenjiNumberNotLike(String value) {
            addCriterion("fenji_number not like", value, "fenjiNumber");
            return (Criteria) this;
        }

        public Criteria andFenjiNumberIn(List<String> values) {
            addCriterion("fenji_number in", values, "fenjiNumber");
            return (Criteria) this;
        }

        public Criteria andFenjiNumberNotIn(List<String> values) {
            addCriterion("fenji_number not in", values, "fenjiNumber");
            return (Criteria) this;
        }

        public Criteria andFenjiNumberBetween(String value1, String value2) {
            addCriterion("fenji_number between", value1, value2, "fenjiNumber");
            return (Criteria) this;
        }

        public Criteria andFenjiNumberNotBetween(String value1, String value2) {
            addCriterion("fenji_number not between", value1, value2, "fenjiNumber");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNull() {
            addCriterion("user_id is null");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNotNull() {
            addCriterion("user_id is not null");
            return (Criteria) this;
        }

        public Criteria andUserIdEqualTo(String value) {
            addCriterion("user_id =", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotEqualTo(String value) {
            addCriterion("user_id <>", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThan(String value) {
            addCriterion("user_id >", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThanOrEqualTo(String value) {
            addCriterion("user_id >=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThan(String value) {
            addCriterion("user_id <", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThanOrEqualTo(String value) {
            addCriterion("user_id <=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLike(String value) {
            addCriterion("user_id like", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotLike(String value) {
            addCriterion("user_id not like", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdIn(List<String> values) {
            addCriterion("user_id in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotIn(List<String> values) {
            addCriterion("user_id not in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdBetween(String value1, String value2) {
            addCriterion("user_id between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotBetween(String value1, String value2) {
            addCriterion("user_id not between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andUserNameIsNull() {
            addCriterion("user_name is null");
            return (Criteria) this;
        }

        public Criteria andUserNameIsNotNull() {
            addCriterion("user_name is not null");
            return (Criteria) this;
        }

        public Criteria andUserNameEqualTo(String value) {
            addCriterion("user_name =", value, "userName");
            return (Criteria) this;
        }

        public Criteria andUserNameNotEqualTo(String value) {
            addCriterion("user_name <>", value, "userName");
            return (Criteria) this;
        }

        public Criteria andUserNameGreaterThan(String value) {
            addCriterion("user_name >", value, "userName");
            return (Criteria) this;
        }

        public Criteria andUserNameGreaterThanOrEqualTo(String value) {
            addCriterion("user_name >=", value, "userName");
            return (Criteria) this;
        }

        public Criteria andUserNameLessThan(String value) {
            addCriterion("user_name <", value, "userName");
            return (Criteria) this;
        }

        public Criteria andUserNameLessThanOrEqualTo(String value) {
            addCriterion("user_name <=", value, "userName");
            return (Criteria) this;
        }

        public Criteria andUserNameLike(String value) {
            addCriterion("user_name like", value, "userName");
            return (Criteria) this;
        }

        public Criteria andUserNameNotLike(String value) {
            addCriterion("user_name not like", value, "userName");
            return (Criteria) this;
        }

        public Criteria andUserNameIn(List<String> values) {
            addCriterion("user_name in", values, "userName");
            return (Criteria) this;
        }

        public Criteria andUserNameNotIn(List<String> values) {
            addCriterion("user_name not in", values, "userName");
            return (Criteria) this;
        }

        public Criteria andUserNameBetween(String value1, String value2) {
            addCriterion("user_name between", value1, value2, "userName");
            return (Criteria) this;
        }

        public Criteria andUserNameNotBetween(String value1, String value2) {
            addCriterion("user_name not between", value1, value2, "userName");
            return (Criteria) this;
        }

        public Criteria andLastUserIdIsNull() {
            addCriterion("last_user_id is null");
            return (Criteria) this;
        }

        public Criteria andLastUserIdIsNotNull() {
            addCriterion("last_user_id is not null");
            return (Criteria) this;
        }

        public Criteria andLastUserIdEqualTo(String value) {
            addCriterion("last_user_id =", value, "lastUserId");
            return (Criteria) this;
        }

        public Criteria andLastUserIdNotEqualTo(String value) {
            addCriterion("last_user_id <>", value, "lastUserId");
            return (Criteria) this;
        }

        public Criteria andLastUserIdGreaterThan(String value) {
            addCriterion("last_user_id >", value, "lastUserId");
            return (Criteria) this;
        }

        public Criteria andLastUserIdGreaterThanOrEqualTo(String value) {
            addCriterion("last_user_id >=", value, "lastUserId");
            return (Criteria) this;
        }

        public Criteria andLastUserIdLessThan(String value) {
            addCriterion("last_user_id <", value, "lastUserId");
            return (Criteria) this;
        }

        public Criteria andLastUserIdLessThanOrEqualTo(String value) {
            addCriterion("last_user_id <=", value, "lastUserId");
            return (Criteria) this;
        }

        public Criteria andLastUserIdLike(String value) {
            addCriterion("last_user_id like", value, "lastUserId");
            return (Criteria) this;
        }

        public Criteria andLastUserIdNotLike(String value) {
            addCriterion("last_user_id not like", value, "lastUserId");
            return (Criteria) this;
        }

        public Criteria andLastUserIdIn(List<String> values) {
            addCriterion("last_user_id in", values, "lastUserId");
            return (Criteria) this;
        }

        public Criteria andLastUserIdNotIn(List<String> values) {
            addCriterion("last_user_id not in", values, "lastUserId");
            return (Criteria) this;
        }

        public Criteria andLastUserIdBetween(String value1, String value2) {
            addCriterion("last_user_id between", value1, value2, "lastUserId");
            return (Criteria) this;
        }

        public Criteria andLastUserIdNotBetween(String value1, String value2) {
            addCriterion("last_user_id not between", value1, value2, "lastUserId");
            return (Criteria) this;
        }

        public Criteria andLastUserNameIsNull() {
            addCriterion("last_user_name is null");
            return (Criteria) this;
        }

        public Criteria andLastUserNameIsNotNull() {
            addCriterion("last_user_name is not null");
            return (Criteria) this;
        }

        public Criteria andLastUserNameEqualTo(String value) {
            addCriterion("last_user_name =", value, "lastUserName");
            return (Criteria) this;
        }

        public Criteria andLastUserNameNotEqualTo(String value) {
            addCriterion("last_user_name <>", value, "lastUserName");
            return (Criteria) this;
        }

        public Criteria andLastUserNameGreaterThan(String value) {
            addCriterion("last_user_name >", value, "lastUserName");
            return (Criteria) this;
        }

        public Criteria andLastUserNameGreaterThanOrEqualTo(String value) {
            addCriterion("last_user_name >=", value, "lastUserName");
            return (Criteria) this;
        }

        public Criteria andLastUserNameLessThan(String value) {
            addCriterion("last_user_name <", value, "lastUserName");
            return (Criteria) this;
        }

        public Criteria andLastUserNameLessThanOrEqualTo(String value) {
            addCriterion("last_user_name <=", value, "lastUserName");
            return (Criteria) this;
        }

        public Criteria andLastUserNameLike(String value) {
            addCriterion("last_user_name like", value, "lastUserName");
            return (Criteria) this;
        }

        public Criteria andLastUserNameNotLike(String value) {
            addCriterion("last_user_name not like", value, "lastUserName");
            return (Criteria) this;
        }

        public Criteria andLastUserNameIn(List<String> values) {
            addCriterion("last_user_name in", values, "lastUserName");
            return (Criteria) this;
        }

        public Criteria andLastUserNameNotIn(List<String> values) {
            addCriterion("last_user_name not in", values, "lastUserName");
            return (Criteria) this;
        }

        public Criteria andLastUserNameBetween(String value1, String value2) {
            addCriterion("last_user_name between", value1, value2, "lastUserName");
            return (Criteria) this;
        }

        public Criteria andLastUserNameNotBetween(String value1, String value2) {
            addCriterion("last_user_name not between", value1, value2, "lastUserName");
            return (Criteria) this;
        }

        public Criteria andDepartmentTopCdIsNull() {
            addCriterion("department_top_cd is null");
            return (Criteria) this;
        }

        public Criteria andDepartmentTopCdIsNotNull() {
            addCriterion("department_top_cd is not null");
            return (Criteria) this;
        }

        public Criteria andDepartmentTopCdEqualTo(String value) {
            addCriterion("department_top_cd =", value, "departmentTopCd");
            return (Criteria) this;
        }

        public Criteria andDepartmentTopCdNotEqualTo(String value) {
            addCriterion("department_top_cd <>", value, "departmentTopCd");
            return (Criteria) this;
        }

        public Criteria andDepartmentTopCdGreaterThan(String value) {
            addCriterion("department_top_cd >", value, "departmentTopCd");
            return (Criteria) this;
        }

        public Criteria andDepartmentTopCdGreaterThanOrEqualTo(String value) {
            addCriterion("department_top_cd >=", value, "departmentTopCd");
            return (Criteria) this;
        }

        public Criteria andDepartmentTopCdLessThan(String value) {
            addCriterion("department_top_cd <", value, "departmentTopCd");
            return (Criteria) this;
        }

        public Criteria andDepartmentTopCdLessThanOrEqualTo(String value) {
            addCriterion("department_top_cd <=", value, "departmentTopCd");
            return (Criteria) this;
        }

        public Criteria andDepartmentTopCdLike(String value) {
            addCriterion("department_top_cd like", value, "departmentTopCd");
            return (Criteria) this;
        }

        public Criteria andDepartmentTopCdNotLike(String value) {
            addCriterion("department_top_cd not like", value, "departmentTopCd");
            return (Criteria) this;
        }

        public Criteria andDepartmentTopCdIn(List<String> values) {
            addCriterion("department_top_cd in", values, "departmentTopCd");
            return (Criteria) this;
        }

        public Criteria andDepartmentTopCdNotIn(List<String> values) {
            addCriterion("department_top_cd not in", values, "departmentTopCd");
            return (Criteria) this;
        }

        public Criteria andDepartmentTopCdBetween(String value1, String value2) {
            addCriterion("department_top_cd between", value1, value2, "departmentTopCd");
            return (Criteria) this;
        }

        public Criteria andDepartmentTopCdNotBetween(String value1, String value2) {
            addCriterion("department_top_cd not between", value1, value2, "departmentTopCd");
            return (Criteria) this;
        }

        public Criteria andDepartmentTopNameIsNull() {
            addCriterion("department_top_name is null");
            return (Criteria) this;
        }

        public Criteria andDepartmentTopNameIsNotNull() {
            addCriterion("department_top_name is not null");
            return (Criteria) this;
        }

        public Criteria andDepartmentTopNameEqualTo(String value) {
            addCriterion("department_top_name =", value, "departmentTopName");
            return (Criteria) this;
        }

        public Criteria andDepartmentTopNameNotEqualTo(String value) {
            addCriterion("department_top_name <>", value, "departmentTopName");
            return (Criteria) this;
        }

        public Criteria andDepartmentTopNameGreaterThan(String value) {
            addCriterion("department_top_name >", value, "departmentTopName");
            return (Criteria) this;
        }

        public Criteria andDepartmentTopNameGreaterThanOrEqualTo(String value) {
            addCriterion("department_top_name >=", value, "departmentTopName");
            return (Criteria) this;
        }

        public Criteria andDepartmentTopNameLessThan(String value) {
            addCriterion("department_top_name <", value, "departmentTopName");
            return (Criteria) this;
        }

        public Criteria andDepartmentTopNameLessThanOrEqualTo(String value) {
            addCriterion("department_top_name <=", value, "departmentTopName");
            return (Criteria) this;
        }

        public Criteria andDepartmentTopNameLike(String value) {
            addCriterion("department_top_name like", value, "departmentTopName");
            return (Criteria) this;
        }

        public Criteria andDepartmentTopNameNotLike(String value) {
            addCriterion("department_top_name not like", value, "departmentTopName");
            return (Criteria) this;
        }

        public Criteria andDepartmentTopNameIn(List<String> values) {
            addCriterion("department_top_name in", values, "departmentTopName");
            return (Criteria) this;
        }

        public Criteria andDepartmentTopNameNotIn(List<String> values) {
            addCriterion("department_top_name not in", values, "departmentTopName");
            return (Criteria) this;
        }

        public Criteria andDepartmentTopNameBetween(String value1, String value2) {
            addCriterion("department_top_name between", value1, value2, "departmentTopName");
            return (Criteria) this;
        }

        public Criteria andDepartmentTopNameNotBetween(String value1, String value2) {
            addCriterion("department_top_name not between", value1, value2, "departmentTopName");
            return (Criteria) this;
        }

        public Criteria andLastDepartmentTopCdIsNull() {
            addCriterion("last_department_top_cd is null");
            return (Criteria) this;
        }

        public Criteria andLastDepartmentTopCdIsNotNull() {
            addCriterion("last_department_top_cd is not null");
            return (Criteria) this;
        }

        public Criteria andLastDepartmentTopCdEqualTo(String value) {
            addCriterion("last_department_top_cd =", value, "lastDepartmentTopCd");
            return (Criteria) this;
        }

        public Criteria andLastDepartmentTopCdNotEqualTo(String value) {
            addCriterion("last_department_top_cd <>", value, "lastDepartmentTopCd");
            return (Criteria) this;
        }

        public Criteria andLastDepartmentTopCdGreaterThan(String value) {
            addCriterion("last_department_top_cd >", value, "lastDepartmentTopCd");
            return (Criteria) this;
        }

        public Criteria andLastDepartmentTopCdGreaterThanOrEqualTo(String value) {
            addCriterion("last_department_top_cd >=", value, "lastDepartmentTopCd");
            return (Criteria) this;
        }

        public Criteria andLastDepartmentTopCdLessThan(String value) {
            addCriterion("last_department_top_cd <", value, "lastDepartmentTopCd");
            return (Criteria) this;
        }

        public Criteria andLastDepartmentTopCdLessThanOrEqualTo(String value) {
            addCriterion("last_department_top_cd <=", value, "lastDepartmentTopCd");
            return (Criteria) this;
        }

        public Criteria andLastDepartmentTopCdLike(String value) {
            addCriterion("last_department_top_cd like", value, "lastDepartmentTopCd");
            return (Criteria) this;
        }

        public Criteria andLastDepartmentTopCdNotLike(String value) {
            addCriterion("last_department_top_cd not like", value, "lastDepartmentTopCd");
            return (Criteria) this;
        }

        public Criteria andLastDepartmentTopCdIn(List<String> values) {
            addCriterion("last_department_top_cd in", values, "lastDepartmentTopCd");
            return (Criteria) this;
        }

        public Criteria andLastDepartmentTopCdNotIn(List<String> values) {
            addCriterion("last_department_top_cd not in", values, "lastDepartmentTopCd");
            return (Criteria) this;
        }

        public Criteria andLastDepartmentTopCdBetween(String value1, String value2) {
            addCriterion("last_department_top_cd between", value1, value2, "lastDepartmentTopCd");
            return (Criteria) this;
        }

        public Criteria andLastDepartmentTopCdNotBetween(String value1, String value2) {
            addCriterion("last_department_top_cd not between", value1, value2, "lastDepartmentTopCd");
            return (Criteria) this;
        }

        public Criteria andLastDepartmentTopNameIsNull() {
            addCriterion("last_department_top_name is null");
            return (Criteria) this;
        }

        public Criteria andLastDepartmentTopNameIsNotNull() {
            addCriterion("last_department_top_name is not null");
            return (Criteria) this;
        }

        public Criteria andLastDepartmentTopNameEqualTo(String value) {
            addCriterion("last_department_top_name =", value, "lastDepartmentTopName");
            return (Criteria) this;
        }

        public Criteria andLastDepartmentTopNameNotEqualTo(String value) {
            addCriterion("last_department_top_name <>", value, "lastDepartmentTopName");
            return (Criteria) this;
        }

        public Criteria andLastDepartmentTopNameGreaterThan(String value) {
            addCriterion("last_department_top_name >", value, "lastDepartmentTopName");
            return (Criteria) this;
        }

        public Criteria andLastDepartmentTopNameGreaterThanOrEqualTo(String value) {
            addCriterion("last_department_top_name >=", value, "lastDepartmentTopName");
            return (Criteria) this;
        }

        public Criteria andLastDepartmentTopNameLessThan(String value) {
            addCriterion("last_department_top_name <", value, "lastDepartmentTopName");
            return (Criteria) this;
        }

        public Criteria andLastDepartmentTopNameLessThanOrEqualTo(String value) {
            addCriterion("last_department_top_name <=", value, "lastDepartmentTopName");
            return (Criteria) this;
        }

        public Criteria andLastDepartmentTopNameLike(String value) {
            addCriterion("last_department_top_name like", value, "lastDepartmentTopName");
            return (Criteria) this;
        }

        public Criteria andLastDepartmentTopNameNotLike(String value) {
            addCriterion("last_department_top_name not like", value, "lastDepartmentTopName");
            return (Criteria) this;
        }

        public Criteria andLastDepartmentTopNameIn(List<String> values) {
            addCriterion("last_department_top_name in", values, "lastDepartmentTopName");
            return (Criteria) this;
        }

        public Criteria andLastDepartmentTopNameNotIn(List<String> values) {
            addCriterion("last_department_top_name not in", values, "lastDepartmentTopName");
            return (Criteria) this;
        }

        public Criteria andLastDepartmentTopNameBetween(String value1, String value2) {
            addCriterion("last_department_top_name between", value1, value2, "lastDepartmentTopName");
            return (Criteria) this;
        }

        public Criteria andLastDepartmentTopNameNotBetween(String value1, String value2) {
            addCriterion("last_department_top_name not between", value1, value2, "lastDepartmentTopName");
            return (Criteria) this;
        }

        public Criteria andIsUsedIsNull() {
            addCriterion("is_used is null");
            return (Criteria) this;
        }

        public Criteria andIsUsedIsNotNull() {
            addCriterion("is_used is not null");
            return (Criteria) this;
        }

        public Criteria andIsUsedEqualTo(String value) {
            addCriterion("is_used =", value, "isUsed");
            return (Criteria) this;
        }

        public Criteria andIsUsedNotEqualTo(String value) {
            addCriterion("is_used <>", value, "isUsed");
            return (Criteria) this;
        }

        public Criteria andIsUsedGreaterThan(String value) {
            addCriterion("is_used >", value, "isUsed");
            return (Criteria) this;
        }

        public Criteria andIsUsedGreaterThanOrEqualTo(String value) {
            addCriterion("is_used >=", value, "isUsed");
            return (Criteria) this;
        }

        public Criteria andIsUsedLessThan(String value) {
            addCriterion("is_used <", value, "isUsed");
            return (Criteria) this;
        }

        public Criteria andIsUsedLessThanOrEqualTo(String value) {
            addCriterion("is_used <=", value, "isUsed");
            return (Criteria) this;
        }

        public Criteria andIsUsedLike(String value) {
            addCriterion("is_used like", value, "isUsed");
            return (Criteria) this;
        }

        public Criteria andIsUsedNotLike(String value) {
            addCriterion("is_used not like", value, "isUsed");
            return (Criteria) this;
        }

        public Criteria andIsUsedIn(List<String> values) {
            addCriterion("is_used in", values, "isUsed");
            return (Criteria) this;
        }

        public Criteria andIsUsedNotIn(List<String> values) {
            addCriterion("is_used not in", values, "isUsed");
            return (Criteria) this;
        }

        public Criteria andIsUsedBetween(String value1, String value2) {
            addCriterion("is_used between", value1, value2, "isUsed");
            return (Criteria) this;
        }

        public Criteria andIsUsedNotBetween(String value1, String value2) {
            addCriterion("is_used not between", value1, value2, "isUsed");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdIsNull() {
            addCriterion("create_user_id is null");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdIsNotNull() {
            addCriterion("create_user_id is not null");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdEqualTo(String value) {
            addCriterion("create_user_id =", value, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdNotEqualTo(String value) {
            addCriterion("create_user_id <>", value, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdGreaterThan(String value) {
            addCriterion("create_user_id >", value, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdGreaterThanOrEqualTo(String value) {
            addCriterion("create_user_id >=", value, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdLessThan(String value) {
            addCriterion("create_user_id <", value, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdLessThanOrEqualTo(String value) {
            addCriterion("create_user_id <=", value, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdLike(String value) {
            addCriterion("create_user_id like", value, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdNotLike(String value) {
            addCriterion("create_user_id not like", value, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdIn(List<String> values) {
            addCriterion("create_user_id in", values, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdNotIn(List<String> values) {
            addCriterion("create_user_id not in", values, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdBetween(String value1, String value2) {
            addCriterion("create_user_id between", value1, value2, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdNotBetween(String value1, String value2) {
            addCriterion("create_user_id not between", value1, value2, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateDateIsNull() {
            addCriterion("create_date is null");
            return (Criteria) this;
        }

        public Criteria andCreateDateIsNotNull() {
            addCriterion("create_date is not null");
            return (Criteria) this;
        }

        public Criteria andCreateDateEqualTo(Integer value) {
            addCriterion("create_date =", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateNotEqualTo(Integer value) {
            addCriterion("create_date <>", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateGreaterThan(Integer value) {
            addCriterion("create_date >", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateGreaterThanOrEqualTo(Integer value) {
            addCriterion("create_date >=", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateLessThan(Integer value) {
            addCriterion("create_date <", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateLessThanOrEqualTo(Integer value) {
            addCriterion("create_date <=", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateIn(List<Integer> values) {
            addCriterion("create_date in", values, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateNotIn(List<Integer> values) {
            addCriterion("create_date not in", values, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateBetween(Integer value1, Integer value2) {
            addCriterion("create_date between", value1, value2, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateNotBetween(Integer value1, Integer value2) {
            addCriterion("create_date not between", value1, value2, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateNameIsNull() {
            addCriterion("create_name is null");
            return (Criteria) this;
        }

        public Criteria andCreateNameIsNotNull() {
            addCriterion("create_name is not null");
            return (Criteria) this;
        }

        public Criteria andCreateNameEqualTo(String value) {
            addCriterion("create_name =", value, "createName");
            return (Criteria) this;
        }

        public Criteria andCreateNameNotEqualTo(String value) {
            addCriterion("create_name <>", value, "createName");
            return (Criteria) this;
        }

        public Criteria andCreateNameGreaterThan(String value) {
            addCriterion("create_name >", value, "createName");
            return (Criteria) this;
        }

        public Criteria andCreateNameGreaterThanOrEqualTo(String value) {
            addCriterion("create_name >=", value, "createName");
            return (Criteria) this;
        }

        public Criteria andCreateNameLessThan(String value) {
            addCriterion("create_name <", value, "createName");
            return (Criteria) this;
        }

        public Criteria andCreateNameLessThanOrEqualTo(String value) {
            addCriterion("create_name <=", value, "createName");
            return (Criteria) this;
        }

        public Criteria andCreateNameLike(String value) {
            addCriterion("create_name like", value, "createName");
            return (Criteria) this;
        }

        public Criteria andCreateNameNotLike(String value) {
            addCriterion("create_name not like", value, "createName");
            return (Criteria) this;
        }

        public Criteria andCreateNameIn(List<String> values) {
            addCriterion("create_name in", values, "createName");
            return (Criteria) this;
        }

        public Criteria andCreateNameNotIn(List<String> values) {
            addCriterion("create_name not in", values, "createName");
            return (Criteria) this;
        }

        public Criteria andCreateNameBetween(String value1, String value2) {
            addCriterion("create_name between", value1, value2, "createName");
            return (Criteria) this;
        }

        public Criteria andCreateNameNotBetween(String value1, String value2) {
            addCriterion("create_name not between", value1, value2, "createName");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}