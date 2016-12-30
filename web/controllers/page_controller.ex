defmodule ResumanyElm.PageController do
  use ResumanyElm.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
