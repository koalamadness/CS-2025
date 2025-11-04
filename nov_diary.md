# Computer Science
## 2025/11/03
<img width="572" height="507" alt="image" src="https://github.com/user-attachments/assets/5a8df8dc-39f2-45a5-a577-83f607805ef5" />
<img width="516" height="643" alt="image" src="https://github.com/user-attachments/assets/918de76f-1a6d-4715-b12a-f5f345467657" />
import string
class Solution:
    def reverseDegree(self, s: str) -> int:
        result = 0
        for i in range(len(s)):
            index = string.ascii_lowercase.index(s[i]) 
            product = (i + 1) * (26 - index)
            result += product 
            
        return result
class Solution:
    def maxFreqSum(self, s: str) -> int:
        vowels = "aeiou"
        max_vowel = 0
        max_consonant = 0
        vowel_dict = {}
        consonant_dict = {}
       
        for i in s:
            if i in vowels:
                if i not in vowel_dict:
                    vowel_dict[i] = 1
                else:
                    vowel_dict[i] += 1

                if vowel_dict[i] > max_vowel:
                    max_vowel = vowel_dict[i] 

            else:
                if i not in consonant_dict:
                    consonant_dict[i] = 1
                else:
                    consonant_dict[i] += 1       

                if consonant_dict[i] > max_consonant:
                    max_consonant = consonant_dict[i]     

        return max_consonant + max_vowel
