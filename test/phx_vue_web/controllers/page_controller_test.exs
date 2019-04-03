defmodule PhxVueWeb.PageControllerTest do
  use PhxVueWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "<!DOCTYPE html>\n<html lang=\"en\">\n  <head>\n    <meta charset=\"utf-8\"/>\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\"/>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"/>\n    <title>PhxVue · Phoenix Framework</title>\n    <link rel=\"stylesheet\" href=\"/css/app.css\"/>\n  </head>\n  <body>\n    <header>\n      <section class=\"container\">\n        <nav role=\"navigation\">\n          <ul>\n            <li><a href=\"https://hexdocs.pm/phoenix/overview.html\">Get Started</a></li>\n          </ul>\n        </nav>\n        <a href=\"http://phoenixframework.org/\" class=\"phx-logo\">\n          <img src=\"/images/phoenix.png\" alt=\"Phoenix Framework Logo\"/>\n        </a>\n      </section>\n    </header>\n    <main role=\"main\" class=\"container\">\n      <p class=\"alert alert-info\" role=\"alert\"></p>\n      <p class=\"alert alert-danger\" role=\"alert\"></p>\n<section class=\"phx-hero\">\n</section>\n\n<section class=\"row\">\n  <article class=\"column\">\n  </article>\n  <div id=\"app\"></div>\n</section>\n    </main>\n    <script type=\"text/javascript\" src=\"/js/app.js\"></script>\n  </body>\n</html>\n"
  end
  test "refute GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) != "Welcome to Phoenix!"
  end
  test "assert small portion GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "<a href=\"https://hexdocs.pm/phoenix/overview.html\">Get Started</a>"
  end

  test "Ensure vue ties into app through route GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "div id=\"app\"
  end
end
