// Partial<Types>
{
  interface Todo {
    title: string
    description: string
  }

  function updateTodo(todo: Todo, fieldsUpdate: Partial<Todo>): Todo {
    return { ...todo, ...fieldsUpdate }
  }

  const todo1: Todo = {
    title: 'organize desk',
    description: 'clear clutter',
  }

  const todo2 = updateTodo(todo1, {
    description: 'throw out trash',
  })
}

// Require<Type>
{
  interface Props {
    a?: number
    b?: string
  }

  const obj1: Props = { a: 5 }
  const obj2: Required<Props> = { a: 5, b: '10' }
}
