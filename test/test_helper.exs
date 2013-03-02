Dynamo.under_test(DynamoDemo.Dynamo)
Dynamo.Loader.enable
ExUnit.start

defmodule DynamoDemo.TestCase do
  use ExUnit.CaseTemplate

  # Enable code reloading on test cases
  setup_all do
    Dynamo.Loader.enable
    :ok
  end
end
