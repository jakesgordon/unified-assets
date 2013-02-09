$LOAD_PATH << File.dirname(__FILE__) + "/lib"
require "rake/testtask"
require "unified_assets/tasks"

task :default => :test

#------------------------------------------------------------------------------

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList["test/**/*_test.rb"]
  t.verbose = true
end

#------------------------------------------------------------------------------

UnifiedAssets::Tasks.new do |t|
  t.minify = true
  t.assets = {
    "test/reference/unified.js" => [
      'test/js/a.js',
      'test/js/b.js',
      'test/js/c.js'
    ],
    "test/reference/unified.css" => [
      'test/css/a.css',
      'test/css/b.css',
      'test/css/c.css'
    ]
  }
end

#------------------------------------------------------------------------------

