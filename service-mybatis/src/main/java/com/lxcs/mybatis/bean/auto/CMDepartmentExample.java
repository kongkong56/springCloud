package com.lxcs.mybatis.bean.auto;

import java.util.ArrayList;
import java.util.List;

public class CMDepartmentExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    protected int limitStart = -1;

    protected int limitEnd = -1;

    public CMDepartmentExample() {
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

        public Criteria andDepartmentCdIsNull() {
            addCriterion("department_cd is null");
            return (Criteria) this;
        }

        public Criteria andDepartmentCdIsNotNull() {
            addCriterion("department_cd is not null");
            return (Criteria) this;
        }

        public Criteria andDepartmentCdEqualTo(String value) {
            addCriterion("department_cd =", value, "departmentCd");
            return (Criteria) this;
        }

        public Criteria andDepartmentCdNotEqualTo(String value) {
            addCriterion("department_cd <>", value, "departmentCd");
            return (Criteria) this;
        }

        public Criteria andDepartmentCdGreaterThan(String value) {
            addCriterion("department_cd >", value, "departmentCd");
            return (Criteria) this;
        }

        public Criteria andDepartmentCdGreaterThanOrEqualTo(String value) {
            addCriterion("department_cd >=", value, "departmentCd");
            return (Criteria) this;
        }

        public Criteria andDepartmentCdLessThan(String value) {
            addCriterion("department_cd <", value, "departmentCd");
            return (Criteria) this;
        }

        public Criteria andDepartmentCdLessThanOrEqualTo(String value) {
            addCriterion("department_cd <=", value, "departmentCd");
            return (Criteria) this;
        }

        public Criteria andDepartmentCdLike(String value) {
            addCriterion("department_cd like", value, "departmentCd");
            return (Criteria) this;
        }

        public Criteria andDepartmentCdNotLike(String value) {
            addCriterion("department_cd not like", value, "departmentCd");
            return (Criteria) this;
        }

        public Criteria andDepartmentCdIn(List<String> values) {
            addCriterion("department_cd in", values, "departmentCd");
            return (Criteria) this;
        }

        public Criteria andDepartmentCdNotIn(List<String> values) {
            addCriterion("department_cd not in", values, "departmentCd");
            return (Criteria) this;
        }

        public Criteria andDepartmentCdBetween(String value1, String value2) {
            addCriterion("department_cd between", value1, value2, "departmentCd");
            return (Criteria) this;
        }

        public Criteria andDepartmentCdNotBetween(String value1, String value2) {
            addCriterion("department_cd not between", value1, value2, "departmentCd");
            return (Criteria) this;
        }

        public Criteria andDepartmentNameIsNull() {
            addCriterion("department_name is null");
            return (Criteria) this;
        }

        public Criteria andDepartmentNameIsNotNull() {
            addCriterion("department_name is not null");
            return (Criteria) this;
        }

        public Criteria andDepartmentNameEqualTo(String value) {
            addCriterion("department_name =", value, "departmentName");
            return (Criteria) this;
        }

        public Criteria andDepartmentNameNotEqualTo(String value) {
            addCriterion("department_name <>", value, "departmentName");
            return (Criteria) this;
        }

        public Criteria andDepartmentNameGreaterThan(String value) {
            addCriterion("department_name >", value, "departmentName");
            return (Criteria) this;
        }

        public Criteria andDepartmentNameGreaterThanOrEqualTo(String value) {
            addCriterion("department_name >=", value, "departmentName");
            return (Criteria) this;
        }

        public Criteria andDepartmentNameLessThan(String value) {
            addCriterion("department_name <", value, "departmentName");
            return (Criteria) this;
        }

        public Criteria andDepartmentNameLessThanOrEqualTo(String value) {
            addCriterion("department_name <=", value, "departmentName");
            return (Criteria) this;
        }

        public Criteria andDepartmentNameLike(String value) {
            addCriterion("department_name like", value, "departmentName");
            return (Criteria) this;
        }

        public Criteria andDepartmentNameNotLike(String value) {
            addCriterion("department_name not like", value, "departmentName");
            return (Criteria) this;
        }

        public Criteria andDepartmentNameIn(List<String> values) {
            addCriterion("department_name in", values, "departmentName");
            return (Criteria) this;
        }

        public Criteria andDepartmentNameNotIn(List<String> values) {
            addCriterion("department_name not in", values, "departmentName");
            return (Criteria) this;
        }

        public Criteria andDepartmentNameBetween(String value1, String value2) {
            addCriterion("department_name between", value1, value2, "departmentName");
            return (Criteria) this;
        }

        public Criteria andDepartmentNameNotBetween(String value1, String value2) {
            addCriterion("department_name not between", value1, value2, "departmentName");
            return (Criteria) this;
        }

        public Criteria andDepartmentLeaderIdIsNull() {
            addCriterion("department_leader_id is null");
            return (Criteria) this;
        }

        public Criteria andDepartmentLeaderIdIsNotNull() {
            addCriterion("department_leader_id is not null");
            return (Criteria) this;
        }

        public Criteria andDepartmentLeaderIdEqualTo(String value) {
            addCriterion("department_leader_id =", value, "departmentLeaderId");
            return (Criteria) this;
        }

        public Criteria andDepartmentLeaderIdNotEqualTo(String value) {
            addCriterion("department_leader_id <>", value, "departmentLeaderId");
            return (Criteria) this;
        }

        public Criteria andDepartmentLeaderIdGreaterThan(String value) {
            addCriterion("department_leader_id >", value, "departmentLeaderId");
            return (Criteria) this;
        }

        public Criteria andDepartmentLeaderIdGreaterThanOrEqualTo(String value) {
            addCriterion("department_leader_id >=", value, "departmentLeaderId");
            return (Criteria) this;
        }

        public Criteria andDepartmentLeaderIdLessThan(String value) {
            addCriterion("department_leader_id <", value, "departmentLeaderId");
            return (Criteria) this;
        }

        public Criteria andDepartmentLeaderIdLessThanOrEqualTo(String value) {
            addCriterion("department_leader_id <=", value, "departmentLeaderId");
            return (Criteria) this;
        }

        public Criteria andDepartmentLeaderIdLike(String value) {
            addCriterion("department_leader_id like", value, "departmentLeaderId");
            return (Criteria) this;
        }

        public Criteria andDepartmentLeaderIdNotLike(String value) {
            addCriterion("department_leader_id not like", value, "departmentLeaderId");
            return (Criteria) this;
        }

        public Criteria andDepartmentLeaderIdIn(List<String> values) {
            addCriterion("department_leader_id in", values, "departmentLeaderId");
            return (Criteria) this;
        }

        public Criteria andDepartmentLeaderIdNotIn(List<String> values) {
            addCriterion("department_leader_id not in", values, "departmentLeaderId");
            return (Criteria) this;
        }

        public Criteria andDepartmentLeaderIdBetween(String value1, String value2) {
            addCriterion("department_leader_id between", value1, value2, "departmentLeaderId");
            return (Criteria) this;
        }

        public Criteria andDepartmentLeaderIdNotBetween(String value1, String value2) {
            addCriterion("department_leader_id not between", value1, value2, "departmentLeaderId");
            return (Criteria) this;
        }

        public Criteria andDepartmentLeaderNameIsNull() {
            addCriterion("department_leader_name is null");
            return (Criteria) this;
        }

        public Criteria andDepartmentLeaderNameIsNotNull() {
            addCriterion("department_leader_name is not null");
            return (Criteria) this;
        }

        public Criteria andDepartmentLeaderNameEqualTo(String value) {
            addCriterion("department_leader_name =", value, "departmentLeaderName");
            return (Criteria) this;
        }

        public Criteria andDepartmentLeaderNameNotEqualTo(String value) {
            addCriterion("department_leader_name <>", value, "departmentLeaderName");
            return (Criteria) this;
        }

        public Criteria andDepartmentLeaderNameGreaterThan(String value) {
            addCriterion("department_leader_name >", value, "departmentLeaderName");
            return (Criteria) this;
        }

        public Criteria andDepartmentLeaderNameGreaterThanOrEqualTo(String value) {
            addCriterion("department_leader_name >=", value, "departmentLeaderName");
            return (Criteria) this;
        }

        public Criteria andDepartmentLeaderNameLessThan(String value) {
            addCriterion("department_leader_name <", value, "departmentLeaderName");
            return (Criteria) this;
        }

        public Criteria andDepartmentLeaderNameLessThanOrEqualTo(String value) {
            addCriterion("department_leader_name <=", value, "departmentLeaderName");
            return (Criteria) this;
        }

        public Criteria andDepartmentLeaderNameLike(String value) {
            addCriterion("department_leader_name like", value, "departmentLeaderName");
            return (Criteria) this;
        }

        public Criteria andDepartmentLeaderNameNotLike(String value) {
            addCriterion("department_leader_name not like", value, "departmentLeaderName");
            return (Criteria) this;
        }

        public Criteria andDepartmentLeaderNameIn(List<String> values) {
            addCriterion("department_leader_name in", values, "departmentLeaderName");
            return (Criteria) this;
        }

        public Criteria andDepartmentLeaderNameNotIn(List<String> values) {
            addCriterion("department_leader_name not in", values, "departmentLeaderName");
            return (Criteria) this;
        }

        public Criteria andDepartmentLeaderNameBetween(String value1, String value2) {
            addCriterion("department_leader_name between", value1, value2, "departmentLeaderName");
            return (Criteria) this;
        }

        public Criteria andDepartmentLeaderNameNotBetween(String value1, String value2) {
            addCriterion("department_leader_name not between", value1, value2, "departmentLeaderName");
            return (Criteria) this;
        }

        public Criteria andDepartmentPCdIsNull() {
            addCriterion("department_p_cd is null");
            return (Criteria) this;
        }

        public Criteria andDepartmentPCdIsNotNull() {
            addCriterion("department_p_cd is not null");
            return (Criteria) this;
        }

        public Criteria andDepartmentPCdEqualTo(String value) {
            addCriterion("department_p_cd =", value, "departmentPCd");
            return (Criteria) this;
        }

        public Criteria andDepartmentPCdNotEqualTo(String value) {
            addCriterion("department_p_cd <>", value, "departmentPCd");
            return (Criteria) this;
        }

        public Criteria andDepartmentPCdGreaterThan(String value) {
            addCriterion("department_p_cd >", value, "departmentPCd");
            return (Criteria) this;
        }

        public Criteria andDepartmentPCdGreaterThanOrEqualTo(String value) {
            addCriterion("department_p_cd >=", value, "departmentPCd");
            return (Criteria) this;
        }

        public Criteria andDepartmentPCdLessThan(String value) {
            addCriterion("department_p_cd <", value, "departmentPCd");
            return (Criteria) this;
        }

        public Criteria andDepartmentPCdLessThanOrEqualTo(String value) {
            addCriterion("department_p_cd <=", value, "departmentPCd");
            return (Criteria) this;
        }

        public Criteria andDepartmentPCdLike(String value) {
            addCriterion("department_p_cd like", value, "departmentPCd");
            return (Criteria) this;
        }

        public Criteria andDepartmentPCdNotLike(String value) {
            addCriterion("department_p_cd not like", value, "departmentPCd");
            return (Criteria) this;
        }

        public Criteria andDepartmentPCdIn(List<String> values) {
            addCriterion("department_p_cd in", values, "departmentPCd");
            return (Criteria) this;
        }

        public Criteria andDepartmentPCdNotIn(List<String> values) {
            addCriterion("department_p_cd not in", values, "departmentPCd");
            return (Criteria) this;
        }

        public Criteria andDepartmentPCdBetween(String value1, String value2) {
            addCriterion("department_p_cd between", value1, value2, "departmentPCd");
            return (Criteria) this;
        }

        public Criteria andDepartmentPCdNotBetween(String value1, String value2) {
            addCriterion("department_p_cd not between", value1, value2, "departmentPCd");
            return (Criteria) this;
        }

        public Criteria andStatusIsNull() {
            addCriterion("`status` is null");
            return (Criteria) this;
        }

        public Criteria andStatusIsNotNull() {
            addCriterion("`status` is not null");
            return (Criteria) this;
        }

        public Criteria andStatusEqualTo(String value) {
            addCriterion("`status` =", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotEqualTo(String value) {
            addCriterion("`status` <>", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThan(String value) {
            addCriterion("`status` >", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThanOrEqualTo(String value) {
            addCriterion("`status` >=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThan(String value) {
            addCriterion("`status` <", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThanOrEqualTo(String value) {
            addCriterion("`status` <=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLike(String value) {
            addCriterion("`status` like", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotLike(String value) {
            addCriterion("`status` not like", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusIn(List<String> values) {
            addCriterion("`status` in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotIn(List<String> values) {
            addCriterion("`status` not in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusBetween(String value1, String value2) {
            addCriterion("`status` between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotBetween(String value1, String value2) {
            addCriterion("`status` not between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andSortKeyIsNull() {
            addCriterion("sort_key is null");
            return (Criteria) this;
        }

        public Criteria andSortKeyIsNotNull() {
            addCriterion("sort_key is not null");
            return (Criteria) this;
        }

        public Criteria andSortKeyEqualTo(Integer value) {
            addCriterion("sort_key =", value, "sortKey");
            return (Criteria) this;
        }

        public Criteria andSortKeyNotEqualTo(Integer value) {
            addCriterion("sort_key <>", value, "sortKey");
            return (Criteria) this;
        }

        public Criteria andSortKeyGreaterThan(Integer value) {
            addCriterion("sort_key >", value, "sortKey");
            return (Criteria) this;
        }

        public Criteria andSortKeyGreaterThanOrEqualTo(Integer value) {
            addCriterion("sort_key >=", value, "sortKey");
            return (Criteria) this;
        }

        public Criteria andSortKeyLessThan(Integer value) {
            addCriterion("sort_key <", value, "sortKey");
            return (Criteria) this;
        }

        public Criteria andSortKeyLessThanOrEqualTo(Integer value) {
            addCriterion("sort_key <=", value, "sortKey");
            return (Criteria) this;
        }

        public Criteria andSortKeyIn(List<Integer> values) {
            addCriterion("sort_key in", values, "sortKey");
            return (Criteria) this;
        }

        public Criteria andSortKeyNotIn(List<Integer> values) {
            addCriterion("sort_key not in", values, "sortKey");
            return (Criteria) this;
        }

        public Criteria andSortKeyBetween(Integer value1, Integer value2) {
            addCriterion("sort_key between", value1, value2, "sortKey");
            return (Criteria) this;
        }

        public Criteria andSortKeyNotBetween(Integer value1, Integer value2) {
            addCriterion("sort_key not between", value1, value2, "sortKey");
            return (Criteria) this;
        }

        public Criteria andDelFlagIsNull() {
            addCriterion("del_flag is null");
            return (Criteria) this;
        }

        public Criteria andDelFlagIsNotNull() {
            addCriterion("del_flag is not null");
            return (Criteria) this;
        }

        public Criteria andDelFlagEqualTo(String value) {
            addCriterion("del_flag =", value, "delFlag");
            return (Criteria) this;
        }

        public Criteria andDelFlagNotEqualTo(String value) {
            addCriterion("del_flag <>", value, "delFlag");
            return (Criteria) this;
        }

        public Criteria andDelFlagGreaterThan(String value) {
            addCriterion("del_flag >", value, "delFlag");
            return (Criteria) this;
        }

        public Criteria andDelFlagGreaterThanOrEqualTo(String value) {
            addCriterion("del_flag >=", value, "delFlag");
            return (Criteria) this;
        }

        public Criteria andDelFlagLessThan(String value) {
            addCriterion("del_flag <", value, "delFlag");
            return (Criteria) this;
        }

        public Criteria andDelFlagLessThanOrEqualTo(String value) {
            addCriterion("del_flag <=", value, "delFlag");
            return (Criteria) this;
        }

        public Criteria andDelFlagLike(String value) {
            addCriterion("del_flag like", value, "delFlag");
            return (Criteria) this;
        }

        public Criteria andDelFlagNotLike(String value) {
            addCriterion("del_flag not like", value, "delFlag");
            return (Criteria) this;
        }

        public Criteria andDelFlagIn(List<String> values) {
            addCriterion("del_flag in", values, "delFlag");
            return (Criteria) this;
        }

        public Criteria andDelFlagNotIn(List<String> values) {
            addCriterion("del_flag not in", values, "delFlag");
            return (Criteria) this;
        }

        public Criteria andDelFlagBetween(String value1, String value2) {
            addCriterion("del_flag between", value1, value2, "delFlag");
            return (Criteria) this;
        }

        public Criteria andDelFlagNotBetween(String value1, String value2) {
            addCriterion("del_flag not between", value1, value2, "delFlag");
            return (Criteria) this;
        }

        public Criteria andCreateGroupCdIsNull() {
            addCriterion("create_group_cd is null");
            return (Criteria) this;
        }

        public Criteria andCreateGroupCdIsNotNull() {
            addCriterion("create_group_cd is not null");
            return (Criteria) this;
        }

        public Criteria andCreateGroupCdEqualTo(String value) {
            addCriterion("create_group_cd =", value, "createGroupCd");
            return (Criteria) this;
        }

        public Criteria andCreateGroupCdNotEqualTo(String value) {
            addCriterion("create_group_cd <>", value, "createGroupCd");
            return (Criteria) this;
        }

        public Criteria andCreateGroupCdGreaterThan(String value) {
            addCriterion("create_group_cd >", value, "createGroupCd");
            return (Criteria) this;
        }

        public Criteria andCreateGroupCdGreaterThanOrEqualTo(String value) {
            addCriterion("create_group_cd >=", value, "createGroupCd");
            return (Criteria) this;
        }

        public Criteria andCreateGroupCdLessThan(String value) {
            addCriterion("create_group_cd <", value, "createGroupCd");
            return (Criteria) this;
        }

        public Criteria andCreateGroupCdLessThanOrEqualTo(String value) {
            addCriterion("create_group_cd <=", value, "createGroupCd");
            return (Criteria) this;
        }

        public Criteria andCreateGroupCdLike(String value) {
            addCriterion("create_group_cd like", value, "createGroupCd");
            return (Criteria) this;
        }

        public Criteria andCreateGroupCdNotLike(String value) {
            addCriterion("create_group_cd not like", value, "createGroupCd");
            return (Criteria) this;
        }

        public Criteria andCreateGroupCdIn(List<String> values) {
            addCriterion("create_group_cd in", values, "createGroupCd");
            return (Criteria) this;
        }

        public Criteria andCreateGroupCdNotIn(List<String> values) {
            addCriterion("create_group_cd not in", values, "createGroupCd");
            return (Criteria) this;
        }

        public Criteria andCreateGroupCdBetween(String value1, String value2) {
            addCriterion("create_group_cd between", value1, value2, "createGroupCd");
            return (Criteria) this;
        }

        public Criteria andCreateGroupCdNotBetween(String value1, String value2) {
            addCriterion("create_group_cd not between", value1, value2, "createGroupCd");
            return (Criteria) this;
        }

        public Criteria andCreateUserCdIsNull() {
            addCriterion("create_user_cd is null");
            return (Criteria) this;
        }

        public Criteria andCreateUserCdIsNotNull() {
            addCriterion("create_user_cd is not null");
            return (Criteria) this;
        }

        public Criteria andCreateUserCdEqualTo(String value) {
            addCriterion("create_user_cd =", value, "createUserCd");
            return (Criteria) this;
        }

        public Criteria andCreateUserCdNotEqualTo(String value) {
            addCriterion("create_user_cd <>", value, "createUserCd");
            return (Criteria) this;
        }

        public Criteria andCreateUserCdGreaterThan(String value) {
            addCriterion("create_user_cd >", value, "createUserCd");
            return (Criteria) this;
        }

        public Criteria andCreateUserCdGreaterThanOrEqualTo(String value) {
            addCriterion("create_user_cd >=", value, "createUserCd");
            return (Criteria) this;
        }

        public Criteria andCreateUserCdLessThan(String value) {
            addCriterion("create_user_cd <", value, "createUserCd");
            return (Criteria) this;
        }

        public Criteria andCreateUserCdLessThanOrEqualTo(String value) {
            addCriterion("create_user_cd <=", value, "createUserCd");
            return (Criteria) this;
        }

        public Criteria andCreateUserCdLike(String value) {
            addCriterion("create_user_cd like", value, "createUserCd");
            return (Criteria) this;
        }

        public Criteria andCreateUserCdNotLike(String value) {
            addCriterion("create_user_cd not like", value, "createUserCd");
            return (Criteria) this;
        }

        public Criteria andCreateUserCdIn(List<String> values) {
            addCriterion("create_user_cd in", values, "createUserCd");
            return (Criteria) this;
        }

        public Criteria andCreateUserCdNotIn(List<String> values) {
            addCriterion("create_user_cd not in", values, "createUserCd");
            return (Criteria) this;
        }

        public Criteria andCreateUserCdBetween(String value1, String value2) {
            addCriterion("create_user_cd between", value1, value2, "createUserCd");
            return (Criteria) this;
        }

        public Criteria andCreateUserCdNotBetween(String value1, String value2) {
            addCriterion("create_user_cd not between", value1, value2, "createUserCd");
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

        public Criteria andCreateDateEqualTo(String value) {
            addCriterion("create_date =", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateNotEqualTo(String value) {
            addCriterion("create_date <>", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateGreaterThan(String value) {
            addCriterion("create_date >", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateGreaterThanOrEqualTo(String value) {
            addCriterion("create_date >=", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateLessThan(String value) {
            addCriterion("create_date <", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateLessThanOrEqualTo(String value) {
            addCriterion("create_date <=", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateLike(String value) {
            addCriterion("create_date like", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateNotLike(String value) {
            addCriterion("create_date not like", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateIn(List<String> values) {
            addCriterion("create_date in", values, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateNotIn(List<String> values) {
            addCriterion("create_date not in", values, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateBetween(String value1, String value2) {
            addCriterion("create_date between", value1, value2, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateNotBetween(String value1, String value2) {
            addCriterion("create_date not between", value1, value2, "createDate");
            return (Criteria) this;
        }

        public Criteria andUpdateGroupCdIsNull() {
            addCriterion("update_group_cd is null");
            return (Criteria) this;
        }

        public Criteria andUpdateGroupCdIsNotNull() {
            addCriterion("update_group_cd is not null");
            return (Criteria) this;
        }

        public Criteria andUpdateGroupCdEqualTo(String value) {
            addCriterion("update_group_cd =", value, "updateGroupCd");
            return (Criteria) this;
        }

        public Criteria andUpdateGroupCdNotEqualTo(String value) {
            addCriterion("update_group_cd <>", value, "updateGroupCd");
            return (Criteria) this;
        }

        public Criteria andUpdateGroupCdGreaterThan(String value) {
            addCriterion("update_group_cd >", value, "updateGroupCd");
            return (Criteria) this;
        }

        public Criteria andUpdateGroupCdGreaterThanOrEqualTo(String value) {
            addCriterion("update_group_cd >=", value, "updateGroupCd");
            return (Criteria) this;
        }

        public Criteria andUpdateGroupCdLessThan(String value) {
            addCriterion("update_group_cd <", value, "updateGroupCd");
            return (Criteria) this;
        }

        public Criteria andUpdateGroupCdLessThanOrEqualTo(String value) {
            addCriterion("update_group_cd <=", value, "updateGroupCd");
            return (Criteria) this;
        }

        public Criteria andUpdateGroupCdLike(String value) {
            addCriterion("update_group_cd like", value, "updateGroupCd");
            return (Criteria) this;
        }

        public Criteria andUpdateGroupCdNotLike(String value) {
            addCriterion("update_group_cd not like", value, "updateGroupCd");
            return (Criteria) this;
        }

        public Criteria andUpdateGroupCdIn(List<String> values) {
            addCriterion("update_group_cd in", values, "updateGroupCd");
            return (Criteria) this;
        }

        public Criteria andUpdateGroupCdNotIn(List<String> values) {
            addCriterion("update_group_cd not in", values, "updateGroupCd");
            return (Criteria) this;
        }

        public Criteria andUpdateGroupCdBetween(String value1, String value2) {
            addCriterion("update_group_cd between", value1, value2, "updateGroupCd");
            return (Criteria) this;
        }

        public Criteria andUpdateGroupCdNotBetween(String value1, String value2) {
            addCriterion("update_group_cd not between", value1, value2, "updateGroupCd");
            return (Criteria) this;
        }

        public Criteria andUpdateUserCdIsNull() {
            addCriterion("update_user_cd is null");
            return (Criteria) this;
        }

        public Criteria andUpdateUserCdIsNotNull() {
            addCriterion("update_user_cd is not null");
            return (Criteria) this;
        }

        public Criteria andUpdateUserCdEqualTo(String value) {
            addCriterion("update_user_cd =", value, "updateUserCd");
            return (Criteria) this;
        }

        public Criteria andUpdateUserCdNotEqualTo(String value) {
            addCriterion("update_user_cd <>", value, "updateUserCd");
            return (Criteria) this;
        }

        public Criteria andUpdateUserCdGreaterThan(String value) {
            addCriterion("update_user_cd >", value, "updateUserCd");
            return (Criteria) this;
        }

        public Criteria andUpdateUserCdGreaterThanOrEqualTo(String value) {
            addCriterion("update_user_cd >=", value, "updateUserCd");
            return (Criteria) this;
        }

        public Criteria andUpdateUserCdLessThan(String value) {
            addCriterion("update_user_cd <", value, "updateUserCd");
            return (Criteria) this;
        }

        public Criteria andUpdateUserCdLessThanOrEqualTo(String value) {
            addCriterion("update_user_cd <=", value, "updateUserCd");
            return (Criteria) this;
        }

        public Criteria andUpdateUserCdLike(String value) {
            addCriterion("update_user_cd like", value, "updateUserCd");
            return (Criteria) this;
        }

        public Criteria andUpdateUserCdNotLike(String value) {
            addCriterion("update_user_cd not like", value, "updateUserCd");
            return (Criteria) this;
        }

        public Criteria andUpdateUserCdIn(List<String> values) {
            addCriterion("update_user_cd in", values, "updateUserCd");
            return (Criteria) this;
        }

        public Criteria andUpdateUserCdNotIn(List<String> values) {
            addCriterion("update_user_cd not in", values, "updateUserCd");
            return (Criteria) this;
        }

        public Criteria andUpdateUserCdBetween(String value1, String value2) {
            addCriterion("update_user_cd between", value1, value2, "updateUserCd");
            return (Criteria) this;
        }

        public Criteria andUpdateUserCdNotBetween(String value1, String value2) {
            addCriterion("update_user_cd not between", value1, value2, "updateUserCd");
            return (Criteria) this;
        }

        public Criteria andUpdateDateIsNull() {
            addCriterion("update_date is null");
            return (Criteria) this;
        }

        public Criteria andUpdateDateIsNotNull() {
            addCriterion("update_date is not null");
            return (Criteria) this;
        }

        public Criteria andUpdateDateEqualTo(String value) {
            addCriterion("update_date =", value, "updateDate");
            return (Criteria) this;
        }

        public Criteria andUpdateDateNotEqualTo(String value) {
            addCriterion("update_date <>", value, "updateDate");
            return (Criteria) this;
        }

        public Criteria andUpdateDateGreaterThan(String value) {
            addCriterion("update_date >", value, "updateDate");
            return (Criteria) this;
        }

        public Criteria andUpdateDateGreaterThanOrEqualTo(String value) {
            addCriterion("update_date >=", value, "updateDate");
            return (Criteria) this;
        }

        public Criteria andUpdateDateLessThan(String value) {
            addCriterion("update_date <", value, "updateDate");
            return (Criteria) this;
        }

        public Criteria andUpdateDateLessThanOrEqualTo(String value) {
            addCriterion("update_date <=", value, "updateDate");
            return (Criteria) this;
        }

        public Criteria andUpdateDateLike(String value) {
            addCriterion("update_date like", value, "updateDate");
            return (Criteria) this;
        }

        public Criteria andUpdateDateNotLike(String value) {
            addCriterion("update_date not like", value, "updateDate");
            return (Criteria) this;
        }

        public Criteria andUpdateDateIn(List<String> values) {
            addCriterion("update_date in", values, "updateDate");
            return (Criteria) this;
        }

        public Criteria andUpdateDateNotIn(List<String> values) {
            addCriterion("update_date not in", values, "updateDate");
            return (Criteria) this;
        }

        public Criteria andUpdateDateBetween(String value1, String value2) {
            addCriterion("update_date between", value1, value2, "updateDate");
            return (Criteria) this;
        }

        public Criteria andUpdateDateNotBetween(String value1, String value2) {
            addCriterion("update_date not between", value1, value2, "updateDate");
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