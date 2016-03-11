defmodule Classwar.PageController do
  use Classwar.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
