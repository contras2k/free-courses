# Task 3

if ARGV.length < 2
  exit(1)
  end

t1 = ARGV[0].to_i
t2 = ARGV[1].to_i

if t1 < 1 or t1 > 100000 or t2 < 1 or t2 > 100000
  exit(1)
  end

t = t1 + t2

result=""

hours = t / 3600
secs = t % 3600
mins = secs / 60
secs %= 60

if hours > 0
  h0 = hours % 10
  suffix = ""
  if (5..9) === h0 or h0 == 0 or (11..14) === hours
    suffix = "ов"
  elsif (2..4) === h0
    suffix = "а"
    end
  result = hours.to_s + " час" + suffix
  end

if mins > 0
  if result != ""
    result += " "
    end
  m0 = mins % 10
  suffix = "а"
  if (5..9) === m0 or m0 == 0 or (11..14) === mins
    suffix = ""
  elsif (2..4) === m0
    suffix = "ы"
    end
  result += mins.to_s + " минут" + suffix
  end

if secs > 0
  if result != ""
    result += " "
    end
  s0 = secs % 10
  suffix = "а"
  if (5..9) === s0 or s0 == 0 or (11..14) === secs
    suffix = ""
  elsif (2..4) === s0
    suffix = "ы"
    end
  result += secs.to_s + " секунд" + suffix
  end

puts result
