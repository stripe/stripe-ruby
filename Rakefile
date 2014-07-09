task :default => [:all]

def self.dash_r(filenames)
  filenames.map { |name| "-r #{name}" }.join(" ")
end

def self.run_tests(*filenames_to_require)
  sh "ruby -rbundler/setup"                      +# add Bundler
         " -I lib"                               +# put lib into the load path
         " #{dash_r filenames_to_require}"       +# the passed in files to require
         " #{dash_r Dir["./test/**/*_test.rb"]}" +# load tests by requiring their files
         " -e ''"                                 # no runner file
end

desc 'Runs the tests'
task :test do
  run_tests
end

desc 'Runs the tests with and without ActiveSupport'
task :all do
  run_tests
  run_tests 'active_support/all'
end
