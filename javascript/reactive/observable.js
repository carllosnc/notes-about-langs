import { Observable } from 'rxjs'

// Observables are lazy push collections of multiple values
// they fill the missing spot in the following table

// example 1
{
  const obs = new Observable(subscriber => {
    subscriber.next(1) // first return synchronously

    setTimeout(() => {
      subscriber.next(2) // second return asynchronously
    }, 2000)

    setTimeout(() => {
      subscriber.next(3) // third return asynchronously
    }, 3000)
  })

  obs.subscribe(
    {
      next(x) {
        console.log('first observer', x)
      },
    },
    {
      error(x) {},
    },
    {
      complete() {
        console.log('end of iteration!!!')
      },
    }
  )

  obs.subscribe(x => {
    console.log('second observer', x)
  })
}

// observables are like functions with zer arguments,
// but generalize those to allow multiple values.

// subscribing to and observable is analogous to calling a function

// observables are able to deliver values either synchronously and asynchronously
// observables can return multiple values

// example 2

{
  const obs = new Observable(function subscribe(subscriber) {
    const id = setInterval(() => {
      subscriber.next('hi')
    }, 1000)

    return function unsubscribe() {
      clearInterval(id)
    }
  })

  let count = 0

  // clear just one timer

  const reaction1 = obs.subscribe(value => {
    console.log(value, count)
    count++

    if (count > 10) {
      console.log('stop here!')
      reaction1.unsubscribe()
    }
  })

  obs.subscribe(value => {
    console.log('he say:', value)
  })
}
