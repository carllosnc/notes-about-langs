/*
  Buffers are raw allocations of the heapa, exposed to javascript
  array-like manner, they're exposed globally and therefore don't need
  tobe required, and can be thought of as just another javascript type
  (like string or number)
*/

const buf = new Buffer.alloc(255)

console.log(buf)
