require 'rake'
require 'rake/testtask'

begin
  require 'bones'
rescue LoadError
  abort '### Please install the "bones" gem ###'
end

task :default => 'test:run'
task 'gem:release' => 'test:run'

require './lib/midi-jruby.rb'

Bones {
  name     'midi-jruby'
  authors  'Ari Russo, later hacked up by James Britt / Neurogami'
  email    'james@neurogami.com'
  url      'http://code.neurogami.com'
  description "Simple MIDI wrapper for realtime IO in JRuby. Uses javax.sound.midi." 
  version MIDIJRuby::VERSION # "0.1.0"  
  exclude %w{ .git .__ .bnsignore .gitignore }
  gem.need_tar false
}



Rake::TestTask.new(:test) do |t|

  t.libs << "test"
  t.test_files = FileList["test/**/test_*.rb"]
  t.verbose = true
end

task :default => [:test]

