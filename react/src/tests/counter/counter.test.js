import React from "react"
import { mount } from "enzyme"
import Counter from "./counter.component"

describe("Counter suite", () => {
  test("Increment counter", () => {
    const wrapper = mount(<Counter/>)
    expect(wrapper.find("#result").text()).toBe("0")

    // Simulate click event
    wrapper
      .find("#increment")
      .simulate('click') // 1
      .simulate('click') // 2
      .simulate('click') // 3
      .simulate('click') // 4
      .simulate('click') // 5

    expect(wrapper.find("#result").text()).toBe("5")
  })

  test("Decrement counter", () => {
    const wrapper = mount(<Counter/>)
    expect(wrapper.find("#result").text()).toBe("0")

    // Simulate click event
    wrapper
      .find("#decrement")
      .simulate("click") // -1
      .simulate("click") // -2
      .simulate("click") // -3
      .simulate("click") // -4
      .simulate("click") // -5

    expect(wrapper.find("#result").text()).toBe("-5")
  })
})
