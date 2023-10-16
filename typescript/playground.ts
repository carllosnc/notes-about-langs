type Button = {
  text: string;
  onClick: (e: MouseEvent) => void;
};

const button: Button = {
  text: "Click me",
  onClick: (e) => {
    console.log("Clicked");
  },
};

console.log(typeof button);
