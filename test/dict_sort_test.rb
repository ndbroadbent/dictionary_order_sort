# -*- coding: utf-8 -*-
require 'rubygems'
require 'bundler/setup'
require 'minitest/autorun'

require 'dictionary_order_sort'

class TestArrayDictSort < MiniTest::Unit::TestCase
  def test_dict_sort
    arr = ['a', 'a-2', '_a-3', 'abc_', '_def_', 'b', 'ce', 'd_a', '-b_', '___b']

    system_sort = `echo #{arr.join("\\\\n")} | sort --dictionary-order`.split
    ruby_sort = arr.dict_sort

    assert_equal ruby_sort, system_sort
  end
end