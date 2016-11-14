require 'sinatra/base'

require './controllers/application_controller'
require './controllers/cat_controller'

require './models/cat'


map ('/api') { run ApplicationController}
map ('/api/cats') {run CatController}
