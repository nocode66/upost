class PeopleController < ApplicationController

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)
    if params['confirmed']
      if @person.save
        PeopleMailer.welcome_email(@person).deliver
        render :thank_you
      else
        render :new
      end
    else
      if @person.valid?
        render :show
      else 
        render :new
      end
    end
  end

  def show
  end

  def thank_you
  end


  private
  def person_params
    params.require(:person).permit(:first_name, :last_name, :email, :email_confirmation, :country_id, :city_id)
  end
end
