package main

import (
	"io"
	"log"
	"net/http"
)

func TestServer(w http.ResponseWriter, req *http.Request) {
	io.WriteString(w, "hello, world!\n")
}
func main() {
	http.HandleFunc("/test2", TestServer)
	err := http.ListenAndServe(":8082", nil)
	if err != nil {
		log.Fatal("ListenAndServe: ", err)
	}
}
