class ApplicationController < Sinatra::Base

  require 'bundler'
  Bundler.require

  ActiveRecord::Base.establish_connection(
      :adapter => 'mysql2',
      :database=> 'cats'
  )

end