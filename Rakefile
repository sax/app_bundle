Dir['./lib/tasks/reset/**/*'].each do |file|
  load(file)
end

desc 'Run through all of the reset tasks'
task reset: %w(
  reset:db
)
