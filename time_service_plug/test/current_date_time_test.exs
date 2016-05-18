defmodule TimeServicePlug.CurrentDateTimeTest do
  use ExUnit.Case
  alias TimeServicePlug.CurrentDateTime

  test "returns current local date time" do
    {{year, month, day}, {hour, minutes, seconds}} = :calendar.local_time

    current = CurrentDateTime.local
    assert current.year == year
    assert current.month == month
    assert current.day == day
    assert current.hour == hour
    assert current.minutes == minutes
    assert current.seconds == seconds
  end
end
