def longest_common_prefix(strs)
    strs=strs.sort
    res=""
    (0...strs[0].size).each do |i|
        temp=strs[0][0..i]
        if temp==strs[strs.size-1][0..i]
            res=temp
        else
            return res
        end
    end
    return res
end

strs1=["flower","flow","flight"]
strs2=["dog","racecar","car"]

puts(longest_common_prefix(strs1))
puts(longest_common_prefix(strs2))