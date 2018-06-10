# Task 1

if ARGV.length < 3
  exit(1)
  end

a = ARGV[1].to_i
b = ARGV[2].to_i

if a<2 or a>36 or b<2 or b>36
  exit(1)
  end

if a == b
  puts ARGV[0]
  exit(0)
  end

i = ARGV[0].to_i(base=a)

if i < 0 or i > 10000
  exit(1)
  end

puts i.to_s(base=b)
