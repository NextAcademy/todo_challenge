require 'pathname'
require 'sqlite3'
require 'active_record'
require 'logger'

# Declaring constants
APP_ROOT = Pathname.new(File.expand_path(File.join(File.dirname(__FILE__), '..')))
APP_NAME = APP_ROOT.basename.to_s
DB_PATH  = APP_ROOT.join('db', APP_NAME + ".db").to_s
ActiveRecord::Base.logger = Logger.new(STDOUT) if ENV['DEBUG']


# Basic Setup

# Auto-load all models
Dir[APP_ROOT.join('app', 'models', '*.rb')].each { |file| require file }

# Establish database connection
ActiveRecord::Base.establish_connection :adapter  => 'sqlite3',
                                        :database => DB_PATH
