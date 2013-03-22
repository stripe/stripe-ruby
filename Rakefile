task :default => [:all]

task :test do
  ret = true
  Dir["test/**/*_test.rb"].each do |f|
    ret = ret && ruby(f, '')
  end
end

task :all do
  Rake::Task["test"].invoke
  require 'active_support/all'
  Rake::Task["test"].reenable
  Rake::Task["test"].invoke
end