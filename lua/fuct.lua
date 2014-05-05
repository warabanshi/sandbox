function factrical (n)
    if n == 0 then
        return 1
    else
        return n * factrical(n-1)
    end
end

print("enter a number: ")
a = io.read("*number")
print(factrical(a))

