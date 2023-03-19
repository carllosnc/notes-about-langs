/*---------------------------------------
  Readonly Arrays
----------------------------------------*/

{
  const arr: Readonly<string[]> = ["1", "2", "3"];
}

/*---------------------------------------
  Readonly objects
----------------------------------------*/

{
  const obj: Readonly<{ name: string; age: number; lang: string }> = {
    name: "John Doe",
    age: 20,
    lang: "javascript",
  };
}

/*---------------------------------------
  Readonly class property
----------------------------------------*/

{
  class Employee {
    readonly code: number;
    readonly name: string;

    constructor(name: string, code: number) {
      this.name = name;
      this.code = code;
    }
  }
}

/*---------------------------------------
  Readonly interface
----------------------------------------*/

{
  interface IEmployee {
    readonly code: number;
    readonly name: string;
  }

  let obj: IEmployee = {
    code: 1,
    name: "John Doe",
  };
}
