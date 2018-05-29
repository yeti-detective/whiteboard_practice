'''
Write a method that takes a string & returns a boolean indicating whether the
string is a valid IP address (anything between 0.0.0.0 and 255.255.255.255)
'''

def valid_ip?(ip)
  ipArr = ip.split('.')
  return false if ipArr.length != 4 ||
    ipArr.any? { |seg| seg.to_i > 255 } ||
    ipArr.any? { |seg| seg.to_i < 0 } ||
    ipArr.any? { |seg| seg.to_i.to_s != seg }
  true
end
