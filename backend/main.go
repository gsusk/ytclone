package main

import (
	"fmt"
	"time"
)

func main() {
	fmt.Println("HELLO WORLD!")
	for {
		time.Sleep(5 * time.Second)
		fmt.Println("		sleeped 5 secs!	")
		fmt.Println("====================")
	}
}
