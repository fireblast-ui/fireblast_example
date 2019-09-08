defmodule FireblastExampleWeb.PageController do
  use FireblastExampleWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
