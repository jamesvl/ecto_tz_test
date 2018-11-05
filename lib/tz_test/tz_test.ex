defmodule TzTest.TzTest do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tz_test" do
    field(:tz_col, :utc_datetime_usec)
  end

  @doc false
  def changeset(orig, attrs) do
    orig
    |> cast(attrs, [:tz_col])
    |> validate_required([:tz_col])
  end
end
