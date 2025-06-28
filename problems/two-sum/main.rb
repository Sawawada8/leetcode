# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    res = nil
    h = {}
    nums.each_with_index do |n, i|
      s = target - n
      if h[s]
        res = [i, h[s]]
        break
      end
      h[n] = i
    end
    res
end
