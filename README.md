# Dictionary Order Sort

[![Build Status](https://secure.travis-ci.org/ndbroadbent/dictionary_order_sort.png)](http://travis-ci.org/ndbroadbent/dictionary_order_sort)

Sorts an array of strings in the same manner as the Linux `sort` command running with the `--dictionary-order` option. Only blanks and alphanumeric characters are considered.

I created this gem because I needed to use the `comm` command in a Capistrano recipe, and wanted to sort the list of files in Ruby. `comm` requires the input files to be sorted using the collating sequence specified by `LC_COLLATE', and this defaults to dictionary sort.

# Installation

Add the following line to your `Gemfile`:

```ruby
gem 'dictionary_order_sort'
```

# Usage

You can now use the `dict_sort` method on any arrays. Array elements must be strings, or respond to `to_s`.

Use it like this:

```ruby
["a", "a-2", "_a-3", "abc_", "_def_"].dict_sort

#=> ["a", "a-2", "_a-3", "abc_", "_def_"]
```
