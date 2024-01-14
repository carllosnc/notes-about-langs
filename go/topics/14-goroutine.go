package topics

import (
	"fmt"
	"time"
)

func printWithSleep(s string) {
	for _, v := range s {
		time.Sleep(time.Second)
		fmt.Printf("%c", v)
	}
}

func printNumberWithSleep(n int) {
	for i := 0; i < n; i++ {
		time.Sleep(time.Second)
		fmt.Printf("%d", i)
	}
}

func Goroutine() {
	//thread 1
	go printWithSleep("Hello, playground\n")

	//thread 2
	printNumberWithSleep(10)

	println("End of main")
}
