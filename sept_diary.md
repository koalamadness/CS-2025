# Computer Science

## 2025/09/17
class Solution:
    def mergeAlternately(self, word1: str, word2: str) -> str:

        merged_string = ""

        i1 = 0
        i2 = 0

        while(i1 < len(word1) and i2 < len(word2)):

            merged_string += word1[i1]
            merged_string += word2[i2]
            
            i1 += 1
            i2 += 1

        if(len(word1)>len(word2)):
            merged_string += word1[i1:]
        else:
            merged_string += word2[i2:]
        
        print(merged_string)
        return merged_string

        class Solution:
    def kidsWithCandies(self, candies: List[int], extraCandies: int) -> List[bool]:
        
        max_candy = max(candies)

        result = []

        for candy in candies:
            if ((candy + extraCandies) >= max_candy):
                result.append(True)
            else:
                result.append(False)
    
        print(result)
        return result

        def canConstruct(self, ransomNote: str, magazine: str) -> bool:

        letter_dict = {}
        
        if(len(ransomNote) > len(magazine)):
            return False
        
        for letter in magazine:
            if letter not in letter_dict:
                letter_dict[letter] = 1
            else:
                letter_dict[letter] += 1

        for letter in ransomNote:
            if letter not in letter_dict:
                return False
            else:
                if(letter_dict[letter] == 0):
                    return False
                letter_dict[letter] -= 1

        return True

## 2025/09/12
for i in range(num):
    if(i is 0):
        continue
    column = num
    if(i is 1):
        print(f"{" " * (column-1)}*") 
    elif(i==(num-1)):
        column -= i
        print(f"{" " * column}{"*" * (2*i - 1)}")
    else:
        column -= i
        print(f"{" " * column}{"*"}{" " * ((2*i)-3)}{"*"}")

## 2025/09/11
num=9

column = math.ceil(num/2)

stars = []

for i in range(num +1 ):
    
    if(i is 0):
        continue
    if(i is 1):
        print(f"{" " * ((column))}*") 
        stars.append(i)
    elif(i is (math.ceil(num/2))):
        column -= 1
        print(f"{" " * (column)}{"*" * (2*i - 1)}")
    elif(i > (math.ceil(num/2))):   
        column += 1
        star_num = stars.pop()
        print(f"{" " * column}{"*" * (star_num)}")
    
    else:
        column -= 1
        print(f"{" " * column}{"*" * (2*i - 1)}")
        stars.append(2*i - 1)

## 2025/09/10
*Python  
num = 7

for i in range(num):

   
    column = num
    if(i is 1):
        print(f"{" " * (column-1)}*") 
    else:
        column -= i
        print(f"{" " * column}{"*" * (2*i - 1)}")

## 2025/09/09
*Python 
- Hash
## 2025/09/08
*Python 
- Queue Implementation
## 2025/09/05
*Java 
-Enum

## 2025/09/04
*Java 
-Streams

## 2025/09/03
*Java 
+ Input Output Stream

## 2025/09/02
<img width="1107" height="686" alt="image" src="https://github.com/user-attachments/assets/efdb7cf0-ed4f-4146-bd65-0d7b8ef06b63" />

## 2025/09/01
* Java
-Review Abstract Class / Interface 
