function loop(init, end, action){
  if (init >= end) {
    return true
  }

  action(init)

  loop(init + 1, end, action)
}

loop(0, 10, (index) => {
  console.log(index, 'Hello world!')
})

