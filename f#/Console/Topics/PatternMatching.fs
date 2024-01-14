module PatternMatching

let simplePatternMatch =
    let x = "a"

    match x with
    | "a" -> printfn "x is a"
    | "b" -> printfn "x is b"
    | _ -> printfn "x is something else"

let optionPatternMatch input =
    match input with
    | Some x -> printfn "x is %d" x
    | None -> printfn "x is nothing"

optionPatternMatch (Some 10)

optionPatternMatch None

let listMatcher aList =
    match aList with
    | [] -> printfn "Empty list"
    | [ first ] -> printfn "One element list"
    | [ first; second ] -> printfn "Two element list"
    | _ -> printfn "Longer list"
