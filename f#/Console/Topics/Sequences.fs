module Sequences

let seq1 =
    let s =
        seq {
            yield 1
            yield 2
            yield 3
        }

    s

seq1 |> Seq.iter (printfn "%d")
