class Transfer
  # your code here
  def deposit(dep)

    @balance = @balance + dep
  end

  def display_balance

   "Your balane is #{@balance}"
  end

  def valid?
valid = (@status =="open"&& @balance > 0)? true : false
  end

   def close_account
    @status = "closed"
   end
end

# p = BankAccount.new("hellp")
# p.close_account



class Transfer
  attr_accessor :sender, :receiver,:transfer_amount, :status

def initialize(sender,receiver, transfer_amount)

  #@transfer = transfer
  @sender = sender
  @receiver = receiver
  @status= "pending"
  @transfer_amout = transfer_amount

end
def valid?
  @receiver.valid? && @sender.valid? ? true : false

end

def execute_transaction

  if @sender.balance > @amount && @status =="pending"
    @sender.balance -=@amount
    @receiver.amount+=@amount
    @status = "complete"

  else

    @status = "rejected"
    return "Transaction rejected.Please check your account again."
  end
end

def reverse_transfer
if @status =="complete"
   @sender.balane -=@amount
   @receiver.balance+=@amount
   @status="reversed"
end
end

end
