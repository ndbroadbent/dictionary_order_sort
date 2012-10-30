# Dictionary Order Sort

Sorts an array of strings in the same manner as the Linux `sort` command running with the `--dictionary-order` option. Only blanks and alphanumeric characters are considered.

I created this gem after trying to use the `comm` command in a Capistrano recipe, with the files being sorted in Ruby. `comm` requires the input files to be sorted using the collating sequence specified by `LC_COLLATE', and this defaults to dictionary sort.

In the end, I just piped the files to the Linux `sort` command, but I decided to write it anyway and release it as a tiny gem.

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