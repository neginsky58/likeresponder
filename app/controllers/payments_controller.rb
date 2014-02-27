class PaymentsController < ApplicationController
  
  def monthly_plan
    
    @contact = Infusionsoft.data_load('Contact', 190, [:FirstName, :LastName])
    #Infusionsoft.contact_update(190,{ :FirstName => 'Yevgeny', :Email => 'yevgeny@test.com', :_StripeID =>'stripeid test' })
    #@contact = Infusionsoft.data_load('Contact', 190, [:FirstName, :LastName, :StripeID])
    @customfield1 = Infusionsoft.data_query('Contact', 1, 0, {:Id=>190}, [:_StripID])
    Infusionsoft.data_update_custom_field(190, {:_StripeID => 123123})
    @customfield2 = Infusionsoft.data_query('Contact', 1, 0, {:Id=>190}, [:_StripID])
  end
  
  def quarterly_plan
  end

  def annual_plan
  end

  def update_creditcard
  end
end
