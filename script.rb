require 'pry-byebug'

def substrings(string, dict_arr)
    matches_arr = []
    string.split(" ").each do |item|
        filter = dict_arr.find_all { |i| item.downcase.include?(i) }
        matches_arr += filter
    end
    matches_arr.reduce({}) do |hash, i|
        hash[i] ? hash[i] += 1 : hash[i] = 1
        hash
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit", "below"]

substrings("Howdy partner, sit down! How's it going?", dictionary)