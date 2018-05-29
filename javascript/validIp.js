'''
Write a method that takes a string & returns a boolean indicating whether the
string is a valid IP address (anything between 0.0.0.0 and 255.255.255.255)
'''

const validIp = (ip) => {
  const newIp = ip.split('.');
  let ipValid = true;
  if (newIp.length === 4) {
    newIp.forEach((segment) => {
      debugger
      if (
        isNaN(Number(segment)) ||
        Number(segment) > 255 ||
        Number(segment) < 0
      ) {
        ipValid = false;
      }
    })
  } else {
    ipValid = false;
  }
  return ipValid;
}
