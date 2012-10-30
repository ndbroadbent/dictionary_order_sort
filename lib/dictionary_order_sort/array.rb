class Array
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
