SECONDS_PER_MIN = 60

START_OF_WEEK = Time.new(2021,5,23)

def time_of_day(delta_minutes)
  t = START_OF_WEEK +  ( delta_minutes * SECONDS_PER_MIN )
  #t.strftime("%A %H:%M")   #%H:%M == %R
  t.strftime("%A %R")
end

p time_of_day(0) == "Sunday 00:00"
p time_of_day(-3) == "Saturday 23:57"
p time_of_day(35) == "Sunday 00:35"
p time_of_day(-1437) == "Saturday 00:03"
p time_of_day(3000) == "Tuesday 02:00"
p time_of_day(800) == "Sunday 13:20"
p time_of_day(-4231) == "Thursday 01:29"