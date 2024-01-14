module Pipes

let double x = x * 2

let filterEvenNumbers x = x % 2 = 0

let pipeEx01 =
    [ 1..10 ]
    |> List.filter (fun x -> x % 2 = 0)
    |> List.map (fun x -> x * x)
    |> List.sum
    |> printfn "%d"

let pipeEx02 =
    [ 1..10 ]
    |> List.filter filterEvenNumbers
    |> List.map double
    |> List.sum
    |> printfn "%d"
