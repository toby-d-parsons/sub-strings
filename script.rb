require 'pry-byebug'

def substrings(string, dict_arr)
    filter = dict_arr.find_all { |i| string.include?(i) }
    hash = {}
    filter.each { |i| hash[i] ? hash[i] += 1 : hash[i] = 1 }
    hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)