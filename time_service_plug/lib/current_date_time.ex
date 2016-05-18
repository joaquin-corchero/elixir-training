defmodule TimeServicePlug.CurrentDateTime do

  alias TimeServicePlug.DateTime

  def local do
    {{year, month, day},{hour, minutes, seconds}} = :calendar.local_time
    %DateTime{
      year: year,
      month: month,
      day: day,
      hour: hour,
      minutes: minutes,
      seconds: seconds
    }
  end
end
