package main

import (
	"fmt"
)

type Fooer struct {
    bazzer string
}

type Foo struct {
    bar string
    // baz does this one thing 
    baz Fooer 
}

func main() {
    a := Foo{}
    a.baz.bazzer = "dd"
    fmt.Println("helllooooo!!")
    fmt.Println("hello world")
}
