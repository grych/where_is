defmodule WhereIs.MixProject do
  use Mix.Project

  def project do
    [
      app: :where_is,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {WhereIs.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ip2country, git: "https://github.com/grych/ip2country"},
      {:cowboy, "~> 1.0"},
      {:plug, "~> 1.6.0"},
      {:distillery, "2.0.0-rc.7"}
    ]
  end
end
