class ContactsController < ApplicationController

    def show
      @place = Place.find(params["id"])
    end
  
    def new
      @place = Place.new
      end
  
    def create
      @place = Place.new(params["place"])
      @place.save
      redirect_to "/posts/#{@posts.place.id}"
    end
  
  end
  