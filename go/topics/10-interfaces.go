package topics

//student
type student struct {
	name          string
	age           int
	registrations []string
}

//interface
type studentDetails interface {
	getName() string
	getAge() int
	getRegistrations() []string
}

//method
func (s *student) getName() string {
	return s.name
}

//method
func (s *student) getAge() int {
	return s.age
}

//method
func (s *student) getRegistrations() []string {
	return s.registrations
}

//use interface
func describe(s studentDetails) {
	println(s.getName())
	println(s.getAge())
	println(s.getRegistrations())
}

func Interfaces() {
	s := student{name: "John", age: 25, registrations: []string{"Math", "Science", "English"}}

	describe(&s)
}
