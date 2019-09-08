defmodule FireblastExampleWeb.FireblastView do
  import Fireblast

  import FireblastExampleWeb.Gettext

  def render("index.html", _) do
    ~x(
      <section class="phx-hero">
        <h1>#{gettext("Welcome to %{name}!", name: "Phoenix")}</h1>
        <p>A productive web framework that<br/>does not compromise speed or maintainability.</p>
      </section>
    )
  end
end
