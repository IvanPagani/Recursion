def fibs(n)
  return []  if n <= 0
  return [0] if n == 1

  fib_seq = Array.new(n)
  fib_seq[0] = 0
  fib_seq[1] = 1

  (2...n).each do |i|
    fib_seq[i] = fib_seq[i - 1] + fib_seq[i - 2]
  end

  return fib_seq
end

def fibs_rec(n)
  puts 'This was printed recursively'
  
  return []     if n <= 0
  return [0]    if n == 1
  return [0, 1] if n == 2

  fib_seq = fibs_rec(n - 1)
  fib_seq << fib_seq[-1] + fib_seq[-2]

  return fib_seq
end

def merge_sort(array)
  # Base case
  return array if array.length <= 1

  # Recursive case
  half  = array.length / 2
  left  = merge_sort(array[0...half])
  right = merge_sort(array[half..-1])

  sorted = []

  until left.empty? || right.empty?
    if left.first <= right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end

  # After merging the smallest elements from left and right,
  # append the rest (whichever side still has elements)
  return sorted + left + right
end