import React from "react"
import { shallow, mount, render } from "enzyme"
import Mock from "./mock.component"
import Renderer from "react-test-renderer"

describe("Shallow Rendering", () => {
  test("Checking the mock (shallow)", () => {
    const wrapper = shallow(<Mock />)

    expect(wrapper.find(".wrapper").type()).toBe("section")
    expect(wrapper.find(".wrapper").children().length).toBe(2)

    wrapper.find(".title").forEach(node => {
      expect(node.hasClass("title")).toBe(true)
      expect(node.type()).toBe("h1")
      expect([" First Title ", " Second Title "].includes(node.text())).toBe(true)
    })
  })
})

describe("Mount rendering", () => {
  test("Checking the mock (mount)", () => {
    const wrapper = mount(<Mock />)
    expect(wrapper.find("h1").length).toBe(2)
  })
})

describe("Static render", () => {
  test("Checking the mock (static)", () => {
    const wrapper = render(<Mock />)
    expect(wrapper.find("h1").length).toBe(2)
  })
})

describe("Working with react-test-renderer", () => {
  test("Testing with react-test-renderer", () => {
    const component = Renderer.create(<Mock/>)
    expect(component).toMatchSnapshot()
  })
})
