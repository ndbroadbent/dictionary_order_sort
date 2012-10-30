$:.push File.expand_path("../lib", __FILE__)

require "dictionary_order_sort/version"

Gem::Specification.new do |s|
  s.name        = "dictionary_order_sort"
  s.version     = DictionaryOrderSort::VERSION
  s.authors     = ["Nathan Broadbent"]
  s.email       = ["nathan.f77@gmail.com"]
  s.homepage    = "https://github.com/ndbroadbent/dictionary_order_sort"
  s.summary     = "--dictionary-sort for Ruby arrays"
  s.description = "Sort an array in the same order as `sort --dictionary-sort`"

  s.files = Dir["lib/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]
end
