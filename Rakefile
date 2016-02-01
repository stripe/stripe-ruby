require 'rake/testtask'

task :default => [:test]

Rake::TestTask.new do |t|
  t.pattern = './test/**/*_test.rb'
end

desc "update bundled certs"
task :update_certs do
  require "restclient"
  File.open(File.join(File.dirname(__FILE__), 'lib', 'data', 'ca-certificates.crt'), 'w') do |file|
    resp = RestClient.get "https://raw.githubusercontent.com/bagder/ca-bundle/master/ca-bundle.crt"
    abort("bad response when fetching bundle") unless resp.code == 200
    file.write(resp.to_str)
  end
end
