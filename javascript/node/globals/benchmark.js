console.time('foo')

setTimeout(() => {
  console.log('my operation here!')
}, 3000)

console.timeEnd('foo')
