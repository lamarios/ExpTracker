/*
 * This file is generated by jOOQ.
 */
package com.ftpix.sss.dsl.tables.records;


import com.ftpix.sss.dsl.tables.Expense;

import org.jooq.Field;
import org.jooq.Record1;
import org.jooq.Record11;
import org.jooq.Row11;
import org.jooq.impl.UpdatableRecordImpl;


/**
 * This class is generated by jOOQ.
 */
@SuppressWarnings({ "all", "unchecked", "rawtypes" })
public class ExpenseRecord extends UpdatableRecordImpl<ExpenseRecord> implements Record11<Long, Double, Long, String, Integer, Byte, Double, Double, String, String, Long> {

    private static final long serialVersionUID = 1L;

    /**
     * Setter for <code>sss.EXPENSE.ID</code>.
     */
    public void setId(Long value) {
        set(0, value);
    }

    /**
     * Getter for <code>sss.EXPENSE.ID</code>.
     */
    public Long getId() {
        return (Long) get(0);
    }

    /**
     * Setter for <code>sss.EXPENSE.AMOUNT</code>.
     */
    public void setAmount(Double value) {
        set(1, value);
    }

    /**
     * Getter for <code>sss.EXPENSE.AMOUNT</code>.
     */
    public Double getAmount() {
        return (Double) get(1);
    }

    /**
     * Setter for <code>sss.EXPENSE.CATEGORY_ID</code>.
     */
    public void setCategoryId(Long value) {
        set(2, value);
    }

    /**
     * Getter for <code>sss.EXPENSE.CATEGORY_ID</code>.
     */
    public Long getCategoryId() {
        return (Long) get(2);
    }

    /**
     * Setter for <code>sss.EXPENSE.DATE</code>.
     */
    public void setDate(String value) {
        set(3, value);
    }

    /**
     * Getter for <code>sss.EXPENSE.DATE</code>.
     */
    public String getDate() {
        return (String) get(3);
    }

    /**
     * Setter for <code>sss.EXPENSE.TYPE</code>.
     */
    public void setType(Integer value) {
        set(4, value);
    }

    /**
     * Getter for <code>sss.EXPENSE.TYPE</code>.
     */
    public Integer getType() {
        return (Integer) get(4);
    }

    /**
     * Setter for <code>sss.EXPENSE.INCOME</code>.
     */
    public void setIncome(Byte value) {
        set(5, value);
    }

    /**
     * Getter for <code>sss.EXPENSE.INCOME</code>.
     */
    public Byte getIncome() {
        return (Byte) get(5);
    }

    /**
     * Setter for <code>sss.EXPENSE.LATITUDE</code>.
     */
    public void setLatitude(Double value) {
        set(6, value);
    }

    /**
     * Getter for <code>sss.EXPENSE.LATITUDE</code>.
     */
    public Double getLatitude() {
        return (Double) get(6);
    }

    /**
     * Setter for <code>sss.EXPENSE.LONGITUDE</code>.
     */
    public void setLongitude(Double value) {
        set(7, value);
    }

    /**
     * Getter for <code>sss.EXPENSE.LONGITUDE</code>.
     */
    public Double getLongitude() {
        return (Double) get(7);
    }

    /**
     * Setter for <code>sss.EXPENSE.NOTE</code>.
     */
    public void setNote(String value) {
        set(8, value);
    }

    /**
     * Getter for <code>sss.EXPENSE.NOTE</code>.
     */
    public String getNote() {
        return (String) get(8);
    }

    /**
     * Setter for <code>sss.EXPENSE.TIME</code>.
     */
    public void setTime(String value) {
        set(9, value);
    }

    /**
     * Getter for <code>sss.EXPENSE.TIME</code>.
     */
    public String getTime() {
        return (String) get(9);
    }

    /**
     * Setter for <code>sss.EXPENSE.TIMESTAMP</code>.
     */
    public void setTimestamp(Long value) {
        set(10, value);
    }

    /**
     * Getter for <code>sss.EXPENSE.TIMESTAMP</code>.
     */
    public Long getTimestamp() {
        return (Long) get(10);
    }

    // -------------------------------------------------------------------------
    // Primary key information
    // -------------------------------------------------------------------------

    @Override
    public Record1<Long> key() {
        return (Record1) super.key();
    }

    // -------------------------------------------------------------------------
    // Record11 type implementation
    // -------------------------------------------------------------------------

    @Override
    public Row11<Long, Double, Long, String, Integer, Byte, Double, Double, String, String, Long> fieldsRow() {
        return (Row11) super.fieldsRow();
    }

    @Override
    public Row11<Long, Double, Long, String, Integer, Byte, Double, Double, String, String, Long> valuesRow() {
        return (Row11) super.valuesRow();
    }

    @Override
    public Field<Long> field1() {
        return Expense.EXPENSE.ID;
    }

