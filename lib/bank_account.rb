
class BankAccount
    attr_reader :name
    attr_accessor :balance,:status

    def initialize(bank_name)
        @name= bank_name
        @balance = 1000
        @status = "open"
    end


    def deposit(dep)

      @balance = @balance + dep
    end

    def display_balance

     "Your balance is $#{@balance}."
    end

    def valid?
       valid = (@status =="open"&& @balance > 0)? true : false
    end

     def close_account
      @status = "closed"
     end
  end
