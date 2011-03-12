namespace :cover_me do
  
  task :report do
    require 'cover_me'
    CoverMe.complete!
  end
  
end

desc 'run cover_me coverage tests on specs (uncomment for features)'
task :cover_me do
  require 'cover_me'
  Rake::Task['spec'].invoke
#  Rake::Task['cucumber'].invoke
  Rake::Task['cover_me:report'].invoke
end