def find_median_sorted_arrays(nums1,nums2)
    nums=nums1+nums2
    nums.sort!
    i=nums.size
    if i%2==0
        (nums[i/2]+nums[(i/2)-1]).to_f/2
    else
        nums[i/2]
    end
end

puts(find_median_sorted_arrays([1,3],[2]))
puts(find_median_sorted_arrays([1,2],[3,4]))