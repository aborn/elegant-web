defmodule Elegantweb.PageController do
  use Elegantweb.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
