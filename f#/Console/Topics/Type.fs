module Types

type Car =
    { Make: string
      Model: string
      Year: int }

type Motor =
    { Make: string
      Model: string
      Year: int }

type Vehicle =
    | Car of Car
    | Motor of Motor

type Person =
    { Name: string
      Age: int
      Vehicle: Vehicle }

let person =
    { Name = "John"
      Age = 30
      Vehicle =
        Car { Make = "Ford"
              Model = "Focus"
              Year = 2010
            }
    }

match person.Vehicle with
| Car _ -> printfn "Car"
| Motor _ -> printfn "Motor"

type EmailAddress =
    | ValidEmailAddress of string
    | InvalidEmailAddress of string

let trySendEmail (emailAddress: EmailAddress) =
    match emailAddress with
    | ValidEmailAddress address -> printfn "Sending email to %s" address
    | InvalidEmailAddress address -> printfn "Invalid email address %s" address
