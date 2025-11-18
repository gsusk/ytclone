package main

import (
	"github.com/gofiber/fiber/v2"
)

func NewRouter() *fiber.App {
	return fiber.New()
}

func buildRouter() {
	fb := fiber.New()

	fb.Get("/", func(c *fiber.Ctx) error { return nil })
}
