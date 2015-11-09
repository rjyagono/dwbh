# Load DSL and set up stages
require 'capistrano/setup'

# Include default deployment tasks
require 'capistrano/deploy'
require 'capistrano/rails'
require 'capistrano/bundler'
require 'capistrano/rails/assets'
require 'capistrano/rails/migrations'
require 'capistrano/faster_assets'

require 'capistrano/rvm'
require 'capistrano/puma'
require 'capistrano/puma/workers'
require 'capistrano/puma/nginx'
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }