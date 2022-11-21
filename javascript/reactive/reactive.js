import { map, filter, from } from 'rxjs'

// observables
// actions
// observers

const values = from([1, 2, 3])
  .pipe(map(x => x * 2))
  .pipe(filter(item => item > 2))

values.subscribe(item => {
  console.log(item)
})
