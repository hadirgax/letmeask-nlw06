import { useState } from "react";

type ButtonProps = {
  children?: string; // ? for optional props
  text?: string; // ? for optional props
};

export function Button(props: ButtonProps) {
  const [counter, setCounter] = useState(0);

  function increment() {
    setCounter(counter + 1);
  }
  console.log(counter);
  //   return <button>{props.text || props.children || "Default"}</button>;
  return <button onClick={increment}>{counter}</button>;
}
