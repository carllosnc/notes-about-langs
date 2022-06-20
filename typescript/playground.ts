type Point = { x: number; y: string }
type P = keyof Point

const foo: P = 'y'
