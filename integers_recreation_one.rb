def list_squared(m, n)
  result = []

  for i in (m..n)
    sum = get_squared_divisors(i).sum
    result << [i, sum] if (sum**0.5) == (sum**0.5).to_i
  end
  result
end

def get_squared_divisors(nb)
  squared_divisors = []
  for i in (1..(nb**0.5)+1)
    if nb % i == 0
      squared_divisors << (i**2)
      squared_divisors << ((nb/i)**2)
    end
  end
  squared_divisors.uniq
end
