/*
Create your own version of Array.map
It must function recursively
*/

const my_map = (arr, fn, idx = 0, cp = []) => {
  if (idx === arr.length) {
    return cp
  } else {
    cp[cp.length] = fn(arr[idx])
  }
  return my_map(arr, fn, idx + 1, cp)
}
