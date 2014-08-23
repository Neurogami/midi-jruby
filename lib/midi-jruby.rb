require 'java'
require 'forwardable' 

#
# Set of modules and classes for interacting with javax.sound.midi
#
module MIDIJRuby
    VERSION = "0.1.0"
end

$:.unshift File.expand_path(File.dirname(__FILE__))
require 'midi-jruby/device'
require 'midi-jruby/input'
require 'midi-jruby/output'