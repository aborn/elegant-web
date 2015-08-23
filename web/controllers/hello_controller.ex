defmodule Elegantweb.HelloController do
  use Elegantweb.Web, :controller

  # 最普通的url
  def hello(conn, _params) do
    render conn, "index.html"
  end

  # 带参数的url
  def show(conn, %{"name" => name} ) do  
    render conn, "show.html", user: name    
  end

  # 返回json数据类型
  def getJson(conn, _params) do
    result = %{"status"=>"success", "info"=>"success code 200", "code" => 200}
    json conn, result
  end
end
