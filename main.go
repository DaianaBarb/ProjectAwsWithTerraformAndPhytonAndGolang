package main

import (
	"context"
	"fmt"

	v2 "github.com/cloudevents/sdk-go/v2"

	// precisa desse cara para rodar o lambda
	"github.com/aws/aws-lambda-go/lambda"
)

func handler(parentCtx context.Context, in v2.Event) (*v2.Event, error) {
	fmt.Println("Bem vindo LAMBDA")
	return outEvent(in)
}

func outEvent(in v2.Event) (*v2.Event, error) {
	out := v2.NewEvent()

	out.SetID(in.ID())
	out.SetSource("welcome")
	out.SetExtension("group", "123")
	out.SetSubject("terraform-kinesis-first-event")
	if err := out.SetData("", "daiana"); err != nil {
		return nil, err
	}
	return &out, nil

}
func main() {
	lambda.Start(handler)
}
