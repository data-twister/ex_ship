defmodule Shippex.Carrier.Fedex.Client do
  @moduledoc false
  use HTTPoison.Base

  def process_url(endpoint) do
    subdomain =
      case Shippex.env() do
        :prod -> "https://ws.fedex.com:443/web-services/#{endpoint}"
        _ -> "https://wsbeta.fedex.com:443/web-services/#{endpoint}"
      end
  end

  def process_request_body(params) do
    params =
      Enum.map(params, fn
        {k, v} when is_atom(k) -> {k, v}
        {k, v} when is_binary(k) -> {String.to_atom(k), v}
      end)

    {:form, params}
  end

  def service_code(_) do
  :ok
  end
end
