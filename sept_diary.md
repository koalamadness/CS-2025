# Computer Science
## 2025/09/24
    def firstUniqChar(self, s: str) -> int:
            s_set = set(s)
            min_index = len(s) -1

            has_unique_letter = False

            for letter in s_set:
                letter_count = s.count(letter)

                if letter_count < 2:
                    has_unique_letter = True

                    index = s.find(letter)
                    
                    if index < min_index:
                        min_index = index
            

            if has_unique_letter:
                return min_index
            else:
                return -1
## 2025/09/23
class Solution:
    def wordPattern(self, pattern: str, s: str) -> bool:
        
        p_dict = {}
        s_list = s.split(" ")

        if(len(pattern) != len(s_list)):
            return False

        for i in range(len(pattern)):

            if(pattern[i] in p_dict.keys()):
                if p_dict[pattern[i]] != s_list[i]:
                    return False
            
            if(s_list[i] in p_dict.values()):
                for key, value in p_dict.items():
                    if p_dict[key] == s_list[i] and key != pattern[i]:
                        return False 
                        

            if(pattern[i] in p_dict.keys() and s_list[i] in p_dict.values()):
                if p_dict[pattern[i]] != s_list[i]:
                    return False
            else:
                p_dict[pattern[i]] = s_list[i]
                print(p_dict)
        return True
## 2025/09/22

import math

#self
def isHappy(n: int) -> bool:
    
    n_digits = len(str(n))

    if n_digits == 1:
        if n== 1:
            return True
    
    i = n_digits
    
    i_string = 0

    sum = 0

    divider = ''

    digit = 0
    try:
        while(i > 0):

           
            n = int(str(n)[i_string:])
            
            divider = '1' + (i-1)*'0'
            print(divider)

            digit = math.floor(n /int(divider))
            print(digit)

            sum += (digit * digit)

            i_string += 1
            i -= 1
            
            #fix sum == 1

            if sum == 1 and len(str(n)) == 1:
                return True
            
            if i == 0:
           
                n = sum
                
                n_digits = len(str(n))

                i = n_digits
                    
                i_string = 0
                
                sum = 0

                divider = ''

                digit = 0
                #fix i:string, divider, digit etc 

    except MemoryError:
        return False

    print(sum)
    return False
    # try catch 

print(isHappy(77))
## 2025/09/19
        
def strStr(haystack: str, needle: str) -> int:
    
    i_needle = 1
    current_first_index = 0
    
    on_track_list = []

    on_track = False
    
    needle_compare = needle[:len(needle) - len(needle) + i_needle]
    
    print(needle_compare)
    string_compare = ""

    ## i < len(haystack) i += 1

    i = 0
    while (i < len(haystack)):
        if haystack[i] == needle:
            current_first_index = i
            return current_first_index 
        
        # first char
        if haystack[i] == needle_compare:
            current_first_index = i
            string_compare += haystack[i]
            i_needle += 1
            #update needle_compare
            needle_compare = needle[:len(needle) - len(needle) + i_needle]

            on_track = True
            i += 1
            continue
            
        if on_track:

            if(haystack[i] == needle[0]):
                on_track_list.append(i)

            string_compare += haystack[i]

            print(string_compare, needle_compare, "ontrack")
            if string_compare == needle:
                return current_first_index
     
            if string_compare == needle_compare:
                i_needle += 1
                needle_compare = needle[:len(needle) - len(needle) + i_needle]
                i += 1
                continue
            else:
                on_track = False
                current_first_index = 0
                i_needle = 1
                needle_compare = needle[:len(needle) - len(needle) + i_needle]
                string_compare = ""
                #i += 1
                print("wronggtun")
            #turns False 


        i += 1

        #check
        if len(on_track_list) >= 1:
         i = on_track_list.pop(0)
    return -1 
## 2025/09/18
        
    def lengthOfLastWord(self, s: str) -> int:
        str_length = len(s)-1
        i = str_length
        letter_count = 0
        seen_word = False
        while(i > 0):
            
            if(s[i] == " "):
                if seen_word:
                    return letter_count
            else:
                letter_count += 1
                seen_word = True
            i -= 1
        return letter_count

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
