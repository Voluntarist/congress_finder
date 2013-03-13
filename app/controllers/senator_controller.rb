class SenatorController < ApplicationController

  def show
  end

  #build your query function here.
  def result
    #putting together a URL for the query
    # state = params[:state].upcase
    # chamber = params[:chamber].downcase


      zip = params[:zip].to_i
    # url = "http://congress.api.sunlightfoundation.com/legislators?apikey=d8d6e8befe3040db84964d42e1d5787d&state=#{state}&chamber=#{chamber}&per_page=150"

      url2 = "http://congress.api.sunlightfoundation.com/legislators/locate/?apikey=d8d6e8befe3040db84964d42e1d5787d&zip=#{zip}"

    #make the request and save the response
      json = HTTParty.get(url2)


    #get the hash of senators out of the response. Save it as an instance variable
      @rs = json["results"]
      redirect_to('/') if @rs.empty?
  end
end
