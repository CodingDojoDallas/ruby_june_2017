class BankAccount
	attr_reader :account_num, :chk_bal, :sav_bal
	@@no_of_accts = 0

	def initialize
		@@no_of_accts += 1
		create_account_number
		@chk_bal = 0
		@sav_bal = 0
		@interest_rate = 0.01
	end


	def check_chk_bal
		puts "checking balance: #{@chk_bal}"
		return self
	end

	def check_savings_bal
		puts "savings balance: #{@sav_bal}"
		return self
	end

	def check_total_bal
		total = @chk_bal + @sav_bal
		puts "total balance: #{total}"
		return self
	end

	def show_account_number
		puts "account number: #{@account_num}"
		return self
	end

	def deposit(checking_amt=0, savings_amt=0)
		@chk_bal += checking_amt
		@sav_bal += savings_amt
		return self
	end

	def withdraw(checking_amt=0,savings_amt=0 )
		if @chk_bal - checking_amt < 0
			p "insufficient funds"
		else
			@chk_bal -= checking_amt
		end

		if @sav_bal - savings_amt < 0
			p "insufficient funds"
		else
			@sav_bal -+ savings_amt
		end
		return self
	end	

	def show_account_info
		show_account_number
		check_total_bal
		check_chk_bal
		check_savings_bal
		puts "interest rate: #{@interest_rate}"
		return self
	end
	
	private
	def create_account_number
		@account_num = rand(100..1000)
		return self
	end
end

myAcct = BankAccount.new
puts myAcct.deposit(10,23).withdraw(0, 2).deposit(5,6).check_total_bal
