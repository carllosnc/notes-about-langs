/*
  javascript is single threaded, so the browser can't execute two functions at the same time without block the main thread. Event loop is the mechanism that allows the browser to perform asynchronous tasks and avoid blocking the main thread.

  This mechanism is based in 5 parts:
  1. Callstack: the stack of functions that are currently being executed.
  2. Microtask queue: the queue of functions that are waiting to be executed.
  3. Macrotask queue: the queue of functions that are waiting to be executed.
  4. Event loop: the mechanism that allows the browser to perform asynchronous
   tasks and avoid blocking the main thread.
  5. Web API: the API that allows the browser to perform asynchronous tasks and
   avoid blocking the main thread.
  */

//callstack, sync operations
console.log('callstack 1')
;(() => {
  console.log('callstack 2')
})()
console.log('callstack 3')

//microtask queue, async operations
queueMicrotask(() => {
  console.log('- microtask queue 1')
})
Promise.resolve('- microtask queue 2').then(console.log)
;(async () => '- microtask queue 3')().then(console.log)

//macrotask queue, async operations
setTimeout(() => {
  console.log('-- macrotask queue 1')
}, 0)

//call stack, 5
//microtask 1, 3, 4
//task 2

//5, 1, 3, 4, 2
