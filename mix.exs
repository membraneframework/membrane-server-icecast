defmodule Membrane.Server.Icecast.MixProject do
  use Mix.Project

  def project do
    [
      app: :membrane_server_icecast,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Membrane.Server.Icecast.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ranch, "~> 1.7"},
      #{:membrane_protocol_icecast, git: "https://github.com/membraneframework/membrane-protocol-icecast", tag: "machine_tests"},
      {:membrane_protocol_icecast, path: "../membrane-protocol-icecast/"}, # TODO change after tests for git ref
      {:mint, "~> 0.2.0", only: :test}
    ]
  end
end