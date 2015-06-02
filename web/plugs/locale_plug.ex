defmodule Workshop.LocalePlug do
  @moduledoc """
  Attempt to get the locale from the `Accept-Language` header, fallback
  to default header.

  Credit to the Phoenix Guide: Plug.
  """
  import Plug.Conn

  @locales      ["en", "es"]
  @default_lang "en"
  @lang_key     :lang
  @locale_regex ~r/([^-;]*)(?:-([^;]*))?(?:;q=([0-9]\.[0-9]))?/

  def init(default), do: default

  def call(%Plug.Conn{params: %{"lang" => lang}} = conn, _default)
      when lang in @locales do
    put_session(conn, @lang_key, lang)
  end
  def call(conn, _default), do: conn

  def get(conn, default \\ @default_lang) do
    get_session(conn, :lang) || get_lang(conn, default)
  end

  defp get_lang(conn, default) do
    case get_req_header(conn, "accept-language") |> parse_accept_language do
      {:ok, lang}       -> lang
      {:error, _reason} -> default
    end
  end

  defp parse_accept_language([lang]) do
    case Regex.run(@locale_regex, lang) do
      [_, lang | _] ->
        {:ok, lang}
      otherwise ->
        {:error, {:unparsed, otherwise}}
    end
  end

  defp parse_accept_language(_lang) do
    {:error, :unexpected}
  end

end
