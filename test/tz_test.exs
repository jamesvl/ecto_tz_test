defmodule TzTest do
  use ExUnit.Case

  alias TzTest.Repo
  alias TzTest.TzTest

  test "inserts timestamptz record" do
    now = DateTime.utc_now()
    cs = TzTest.changeset(%TzTest{}, %{tz_col: now})

    assert match?({:ok, _tzt}, Repo.insert!(cs))
  end
end
