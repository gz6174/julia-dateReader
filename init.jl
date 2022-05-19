import Dates

function nextMonday(date)
  Dates.tonext(date, 1; same=true)
end

function nextSunday(date)
  Dates.tonext(date, 7; same=false)
end

function weeks(data, n)
  T = Matrix{Dates.Date}(undef, n, 2)
  for i = 1:n
    T[i,1] = data = nextMonday(data)
    T[i,2] = data = nextSunday(data)
  end
  return T
end
