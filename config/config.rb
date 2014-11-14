require 'pathname'
require 'sqlite3'
require 'active_record'
require 'logger'
require 'hirb'
require 'faker'
require 'csv'
# require_relative '../db/controllers/controller'


Hirb.enable

APP_ROOT = Pathname.new(File.expand_path(File.join(File.dirname(__FILE__), '..')))
APP_NAME = APP_ROOT.basename.to_s

DB_PATH  = APP_ROOT.join('db', 'ar-main.sqlite3').to_s

if ENV['DEBUG']
  ActiveRecord::Base.logger = Logger.new(STDOUT)
end

#Autoloads every model defined in the "models" folder
Dir[APP_ROOT.join('db', 'models', '*.rb')].each do |model_file|
  filename = File.basename(model_file).gsub('.rb', '')
  autoload ActiveSupport::Inflector.camelize(filename), model_file
end

ActiveRecord::Base.establish_connection :adapter  => 'sqlite3',
                                        :database => DB_PATH
