/*================================
Event loop

https://www.educative.io/answers/what-is-an-event-loop-in-javascript
https://javascript.info/event-loop
https://medium.com/@kunaltandon.kt/process-nexttick-vs-setimmediate-vs-settimeout-explained-wrt-different-event-loop-phases-c0506b12921d
https://dev.to/lunaticmonk/understanding-the-node-js-event-loop-phases-and-how-it-executes-the-javascript-code-1j9
https://blog.sessionstack.com/how-javascript-works-event-loop-and-the-rise-of-async-programming-5-ways-to-better-coding-with-2f077c4438b5
==================================*/

{
  // 3 - show last, beacause it's a macrotask
  setTimeout(() => console.log('timeout'))

  // 2 - show second, because .then passes through the microtask queue,
  // and runs after the current code.
  Promise.resolve().then(() => console.log('promise'))

  // 1 - show first, becase it's a regular synchronous call
  console.log('code')

  // execution order
  // call stack -> microtasks -> macrotasks
}

{
  // call stacks (1)
  console.log('1')
  console.log(7)

  // microtasks (2)
  Promise.resolve().then(() => console.log(3))
  Promise.resolve().then(() => console.log(5))

  // macrotasks
  Promise.resolve().then(() => setTimeout(() => console.log(4)))
  setTimeout(() => console.log(2))
  setTimeout(() => console.log(6))

  // 17 35 264
}

{
  // send a task to microtask
  queueMicrotask()
}
