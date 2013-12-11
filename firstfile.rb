def mymethod ( a , b )
  c = a + b
  return c
end

def xx (a)
    if a.even?
        true
    else
        false
    end
end

def hashchange (a_hash)
    a_hash.each do |k,v|
      if v.class != Array
        p v + 10
      end
    end
end

