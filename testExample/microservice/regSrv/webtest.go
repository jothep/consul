package main

import (
	"io"
	"log"
	"net/http"
)

func TestServer(w http.ResponseWriter, req *http.Request) {
	io.WriteString(w, "hello, web!\n")
}
func main() {
	http.HandleFunc("/webtest", TestServer)
	err := http.ListenAndServe(":8088", nil)
	if err != nil {
		log.Fatal("ListenAndServe: ", err)
	}
}
