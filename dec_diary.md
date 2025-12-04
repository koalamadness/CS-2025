# Computer Science
2025/12/03
class Solution:
    def findErrorNums(self, nums: List[int]) -> List[int]:
        from collections import Counter
        num_dict = Counter(nums)
        result = []
        set1 = set(range(1, len(nums) + 1))

        set1 = set1 - set(nums)

        for num in num_dict:
            if num_dict[num] > 1:

                result.append(num)

        
        for num in set1:

            result.append(num)

        return result
class Solution:
    def isThree(self, n: int) -> bool:
        count=1
        x=n//2+1
        for i in range(1,x):
            if n%i==0:
                count+=1
            
        return count==3

class Solution:
    def toGoatLatin(self, sentence: str) -> str:
        
        vowels = "aeiouAEIOU"

        stnc_list = sentence.split()

        add_a = 1

        for i in range(len(stnc_list)):

            if stnc_list[i][0] in vowels:

                stnc_list[i] = stnc_list[i] + "ma" + "a" * add_a

            else:

                if len(stnc_list[i]) < 2:

                    stnc_list[i] = stnc_list[i] + "ma" + "a" * add_a
                
                else:

                    stnc_list[i] = stnc_list[i][1:] + stnc_list[i][0] + "ma" + "a" * add_a

            add_a += 1

        sentence = " ".join(stnc_list)

        return sentence

class Solution:
    def search(self, nums: List[int], target: int) -> int:
        low = 0
        high = len(nums) - 1

        while low <= high:
            mid = low + (high - low) // 2

            if nums[mid] < target:
                low = mid + 1
            elif nums[mid] > target:
                high = mid - 1
            else:
                return mid
        return -1


class Solution:
    def finalValueAfterOperations(self, operations: List[str]) -> int:
        result = 0
        for op in operations:
            if "-" in op:
                result -= 1
            elif "+" in op:
                result += 1

        return result
class Solution:
    def countMatches(self, items: List[List[str]], ruleKey: str, ruleValue: str) -> int:
        index = None
        if ruleKey == "type":
            index = 0
        elif ruleKey == "color":
            index = 1
        elif ruleKey == "name":
            index = 2

        count = 0

        for item in items:

            if ruleValue == item[index]:
                count += 1

        return count
class Solution:
    def largestAltitude(self, gain: List[int]) -> int:
        
        max_alt = 0

        alt = 0

        for i in gain:

            alt += i

            if alt > max_alt:
                max_alt = alt

        return max_alt
class Solution:
    def findPeaks(self, mountain: List[int]) -> List[int]:
        result = []
        for i in range(1, len(mountain) - 1):
            if mountain[i] > mountain[i-1] and mountain[i] > mountain[i+1]:

                result.append(i)

        return result
## 2025/12/02
class Solution:
    def maxProduct(self, nums: List[int]) -> int:
        
        nums.sort()

        return (nums[-2] - 1) * (nums[-1] - 1)
class Solution:
    def maxFrequencyElements(self, nums: List[int]) -> int:
        
        from collections import Counter

        freq_dict = Counter(nums)

        max_value = max(freq_dict.values())

        total = 0

        for key in freq_dict:
            if freq_dict[key] == max_value:

                total +=freq_dict[key]

        return total
class Solution:
    def heightChecker(self, heights: List[int]) -> int:
        
        expected = heights.copy()

        heights.sort()

        count = 0

        for i in range(len(heights)):

            if heights[i] != expected[i]:

                count += 1

        return count

class Solution:
    def separateDigits(self, nums: List[int]) -> List[int]:
        
        result = []

        for num in nums:

            str_num = str(num)

            for c in str_num:

                result.append(int(c))

        return result
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