    @Override
    public Field<Double> field2() {
        return Expense.EXPENSE.AMOUNT;
    }

    @Override
    public Field<Long> field3() {
        return Expense.EXPENSE.CATEGORY_ID;
    }

    @Override
    public Field<String> field4() {
        return Expense.EXPENSE.DATE;
    }

    @Override
    public Field<Integer> field5() {
        return Expense.EXPENSE.TYPE;
    }

    @Override
    public Field<Byte> field6() {
        return Expense.EXPENSE.INCOME;
    }

    @Override
    public Field<Double> field7() {
        return Expense.EXPENSE.LATITUDE;
    }

    @Override
    public Field<Double> field8() {
        return Expense.EXPENSE.LONGITUDE;
    }

    @Override
    public Field<String> field9() {
        return Expense.EXPENSE.NOTE;
    }

    @Override
    public Field<String> field10() {
        return Expense.EXPENSE.TIME;
    }

    @Override
    public Field<Long> field11() {
        return Expense.EXPENSE.TIMESTAMP;
    }

    @Override
    public Long component1() {
        return getId();
    }

    @Override
    public Double component2() {
        return getAmount();
    }

    @Override
    public Long component3() {
        return getCategoryId();
    }

    @Override
    public String component4() {
        return getDate();
    }

    @Override
    public Integer component5() {
        return getType();
    }

    @Override
    public Byte component6() {
        return getIncome();
    }

    @Override
    public Double component7() {
        return getLatitude();
    }

    @Override
    public Double component8() {
        return getLongitude();
    }

    @Override
    public String component9() {
        return getNote();
    }

    @Override
    public String component10() {
        return getTime();
    }

    @Override
    public Long component11() {
        return getTimestamp();
    }

    @Override
    public Long value1() {
        return getId();
    }

    @Override
    public Double value2() {
        return getAmount();
    }

    @Override
    public Long value3() {
        return getCategoryId();
    }

    @Override
    public String value4() {
        return getDate();
    }

    @Override
    public Integer value5() {
        return getType();
    }

    @Override
    public Byte value6() {
        return getIncome();
    }

    @Override
    public Double value7() {
        return getLatitude();
    }

    @Override
    public Double value8() {
        return getLongitude();
    }

    @Override
    public String value9() {
        return getNote();
    }

    @Override
    public String value10() {
        return getTime();
    }

    @Override
    public Long value11() {
        return getTimestamp();
    }

    @Override
    public ExpenseRecord value1(Long value) {
        setId(value);
        return this;
    }

    @Override
    public ExpenseRecord value2(Double value) {
        setAmount(value);
        return this;
    }

    @Override
    public ExpenseRecord value3(Long value) {
        setCategoryId(value);
        return this;
    }

    @Override
    public ExpenseRecord value4(String value) {
        setDate(value);
        return this;
    }

    @Override
    public ExpenseRecord value5(Integer value) {
        setType(value);
        return this;
    }

    @Override
    public ExpenseRecord value6(Byte value) {
        setIncome(value);
        return this;
    }

    @Override
    public ExpenseRecord value7(Double value) {
        setLatitude(value);
        return this;
    }

    @Override
    public ExpenseRecord value8(Double value) {
        setLongitude(value);
        return this;
    }

    @Override
    public ExpenseRecord value9(String value) {
        setNote(value);
        return this;
    }

    @Override
    public ExpenseRecord value10(String value) {
        setTime(value);
        return this;
    }

    @Override
    public ExpenseRecord value11(Long value) {
        setTimestamp(value);
        return this;
    }

    @Override
    public ExpenseRecord values(Long value1, Double value2, Long value3, String value4, Integer value5, Byte value6, Double value7, Double value8, String value9, String value10, Long value11) {
        value1(value1);
        value2(value2);
        value3(value3);
        value4(value4);
        value5(value5);
        value6(value6);
        value7(value7);
        value8(value8);
        value9(value9);
        value10(value10);
        value11(value11);
        return this;
    }

    // -------------------------------------------------------------------------
    // Constructors
    // -------------------------------------------------------------------------

    /**
     * Create a detached ExpenseRecord
     */
    public ExpenseRecord() {
        super(Expense.EXPENSE);
    }

    /**
     * Create a detached, initialised ExpenseRecord
     */
    public ExpenseRecord(Long id, Double amount, Long categoryId, String date, Integer type, Byte income, Double latitude, Double longitude, String note, String time, Long timestamp) {
        super(Expense.EXPENSE);

        setId(id);
        setAmount(amount);
        setCategoryId(categoryId);
        setDate(date);
        setType(type);
        setIncome(income);
        setLatitude(latitude);
        setLongitude(longitude);
        setNote(note);
        setTime(time);
        setTimestamp(timestamp);
    }
}