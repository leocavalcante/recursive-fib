def fibonacci(n)
  return n if n <= 1
  return fibonacci(n - 1) + fibonacci(n - 2)
end

begin
  sequences = ARGV[0].to_i
  start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  output = fibonacci(sequences)
  finish = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  elapsed = (finish - start) * 1000
  puts "[Ruby]\nFib: #{sequences}x | Result: #{output} | Time: #{elapsed.to_i}ms"
rescue
  puts "[Ruby] Invalid argument"
end