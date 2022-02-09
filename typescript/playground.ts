{
  type DescribableFunction = {
    description: string
    (someArg: number): boolean
  }

  function doAnything(fn: DescribableFunction){
    console.log(fn.description + "returned" + fn(6))
  }
}