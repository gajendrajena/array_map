class Array
  include Enumerable
  def my_map(&block)
    result = []
    each do |el|
      result << block.call(el)
    end
    result
  end

end
