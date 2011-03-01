require 'pathname'
require 'database_cleaner'

require File.join(Pathname(__FILE__).dirname.expand_path, '../lib/active_record_csv')

# load schema.
require 'schema'

DatabaseCleaner.strategy = :truncation

# require support .rb files.
Dir[File.expand_path("../support/**/*.rb", __FILE__)].each {|f| require f}

RSpec.configure do |config|
  config.include Macros
  config.before do
    DatabaseCleaner.clean
  end
end
