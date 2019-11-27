defmodule FireblastExampleWeb.FireblastView do
  import Fireblast

  import FireblastExampleWeb.Gettext

  defmodule Section do
    def render(%{attributes: %{"class" => class}, children: children}) do
      ~x(
        <section class=#{class}>
          #{children}
        </section>
      )
    end
  end

  defmodule Row do
    def render(%{children: children}) do
      ~x(
        <Section class="row">
          #{children}
        </Section>
      )
    end
  end

  defmodule Column do
    def render(%{children: children}) do
      ~x(
        <article class="column">
          #{children}
        </article>
      )
    end
  end

  defmodule Hero do
    def render(_) do
      ~x(
        <Section class="phx-hero">
          <h1>#{gettext("Welcome to %{name}!", name: "Phoenix")}</h1>
          <p>A productive web framework that<br/>does not compromise speed or maintainability.</p>
        </Section>
      )
    end
  end

  defmodule LinkItem do
    def render(%{attributes: %{"to" => to}, children: children}) do
      ~x(
        <li>
          <a href=#{to}>#{children}</a>
        </li>
      )
    end
  end

  defmodule ListOfLinks do
    def render(%{attributes: %{"links" => links, "title" => title}}) do
      ~x(
        <Column>
          <h2>#{title}</h2>
          <ul>
            #{
              Enum.map(links, fn %{to: to, text: text} ->
                ~x(<LinkItem to=#{to}>#{text}</LinkItem>)
              end)
            }
          </ul>
        </Column>
      )
    end
  end

  defmodule Resources do
    def render(_) do
      resources = [
        %{
          to: "https://hexdocs.pm/phoenix/overview.html",
          text: "Guides & Docs"
        },
        %{
          to: "https://github.com/phoenixframework/phoenix",
          text: "Source"
        },
        %{
          to: "https://github.com/phoenixframework/phoenix/blob/v1.4/CHANGELOG.md",
          text: "v1.4 Changelog"
        }
      ]

      ~x(
        <ListOfLinks links=#{resources} title="Resources"/>
      )
    end
  end

  defmodule Help do
    def render(_) do
      help_links = [
        %{
          to: "https://elixirforum.com/c/phoenix-forum",
          text: "Forum"
        },
        %{
          to: "https://webchat.freenode.net/?channels=elixir-lang",
          text: "#elixir-lang on Freenode IRC"
        },
        %{
          to: "https://twitter.com/elixirphoenix",
          text: "Twitter @elixirphoenix"
        }
      ]

      ~x(
        <ListOfLinks links=#{help_links} title="Help"/>
      )
    end
  end

  def render("index.html", _) do
    ~x(
      <>
        <Hero/>
        <Row>
          <Resources/>
          <Help/>
        </Row>
      </>
    )
  end
end
