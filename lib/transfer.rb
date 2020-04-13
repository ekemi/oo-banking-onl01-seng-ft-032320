
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

  if @sender.balance > @transfer_amount && @status =="pending"
    @sender.balance -=@transfer_amount
    @receiver.amount+=@transfer_amount
    @status = "complete"

  else

    @status = "rejected"
    return "Transaction rejected.Please check your account again."
  end
end

def reverse_transfer
if @status =="complete"
   @sender.balane -=@transfer_amount
   @receiver.balance+=@transfer_amount
   @status="reversed"
end
end

end
