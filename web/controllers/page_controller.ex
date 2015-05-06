defmodule Workshop.PageController do
  use Workshop.Web, :controller

  plug :validate
  plug :action

  @thanks_text """
Thanks for showing your interest! We'll be getting back to you soon.
"""

  def validate(conn, _params) do
    conn
  end

  def index(conn, _params) do
    render conn, "index.html"
  end

  def reserve(conn, _params) do
    # TODO forward to an actual page
    text conn, @thanks_text
  end
end
