# Write a function odds in Python to compute the average of the first n odd numbers. 
# For example, odds (1) should return 1, since 1/1 = 1, and odds (4) should return 4, since (1 + 3 + 5 + 7)/4 = 4
def odds(n):
    sum = 0
    for i in range(1, n*2, 2):
        sum += i
    return sum/n

# Write a function squares in Python that uses a list comprehension to calculate the sum of the first n integer squares. 
# For example, squares (1) should return 1, since 12= 1, and squares (4) should return 30, since 12+ 22+ 32+ 42= 30.
def squares(n):
    return sum([i**2 for i in range(1, n+1)])


