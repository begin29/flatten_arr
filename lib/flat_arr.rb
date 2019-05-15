class FlatArr
  def flatten(arr)
    return nil if !(arr.is_a? Array)
    make_arr_flat(arr, [])
  end

  private
  def make_arr_flat(arr, flat_arr)
    arr.each do |x|
      if (x.is_a? Array)
        make_arr_flat(x, flat_arr)
      else
        flat_arr.push(x)
      end
    end
    flat_arr
  end
end
