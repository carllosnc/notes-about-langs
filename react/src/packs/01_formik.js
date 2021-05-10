import React from "react"
import { Formik, Form, Field, ErrorMessage } from "formik"
import * as Yup from "yup"

/*
  https://jaredpalmer.com/formik/
  https://medium.com/fotontech/react-native-formik-yup-%EF%B8%8F-18465e020ea0
*/

// Yup schemma
const SignupSchema = Yup.object().shape({
  firstName: Yup.string()
    .min(2, "Too short!")
    .max(20, "Too long!")
    .required("Required"),
  lastName: Yup.string()
    .min(2, "Too short!")
    .max(20, "Too long!")
    .required("Required"),
  email: Yup.string()
    .email("Envalid email")
    .required("Required"),
})

function Ex_Formik() {
  // submit handle
  const submitHandle = (values, { setSubmitting }) => {
    console.log(values)
  }

  return (
    <>
      <section>
        <Formik
          initialValues={{
            firstName: "",
            lastName: "",
            email: "",
          }}
          validationSchema={SignupSchema}
          onSubmit={submitHandle}
        >
          {({ isSubmitting, errors }) => (
            <Form>
              {/* name */}
              <div>
                <label htmlFor="firstName"> First name </label> <br />
                <Field type="text" name="firstName" />
                <ErrorMessage
                  style={{ color: "red" }}
                  name="firstName"
                  component="div"
                />
              </div>

              <br />

              {/* email */}
              <div>
                <label htmlFor="lastName"> Last name </label> <br />
                <Field type="text" name="lastName" />
                <ErrorMessage
                  style={{ color: "red" }}
                  name="lastName"
                  component="div"
                />
              </div>

              <br />

              {/* password */}
              <div>
                <label htmlFor="email"> Email </label> <br />
                <Field type="email" name="email" />
                <ErrorMessage
                  style={{ color: "red" }}
                  name="email"
                  component="div"
                />
              </div>

              <br />

              <button type="submit" disabled={isSubmitting}>
                Submit
              </button>
            </Form>
          )}
        </Formik>
      </section>
    </>
  )
}

export default Ex_Formik
