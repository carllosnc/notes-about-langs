function loop(times){
  var index = 0;

  function rec(action){
    index++;

    if(index <= times){
      action(index - 1)
      rec(action);
    }
  }

  return rec;
}

let arr = [
  "first",
  "second",
  "third",
  "fourth",
  "fifth",
  "sixth",
]

loop(arr.length)((index) => {
  console.log(index, arr[index])
});

