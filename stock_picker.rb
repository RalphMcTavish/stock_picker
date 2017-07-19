
def stock_picker arr
  diff = 0
  start_ind, end_ind = 0, 0
  arr.reverse_each do |end_ele|
    arr.each do |start_ele|
      if start_ele < end_ele && (end_ele - start_ele) > diff
        diff = end_ele - start_ele
        start_ind = arr.index(start_ele)
        end_ind = arr.index(end_ele)
      end
    end
  end
  puts "low = #{arr[start_ind]}, high = #{arr[end_ind]} Profit = #{diff}"
end

stock_picker [4,6,1,3,8,4,9,3,7,5]
