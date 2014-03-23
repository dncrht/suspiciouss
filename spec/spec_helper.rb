require 'rubygems'
require 'bundler/setup'
require 'pry-debugger'

$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'suspiciouss'
