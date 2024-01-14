open System

let (|Digit|Letter|Whitespace|Other|) ch =
    if Char.IsDigit ch then Digit
    elif Char.IsLetter ch then Letter
    elif Char.IsWhiteSpace ch then Whitespace
    else Other

type Red = Red
type Green = Green
