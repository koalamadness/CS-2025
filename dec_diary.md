# Computer Science
2025/12/09
class Solution:
    def mostFrequentEven(self, A: List[int]) -> int:
        mp={}
        val,freq =10**6,0
        for i in A:
            # if even element
            if i%2==0:
                # increase count in map
                if i in mp: mp[i]+=1
                else: mp[i]=1
                # Update smallest with greatest frequency
                if mp[i]>freq or mp[i]==freq and i<val:
                    val, freq =i , mp[i]
        return -1 if freq==0 else val
        
class Solution:
    def secondHighest(self, s: str) -> int:
        nums = "1234567890"
        digits = []
        for i in range(len(s)):
            if s[i] in nums:
                digits.append(int(s[i]))
        digits = set(digits)
        if len(digits) > 0:
            digits.remove(max(digits))
            if len(digits) > 0:
                return max(digits)
            else:
                return -1       
        else:
            return -1
2025/12/08
class Solution:
    def findThePrefixCommonArray(self, A: List[int], B: List[int]) -> List[int]:
        n = len(A)
        prefix_common_array = [0 for _ in range(n)]
        frequency = [0 for _ in range(n + 1)]
        common_count = 0

        # Iterate through the elements of both arrays
        for current_index in range(n):

            # Increment frequency of current elements in A and B
            # Check if the element in A has appeared before (common in prefix)
            frequency[A[current_index]] += 1
            if frequency[A[current_index]] == 2:
                common_count += 1

            # Check if the element in B has appeared before (common in prefix)
            frequency[B[current_index]] += 1
            if frequency[B[current_index]] == 2:
                common_count += 1

            # Store the count of common elements for the current prefix
            prefix_common_array[current_index] = common_count

        # Return the final array with counts of common elements in each prefix
        return prefix_common_array
class Solution:
    def findLucky(self, arr: List[int]) -> int:
        
        num_set = set()
        from collections import Counter

        num_dict = Counter(arr)

        for num in num_dict:

            if num == num_dict[num]:
                num_set.add(num)

        
        if len(num_set) < 1:
            return -1

        return max(list(num_set))


class Solution:
    def uniqueMorseRepresentations(self, words: List[str]) -> int:
        from string import ascii_lowercase
        morse_set = set()
        morse_lst = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]

        for word in words:
            morse = ""
            for letter in word:
                index_letter = ascii_lowercase.index(letter)
                morse += morse_lst[index_letter]

            morse_set.add(morse)
        
        return len(morse_set)
class Solution:
    def createTargetArray(self, nums: List[int], index: List[int]) -> List[int]:
        
        res = []

        for i in range(len(nums)):

            res.insert(index[i], nums[i])

        return res
class Solution:
    def minOperations(self, nums: List[int], k: int) -> int:
        count = 0
        for i in nums:

            if i < k:
                count += 1
        return count
class Solution:
    def stableMountains(self, height: List[int], threshold: int) -> List[int]:
        res = []
        for i in range(1, len(height)):

            if height[i - 1] > threshold:

                res.append(i)

        return res
class Solution:
    def decompressRLElist(self, nums: List[int]) -> List[int]:
        res = []

        for i in range(0, len(nums)-1,2):

            for _ in range(nums[i]):

                res.append(nums[i+1])


        return res
class Solution:
    def numberOfEmployeesWhoMetTarget(self, hours: List[int], target: int) -> int:
        count = 0
        for hour in hours:
            if hour >= target:
                count += 1

        return count
class Solution:
    def buildArray(self, nums: List[int]) -> List[int]:
        
        res = []

        for i in nums:

            res.append(nums[i])

        return res
class Solution:
    def pivotArray(self, nums: List[int], pivot: int) -> List[int]:
        

        less = []
        equal = []
        big = []

        for num in nums:
            if num < pivot:
                less.append(num)
            elif num > pivot:
                big.append(num)
            else:
                equal.append(num)

        return less + equal + big
            
class Solution:
    def shuffle(self, nums: List[int], n: int) -> List[int]:
        res = []
        l1 = nums[:len(nums) // 2]
        l2 = nums[len(nums) // 2:]

        for i in range(len(l1)):

            res.append(l1[i])
            res.append(l2[i])

        return res
class Solution:
    def minOperations(self, nums: List[int], k: int) -> int:
        return sum(nums) % k
class Solution:
    def defangIPaddr(self, address: str) -> str:
        
        address = address.split(".")

        res = "[.]".join(address)

        return res
2025/12/05
class Solution:
    def findGCD(self, nums: List[int]) -> int:
        
        minn = min(nums)
        maxn = max(nums)
        maxGCD = 1
        for i in range(1, (minn*maxn)):

            if minn % i == 0 and maxn % i == 0 :

                GCD = i

                if GCD > maxGCD:

                    maxGCD = GCD

        return maxGCD
2025/12/04
class Solution:
    def maxDistinct(self, s: str) -> int:
        
        return len(set(s))
class Solution:
    def findFinalValue(self, nums: List[int], original: int) -> int:
        
        while original in nums:

            original *=2

        return original
class Solution:
    def countPrefixes(self, words: List[str], s: str) -> int:
        count = 0
        for word in words:

            if word == s[:len(word)]:

                count += 1

        return count
2025/12/03        
class Solution:
    def isUgly(self, n: int) -> bool:
        
        if n <= 0:
            return False

        while n % 2 == 0:

            n = n / 2

        while n % 3 == 0:

            n = n / 3

        while n % 5 == 0:

                n = n / 5

        
        return n == 1
class Solution:
    def isSubsequence(self, s: str, t: str) -> bool:
        
        s_pointer = 0

        if s == "":
            return True

        for c in t:

            if s[s_pointer] == c:

                s_pointer += 1

                if s_pointer == len(s):
                    return True

        return False
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
