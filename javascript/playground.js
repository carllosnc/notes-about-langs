let arr = [1, 2, 3, 4, 5];

//foreach - undefined
//map - length
//filter - 0 ~ length

let a = arr.reduce((prev, next) => {
  if (next % 2 === 0) {
    return prev.concat(next);
  }

  return prev;
}, []);

console.log(a);