# Task 2

if ARGV.length < 3
  exit(1)
  end

month = ["января","февраля","марта","апреля","мая","июня","июля","августа","сентября","октября","ноября","декабря"].index(ARGV[1])
if month == nil
  exit(1)
  end

year = ARGV[2].to_i
if year < 1 or year > 2999
  exit(1)
  end

dpm = [31,28,31,30,31,30,31,31,30,31,30,31]
if month <= 1
  if (year % 4 == 0 and year % 100 != 0) or year % 400 == 0
    dpm[1] = 29
    end
  end

day = ARGV[0].to_i
if day < 1 or day > dpm[month]
  exit(1)
  end

days = dpm[month] - day

for i in (month+1)..11
  days += dpm[i]
  end

puts days
