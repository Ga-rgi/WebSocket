package main

import (
	"log"
	"time"
)

func PrintEveryMinute() {
	log.Print("Job is running")
	time.Sleep(time.Minute)
}
