defmodule Elegantweb.Router do
  use Elegantweb.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Elegantweb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/hello", HelloController, :hello       #请求转发
    get "/hello/:name", HelloController, :show  #参数转发
    get "/getjson", HelloController, :getJson   #返回json数据
  end

  # Other scopes may use custom stacks.
  # scope "/api", Elegantweb do
  #   pipe_through :api
  # end
end
