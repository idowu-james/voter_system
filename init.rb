APP_ROOT = File.dirname(__FILE__)

$:.unshift(File.join(APP_ROOT))
require 'lib/default_controller'

start = DefaultController.new