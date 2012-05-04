task :default => [:test]

task :test do
  ret = true
  Dir["test/**/*.rb"].each do |f|
    ret = ret && ruby(f, '')
  end
  exit(ret)
end
