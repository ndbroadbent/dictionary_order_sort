#!/usr/bin/env rake
require 'rake/testtask'
ENV["TEST_CORES"] = "1"

require 'bundler'
Bundler::GemHelper.install_tasks

Rake::TestTask.new("test") do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/*_test.rb'
  t.verbose = true
end

task :default => :test
