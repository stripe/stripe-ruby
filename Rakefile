# frozen_string_literal: true

require "rake/testtask"
require "rubocop/rake_task"

task default: %i[test rubocop]

Rake::TestTask.new do |t|
  t.pattern = "./test/**/*_test.rb"
end

RuboCop::RakeTask.new

desc "Update bundled certs"
task :update_certs do
  require "faraday"

  fetch_file "https://curl.haxx.se/ca/cacert.pem",
             ::File.expand_path("../lib/data/ca-certificates.crt", __FILE__)
end

#
# helpers
#

def fetch_file(url, dest)
  ::File.open(dest, "w") do |file|
    resp = Faraday.get(url)
    unless resp.status == 200
      abort("bad response when fetching: #{url}\n" \
        "Status #{resp.status}: #{resp.body}")
    end
    file.write(resp.body)
    puts "Successfully fetched: #{url}"
  end
end
