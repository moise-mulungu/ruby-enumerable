require_relative 'enumerable'

class MyList
    include MyEnumerable

    def initialize(*list_item)
        @list = list_item
    end

    def each
        (0...@list.length).each do |index|
            yield @list[index]
        end
    end
end

list_item = MyList.new(1, 2, 3, 4)
puts(list_item.all? { |e| e < 5 })
puts(list_item.all? { |e| e > 5 })
puts(list_item.any? { |e| e == 2 })
puts(list_item.any? { |e| e == 6 })
puts(list_item.filter?(&:even?))