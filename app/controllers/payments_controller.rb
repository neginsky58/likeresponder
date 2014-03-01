class PaymentsController < ApplicationController
  
  def monthly_plan

    @contact = Infusionsoft.contact_add({:FirstName=>'Yev2', :LastName=>'Neg2', :_StripeID =>'cus_2123ADS12312'})
    @contact = Infusionsoft.contact_load(@contact.to_i, [:FirstName, :LastName, :_StripeID])
    
  end
  
  def quarterly_plan
  end

  def annual_plan

    @contact = Infusionsoft.data_load('Contact', 190, [:FirstName, :LastName])
    #Infusionsoft.contact_update(190,{ :FirstName => 'Yevgeny', :Email => 'yevgeny@test.com', :_StripeID =>'stripeid test' })
    #@contact = Infusionsoft.data_load('Contact', 190, [:FirstName, :LastName, :StripeID])
    @customfield1 = Infusionsoft.data_query('Contact', 1, 0, {:Id=>190}, [:_StripID])
    #Infusionsoft.data_update_custom_field('_StripeID', {'190'  => '123123'})
    @customfield2 = Infusionsoft.data_query('DataFormField', 1, 0, {:Values=>'Test stripe id'}, [:Id])

  end

  def update_creditcard
  end
  def index
  end
  
end
