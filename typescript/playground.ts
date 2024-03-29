type Button = {
  name: string;
  onClick: () => void;
};

type Input = {
  value: string;
  onChange: (value: string) => void;
};

function App(element: Button | Input) {
  if ("onClick" in element) {
    element.onClick();
  } else {
    element.onChange("Hello");
  }
}

const button: Button = {
  name: "Click me",
  onClick: () => console.log("Button clicked"),
};

const input: Input = {
  value: "",
  onChange: (value) => console.log(value),
};

App(button); // Button clicked
