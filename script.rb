require 'pry-byebug'

def substrings(string, dict_arr)
    string_arr = string.split(" ")
    new_arr = []
    string_arr.each do |item|
        filter = dict_arr.find_all { |i| item.downcase.include?(i) }
        p filter
        new_arr += filter
    end
    p new_arr
    hash = {}
    new_arr.each { |i| hash[i] ? hash[i] += 1 : hash[i] = 1 }
    hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit", "below"]

substrings("Howdy partner, sit down! How's it going?", dictionary)