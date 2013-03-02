defmodule DynamoDemo.Mixfile do
  use Mix.Project

  def project do
    [ app: :dynamo_demo,
      version: "0.0.1",
      dynamos: [DynamoDemo.Dynamo],
      compilers: [:elixir, :dynamo, :app],
      env: [prod: [compile_path: "ebin"]],
      compile_path: "tmp/#{Mix.env}/dynamo_demo/ebin",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [ applications: [:cowboy, :dynamo],
      mod: { DynamoDemo, [] } ]
  end

  defp deps do
    [ { :ranch, %r(.*), github: "extend/ranch" },
      { :cowboy, %r(.*), github: "extend/cowboy" },
      { :dynamo, "0.1.0.dev", github: "elixir-lang/dynamo" } ]
  end
end
