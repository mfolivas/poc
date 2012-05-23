class Ackermann
  def self.ack(m,n)
    return n + 1          if m == 0
    return ack(m - 1, 1)  if n == 0
    return ack(m - 1, ack(m, n - 1))
  end
end