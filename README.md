# Elixirbot

This is a sample elixir bot made for a lightning talk at a local Ruby meetup.

Based on this tutorial: https://medium.com/carwow-product-engineering/getting-started-writing-a-slack-bot-with-elixir-b8877072f038#.ye567l7cr

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add elixirbot to your list of dependencies in `mix.exs`:

        def deps do
          [{:elixirbot, "~> 0.0.1"}]
        end

  2. Ensure elixirbot is started before your application:

        def application do
          [applications: [:elixirbot]]
        end

