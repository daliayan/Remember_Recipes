require './config/environment'


use Rack::MethodOverride
run ApplicationController
use RecipeController
use UserController