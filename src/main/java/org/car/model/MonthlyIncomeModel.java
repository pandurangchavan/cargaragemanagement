package org.car.model;
public class MonthlyIncomeModel {
    private double totalIncome;

    public MonthlyIncomeModel(double totalIncome) {
        this.totalIncome = totalIncome;
    }

    public double getTotalIncome() {
        return totalIncome;
    }

    public void setTotalIncome(double totalIncome) {
        this.totalIncome = totalIncome;
    }
}
