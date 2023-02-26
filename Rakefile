task default: [:test, :execute]

desc "Runs all the tests"
task :test do
  sh "bundle exec rspec --format documentation --color"
end

desc "Executes the ruby mars-rover program with mars-rover.in as input"
task :execute do
  sh "bundle exec ruby lib/mars-rover.rb sample_input"
end

