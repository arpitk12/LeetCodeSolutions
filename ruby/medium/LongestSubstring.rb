# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    n=s.size
    if n<=1
        return n
    end
    start=0
    max=0
    map=Array.new(128,0)
    chars=s.bytes
    (0...n).each do |i|
        index=chars[i]
        if map[index]>start
            start=map[index]
        end
        map[index]=i+1
        max=[max,i-start+1].max
    end    
    max
end


puts(length_of_longest_substring("abcabcbb"))
puts(length_of_longest_substring("bbbbb"))
puts(length_of_longest_substring("pwwkew"))