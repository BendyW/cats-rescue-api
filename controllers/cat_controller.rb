class CatController < ApplicationController

  get '/' do
    Cat.all.to_json
  end
  get '/:id' do
    @id = params[:id]
    Cat.find(@id).to_json
  end
  post '/' do

    @id = params[:id]
    @name = params[:name]
    @note = params[:note]
    @img = params[:img]
    @model = Cat.new
    @model.name = @name
    @model.note = @note
    @model.img = @img
    @model.save
    @model.to_json
  end
  patch '/:id' do
    @id = params[:id]
    @name = params[:name]
    @note = params[:note]
    @img = params[:img]
    @model = Cat.find(@id)
    @id = params[:id]
    @name = params[:name]
    @note = params[:note]
    @img = params[:img]
    @model.save
    @model.to_json
  end
  delete '/:id' do
    @id = params[:id]
    @model = Cat.find(@id)
    @model.destroy
    {:message => "Row at id: " + @id + " has been removed"}.to_json
  end

end