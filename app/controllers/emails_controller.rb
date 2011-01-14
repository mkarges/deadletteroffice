class EmailsController < ApplicationController
  respond_to :html, :xml
  
  def new
    @email = Email.new
    respond_with(@email)
  end
  
  def create
    @email = Email.new(params[:email])
    if @email.save
      flash[:success] = "Email will be sent on :date"
      render :thanks
    else
      render :new
    end
  end
  
  def thanks
    respond_with @email
  end
    
end
