/*
Enums

https://www.typescriptlang.org/docs/handbook/enums.html
*/

/*---------------------------------------
  numeric enums
----------------------------------------*/
{
  enum Direction {
    Up = 1, // start
    Down,
    Left,
    Right,
  }

  enum Response {
    No = 0,
    Yes = 1,
  }

  let up: Direction = Direction.Up;
  let yes: Response = Response.Yes;

  console.log(up); // 1
  console.log(yes); // 1
}

/*---------------------------------------
  string enums
----------------------------------------*/
{
  enum Direction {
    Up = "UP",
    Down = "DOWN",
    Left = "LEFT",
    Right = "RIGHT",
  }

  console.log(Direction.Down);
}

/*---------------------------------------
  heterogeneous enums
----------------------------------------*/
{
  enum Multi {
    No = 0,
    Yes = "YES",
  }

  console.log(Multi.No);
}

/*---------------------------------------
  computed and constant members
----------------------------------------*/
{
  // All enum members in 'E' are constant.
  enum E {
    X,
    Y,
    Z,
  }

  console.log(E.X);
  console.log(E.Y);
  console.log(E.Z);
}
