class CitiesController < ApplicationController

  def index
    cities = City.select('id, name').where('country_id = ?', params['country_id'])
    @data = ""
    cities.each do |city|
      @data += "<option value=\"#{city.id}\">#{city.name}</option>" unless city.name.blank?
    end
    respond_to do |format|  
      format.json { render :text => @data, status: :ok}
    end    
  end
end