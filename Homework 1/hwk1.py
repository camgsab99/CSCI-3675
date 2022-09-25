# Cameron Sabiston
# CSCI 3675
# 08/29/2022
# Homework 1 - Due 09/04/2022

# Question 1
def halveEvensImperative(nums_list):
    
    for i in nums_list[:]:
        if i % 2 != 0:
            nums_list.remove(i)
        else:
            nums_list[nums_list.index(i)] = int(i / 2)
    return nums_list

# Question 2
def halveEvensRecursive(nums_list):
    if len(nums_list) == 0:
        return []
    elif nums_list[0] % 2 == 0:
        evens = [int(nums_list[0] / 2)]
        return evens + halveEvensRecursive(nums_list[1:])
    else:
        return halveEvensRecursive(nums_list[1:])

# Question 3
def halveEvensComprehension(nums_list):
    return [int(i / 2) for i in nums_list if i % 2 == 0]

# Question 4
def capitalizeImperative(userWord):
    userWordCap = userWord[0].upper() + userWord[1:].lower()
    return userWordCap

# Question 5
def capitalizeComprehension(userWord):
    return "".join([userWord[i].upper() if i == 0 else userWord[i].lower() for i in range(len(userWord))])

# Question 6
def sumImperative(nums_list):
    total = 0
    for i in nums_list:
        total += i
    return total

# Question 7
def sumRecursive(nums_list):
    if len(nums_list) == 0:
        return 0
    else:
        return nums_list[0] + sumRecursive(nums_list[1:])

# Question 8
def palindromeImperative(userWord):
    if userWord == userWord[::-1]:
        return True
    else:
        return False

# Question 9
def palindromeRecursive(userWord):
    if len(userWord) == 0:
        return True
    elif userWord[0] == userWord[-1]:
        return palindromeRecursive(userWord[1:-1])
    else:
        return False

# Question 10
def inRangeRecursive(Start, End, list):
    if len(list) == 0:
        return []
    elif list[0] in range(Start, End+1):
        return [list[0]] + inRangeRecursive(Start, End, list[1:])
    else:
        return inRangeRecursive(Start, End, list[1:])

# Question 11
def inRangeComeprehension(Start, End, list):
    return [nums for nums in list if nums in range(Start, End+1)]

# Test Cases
# nums_list = [0, 2, 1, 7, 8, 56, 17, 18]
# userWord = "grEENVILLe"
# palindrome1 = [0, 2, 0]
# palindrome2 = "abb"
# Start = 5
# End = 10
# range_list = range(1, 15)
# print(halveEvensImperative(nums_list))
# print(halveEvensRecursive(nums_list))
# print(halveEvensComprehension(nums_list))
# print(capitalizeImperative(userWord))
# print(capitalizeComprehension(userWord))
# print(sumImperative(nums_list))
# print(sumRecursive(nums_list))
# print(palindromeImperative(palindrome1))
# print(palindromeImperative(palindrome2))
# print(palindromeRecursive(palindrome1))
# print(palindromeRecursive(palindrome2))
# print(inRangeRecursive(Start, End, range_list))
# print(inRangeComeprehension(Start, End, range_list))
