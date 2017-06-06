

class Account
#  attr_reader :accountNumber, :chBalance, :svBalance

  @@accounts = 0
  def initialize
    accountInit
  end
  def numberDisplay
    puts @accountNumber
  end

  def chBalanceDisplay
    puts "Checking Balance: $#{@chBalance}"
  end
  def svBalanceDisplay
    puts "Savings Balance: $#{@svBalance}"
  end

  def chDeposit(amt)
    @chBalance += (amt)
    self
  end
  def svDeposit(amt)
    @svBalance += (amt)
    self
  end

  def chWithdraw(amt)
    if amt <= @chBalance
      @chBalance -= (amt)
      puts "Withdraw: $#{amt}"
    else
      puts "Error, insufficient funds available."
    end
    self
  end
  def svWithdraw(amt)
    if amt <= @svBalance
      @svBalance -= (amt)
      puts "Withdraw: $#{amt}"
    else
      puts "Error, insufficient funds available."
    end
    self
  end

  def fundsDisplay
    total = @chBalance + @svBalance
    puts "Total Balance: $#{total}"
  end

  def accountsNumeric
    puts @@accounts
  end

  def fullDisplay
    self.numberDisplay
    self.chBalanceDisplay
    self.svBalanceDisplay
    self.fundsDisplay
    puts "Interest Rate: #{@interestRate}"
  end


  private
    def accountInit
      digits = [1,2,3,4,5,6,7,8,9,0]
      @accountNumber  = digits.shuffle.slice(0, 9).join
      @chBalance = 800
      @svBalance = 2200
      @interestRate = 0.01
      @@accounts += 1
      self
    end

end

account01 = Account.new()
account01.accountsNumeric
