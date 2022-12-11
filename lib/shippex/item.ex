defmodule Shippex.Item do
  @moduledoc """
  Defines a struct for storing an `Item` in a `Parcel`.

  The `monetary_value` *might* be required depending on the origin/destination
  countries of the shipment. Both `monetary_value` and `insurance` are integers
  stored in USD cents.
  """

  @enforce_keys [
    :description,
    :monetary_value,
    :weight,
    :quantity
  ]
  @fields ~w(description monetary_value weight quantity mass_unit total_value value_currency origin_county tariff_number sku_code eccn_ear99 meta)a
  defstruct @fields

  @type t() :: %__MODULE__{
          description: nil | String.t(),
          monetary_value: nil | integer(),
          weight: nil | number(),
          quantity: nil | number(),
          mass_unit: nil | number(),
          total_value: nil | number(),
          value_currency: nil | number(),
          origin_county: nil | number(),
          tariff_number: nil | number(),
          sku_code: nil | number(),
          eccn_ear99: nil | number(),
          meta: nil | number()
        }

  @doc """
  Builds and returns an `Item`. Use this instead of directly initializing the
  struct.
  """
  @spec new(map()) :: t()
  def new(attrs) do
    attrs = Map.take(attrs, @fields)
    struct(__MODULE__, attrs)
  end
end
