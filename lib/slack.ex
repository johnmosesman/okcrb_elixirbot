defmodule Elixirbot.Slack do
  use Slack

  @token Application.get_env(:elixirbot, __MODULE__)[:token]

  def start_link, do: start_link(@token, [])

  def handle_message(message = %{type: "message"}, slack, state) do
    IO.inspect message

    if Regex.run ~r/<@#{slack.me.id}>:?\shi/, message.text do
      send_message("<@#{message.user}> hello!", message.channel, slack)
    end

    {:ok, state}
  end
  def handle_message(_message, _slack, state) do
    {:ok, state}
  end
end
