defmodule MailChimp do
  @moduledoc """
  The `MailChimp` module provides an Elixir interface for the
  mailchimp v3 API.
  """

  # Public Interface

  def add_member_to_list(list_id, member) do
    post!("/lists/#{list_id}/members", encode(member))
  end

  # Private Functions

  defp get_api_key do
    # TODO: fallback to application config
    System.get_env("MAILCHIMP_API_KEY")
  end

  defp get_shard(api_key) do
    [_, shard] = String.split(api_key)
    shard
  end

  defp post!(path, body, api_key \\ get_api_key()) do
    headers = %{"Authorization" => "apikey " <> api_key}
    uri = "https://#{get_shard(api_key)}.api.mailchimp.com/3.0" <> path
    HTTPoison.post!(uri, body, headers)
  end

  defp encode(map) do
    Poison.encode(map)
  end

end
