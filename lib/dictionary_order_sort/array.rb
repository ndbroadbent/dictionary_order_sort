class Array
  # Sorts an array of strings with 'dictionary sort' logic.
  # Produces the same order as the Linux command `sort --dictionary-order`.
  # (Note that `--dictionary-order` is the default order for the `sort` command.)
  def dict_sort
    sorting_cache = {}
    sort do |a, b|
      c, d = [a, b].map do |f|
        sorting_cache[f] ||= f.gsub /\W|[_\s]/, ''
      end
      c <=> d
    end
  end
end
