module MyEnumerable
  def all?
    answer = false
    @list.each do |e|
      answer = true if yield(e)
    end
    answer
  end
  
  def any?
    answer = false
    @list.each do |e|
      answer = true if yield(e)
    end
    answer
  end
  
  def filter?
    filtered_items = []
    @list.each do |e|
      filtered_items.push(e) if yield(e)
    end
    filtered_items
  end
end 