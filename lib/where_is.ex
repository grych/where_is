defmodule WhereIs do
  @moduledoc false

  def country([ip, "country"]) do
    if valid_ip?(ip) do
      {200, stringify(IP2Country.whereis(ip))}
    else
      country(:error)
    end
  end

  def country(_) do
    {400, "invalid request"}
  end

  defp stringify(x) do
    to_string(x) <> "\n"
  end

  defp valid_ip?(ip) do
    r = ~r/^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$/
    ip =~ r
  end
end
