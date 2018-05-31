'''
Write a method that takes a string and returns an array of all substrings of that string (unique values)
'''
def uniq_subs(str)
  subs = []
  (0...str.length).each do |i|
    for j in (i + 1)...str.length do
      subs << str.slice(i, j) unless subs.include?(str.slice(i, j))
    end
  end
  subs
end
