
class Transfer
  attr_accessor :sender, :receiver,:amount, :status

def initialize(sender,receiver,amount)

  #@transfer = transfer
  @sender = sender
  @receiver = receiver
  @status= "pending"
  @amount = 50

end
def valid?
  @receiver.valid? && @sender.valid? ? true : false

end

def execute_transaction

  if @sender.balance > @amount && @status =="pending"
    @sender.balance -=@amount
    @receiver.balance +=@amount
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
