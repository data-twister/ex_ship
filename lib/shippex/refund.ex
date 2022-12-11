defmodule Shippex.Refund do
  @moduledoc """
  A `Refund` is a representation of a Refund from a given carrier
  """

  alias Shippex.Service

  @enforce_keys [:status, :transaction]
  defstruct [:status, :transaction]

  @type t :: %__MODULE__{
    status: String.t(),
    transaction: String.t()
        }
end
