defmodule PLM.Mixfile do
  use Mix.Project

  def project() do
    [
      app: :plm,
      version: "0.7.3",
      elixir: "~> 1.7",
      description: "PLM Product Lifecycle Management",
      package: package(),
      deps: deps()
    ]
  end

  def package do
    [
      files: ~w(doc lib src mix.exs LICENSE),
      licenses: ["ISC"],
      maintainers: ["Namdak Tonpa"],
      name: :plm,
      links: %{"GitHub" => "https://github.com/enterprizing/plm"}
    ]
  end

  def application() do
    [
      mod: {PLM.Application, []},
      applications: [:syn, :form, :nitro, :ranch, :cowboy, :rocksdb, :kvs, :erp, :bpe, :n2o, :chat]
    ]
  end

  def deps() do
    [
      {:ex_doc, "~> 0.20.2", only: :dev},
      {:asn1ex, github: "vicentfg/asn1ex", only: :dev},
      {:cowboy, "~> 2.5.0"},
      {:rocksdb, "~> 1.2.0"},
      {:chat, "~> 3.7.4"},
      {:n2o, "~> 6.7.5"},
      {:syn, "~> 1.6.3"},
      {:kvs, "~> 6.7.7"},
      {:erp, "~> 0.7.15"},
      {:bpe, "~> 4.7.5"},
      {:nitro, "~> 4.7.3"},
      {:form, "~> 4.7.0"}
    ]
  end
end
