class PaymentsController < ApplicationController
  
  def monthly_plan
    @contact = Infusionsoft.data_load('Contact', 12, [:FirstName, :LastName])
  end
  
  def quarterly_plan
  end

  def annual_plan
  end

  def update_creditcard
  end
end
