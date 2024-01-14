package topics

import (
	"os"
	"time"
)

func Timers() {
	count := 0

	func() {
		for {
			time.Sleep(time.Second * 1)
			count++
			println("count:", count)

			if count == 3 {
				os.Exit(0)
			}
		}
	}()
}
