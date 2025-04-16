/*
  @param {action} - function to execute
  @returns {data, errorMessage, isError, errorStack, errorName, errorCause}
*/
function tryCatch(action: () => void) {
  let currentError: Error = new Error()
  let data = null

  try {
    data = action()
  } catch (e: unknown) {
    if (e instanceof Error) {
      currentError = e
    } else {
      currentError = new Error('Unknown error')
    }
  }

  return {
    data,
    isError: currentError instanceof Error,
    error: {
      message: currentError.message,
      stack: currentError.stack,
      name: currentError.name,
      cause: currentError.cause,
    },
  }
}

const { data, error } = tryCatch(() => {
  return { message: 'hello world' }
})

console.log(data, error)
