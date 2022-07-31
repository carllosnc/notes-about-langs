import test from 'ava'

// https://www.patterns.dev/posts/factory-pattern/

test('factory pattern: example 1', t => {
  const createUser = ({ firstName, lastName, email }) => ({
    firstName,
    lastName,
    email,
    fullName() {
      return `${this.firstName} ${this.lastName}`
    },
  })

  const user1 = createUser({
    firstName: 'John',
    lastName: 'Doe',
    email: 'john@doe.com',
  })

  t.deepEqual(user1.fullName(), 'John Doe')
})
