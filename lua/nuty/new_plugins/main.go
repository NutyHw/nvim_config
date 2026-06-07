package main

import (
	"log"
	"net/http"
)

const myUrl2 = "http://example.com"

func main() {
	var err error
	var resp *http.Response
	resp, err = http.Get(myUrl2)
	if err != nil {
		log.Fatal(err)
	}
	printStatus(resp)
}

func printStatus(r *http.Response) {
	log.Print(r.Status)
}
