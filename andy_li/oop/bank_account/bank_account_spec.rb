require_relative "bank_account"

RSpec.describe BankAccount do
  before(:each) do
    # updated this block to create two projects
    @bank_acct1 = BankAccount.new
    @bank_acct1.deposit(100, 200)
  end

  describe "Bank Account attributes" do
    it "has a getter method to retrieve checking account balance" do
      expect(@bank_acct1.chk_amt).to eq(100)
    end

    it "has a getter method to retrieve total account balance" do
      expect(@bank_acct1.get_ttl_amt).to eq("Total balance: 300")
    end

    it "raises error when user attempts to set interest rate" do
      expect{@bank_acct1.int_rate = 0.10}.to raise_error(NoMethodError)
    end
  end

  describe "Bank Account methods" do
    it "has a method withdraw that allows user to withdraw from checking amount and/or savings amount" do
      @bank_acct1.withdraw(50,30)
      expect(@bank_acct1.chk_amt).to eq(50)
      expect(@bank_acct1.sav_amt).to eq(170)
    end

    it "can't withdraw more than amount in checking and/or savings amount" do
      @bank_acct1.withdraw(300, 300)
      expect{raise StandardError, "Insufficient funds in checking account."}.to raise_error("Insufficient funds in checking account.")
      expect{raise StandardError, "Insufficient funds in savings account."}.to raise_error("Insufficient funds in savings account.")
    end

    it "raises error when user attempts to retrive total number of bank accounts" do
      expect{@bank_acct1.get_num_accts}.to raise_error(NoMethodError)
    end
  end

end
