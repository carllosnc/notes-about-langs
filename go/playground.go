package main

import (
	"fmt"
	"time"
)

func printWithSleep(s string) {
	for _, v := range s {
		fmt.Printf("%c ", v)
		time.Sleep(time.Millisecond * 150)
	}
}

func printNumberWithSleep(n int) {
	for i := 0; i < n; i++ {
		fmt.Printf("%d ", i)
		time.Sleep(time.Millisecond * 250)
	}
}

func main() {
	//thread 1
	go printWithSleep("Hello, playground\n")

	//thread 2
	go printNumberWithSleep(10)

	time.Sleep(time.Second * 2)

	println("End of main")
}
