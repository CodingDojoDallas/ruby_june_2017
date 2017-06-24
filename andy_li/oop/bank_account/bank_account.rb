class BankAccount
  attr_reader :acct_num, :chk_amt, :sav_amt
  @@bank_accts = 0

  def initialize()
    @@bank_accts += 1
    @acct_num = gen_acct_num()
    @chk_amt = 0
    @sav_amt = 0
    @int_rate = 0.01
  end

  def deposit(d_chk=0, d_sav=0)
    @chk_amt += d_chk
    @sav_amt += d_sav
    return self
  end

  def withdraw(w_chk=0, w_sav=0)
    if @chk_amt - w_chk > 0
      @chk_amt -= w_chk
    else
      p "Insufficient funds in checking account."
    end

    if @sav_amt - w_sav > 0
      @sav_amt -= w_sav
    else
      p "Insufficient funds in saving account."
    end
    return self
  end

  def get_ttl_amt()
    p "Total balance: #{@chk_amt + @sav_amt}"
    # return self
  end

  def self.get_num_accts()
    return @@bank_accts
  end

  def acct_info()
    p "Account number: #{@acct_num}"
    p "Total amount: #{@chk_amt + @sav_amt}"
    p "Checking amount: #{@chk_amt}"
    p "Saving amount: #{@sav_amt}"
    p "Interest rate: #{@int_rate}"
    return self
  end


  private
    attr_reader :int_rate

    def gen_acct_num()
      return rand(1..1000000)
    end

end

# my_acct = BankAccount.new
# my_acct.deposit(100, 50).withdraw(30, 20).acct_info
# my_acct.get_num_accts
