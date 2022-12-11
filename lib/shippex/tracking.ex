defmodule Shippex.Tracking do
  defstruct status: nil,
            tracking_number: nil,
            address_from: nil,
            address_to: nil,
            transaction: nil,
            eta: nil,
            original_eta: nil,
            servicelevel: nil,
            tracking_status: nil,
            tracking_history: nil,
            meta: nil

  defmodule Status do
    defstruct status: nil,
              status_details: nil,
              status_date: nil,
              location: nil
  end
end
