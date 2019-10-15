def longestPalindrome(stringInput):
    hashTable = {}
    for element in stringInput:
        hashTable[element] = hashTable.get(element, 0) + 1 

    output = 0
    possible = False
    for element in hashTable:
        value = hashTable[element]
        if value % 2 == 0:
            output += value
        else:
            output += (2*(value%2))
            possible = True 
    if possible:
        output += 1
        
    return output

print(longestPalindrome('abccccdd'))
        