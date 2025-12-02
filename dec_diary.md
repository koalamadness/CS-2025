# Computer Science
## 2025/12/02
class Solution:
    def mostWordsFound(self, sentences: List[str]) -> int:


        max_num_words = 0
        for sentence in sentences:

            s_set = sentence.split(" ")

            if len(s_set) > max_num_words:
                max_num_words = len(s_set)

        
        return max_num_words

## 2025/12/01 # to review 
--Truncate Sentence--
class Solution:
    def firstPalindrome(self, words: List[str]) -> str:
        
        res = ""

        for word in words:

            if word == word[::-1]:

                res = word

                return res

        
        return res
--2108. Find First Palindromic String in the Array--        
class Solution:
    def truncateSentence(self, s: str, k: int) -> str:
        
        s_list = s.split()

        s_list = s_list[:k]

        s = " ".join(s_list)

        return s
class Solution:
    def canBeIncreasing(self, nums):
        removed = 0

        for i in range(1, len(nums)):
            if nums[i] <= nums[i - 1]:
                if removed == 1:
                    return False
                removed += 1

                if i == 1 or nums[i] > nums[i - 2]:
                    continue

                if i + 1 < len(nums) and nums[i + 1] <= nums[i - 1]:
                    return False

        return True
class Solution:
    def romanToInt(self, s: str) -> int:
        res = 0
        roman = {
            'I': 1,
            'V': 5,
            'X': 10,
            'L': 50,
            'C': 100,
            'D': 500,
            'M': 1000
        }

        for a, b in zip(s, s[1:]):
            if roman[a] < roman[b]:
                res -= roman[a]
            else:
                res += roman[a]

        return res + roman[s[-1]]
class Solution:
    def minimumOperations(self, nums: List[int]) -> int:
        counter = 0
        while len(nums) != len(set(nums)):
            counter += 1
            nums = nums[3:]
        
        return counter
class Solution:
    def minDeletion(self, s: str, k: int) -> int:
        from collections import Counter
        
        # Contar ocurrencias de cada letra
        letter_dict = Counter(s)
        
        # Si ya tenemos k o menos letras distintas, no hay que borrar nada
        if len(letter_dict) <= k:
            return 0
        
        # Tomar las letras ordenadas por frecuencia ascendente
        freq = sorted(letter_dict.values())
        
        deletions = 0
        
        # Borramos las letras menos frecuentes hasta que queden k
        remove = len(freq) - k  # cuántas letras distintas eliminar
        
        for i in range(remove):
            deletions += freq[i]  # borrar TODAS sus apariciones
        
        return deletions
