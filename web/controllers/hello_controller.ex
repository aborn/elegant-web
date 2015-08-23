defmodule Elegantweb.HelloController do
  use Elegantweb.Web, :controller
  
  def hello(conn, _params) do
    render conn, "index.html"
  end

  def show(conn, %{"name" => name} ) do
    json conn, "{name:abc}"
#    render conn, "show.html", user: name    
  end
end
