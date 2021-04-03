Code.eval_file("mess.exs")
defmodule Bonfire.Common.MixProject do
  use Mix.Project

  def project do
    [
      app: :bonfire_common,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      compilers: [:phoenix, :gettext] ++ Mix.compilers(),
      deps: Mess.deps [
        {:phoenix_live_reload, "~> 1.2", only: :dev},
        {:dbg, "~> 1.0", only: :dev},
        {:zest, "~> 0.1", optional: true}
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application, do: [extra_applications: [:logger, :dbg]]

end
