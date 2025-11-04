# Computer Science
## 2025/11/04
class Solution:
    def passThePillow(self, n: int, time: int) -> int:
        reverse = False
        counter = 1
        while time > 0:

            if not reverse:
                counter += 1
            else:
                counter -= 1
            
            if counter == n:
                reverse = True

            if counter == 1:
                reverse = False    
            
            time -= 1

        return counter 
class Solution:
    def isFascinating(self, n: int) -> bool:
        seen = set()
        nums = list(range(1, 10))
        concatenation = str(n) + str(n*2) + str(n*3)

        for i in concatenation:
            if i == "0":
                return False
            if i in seen:
                return False
            seen.add(i)
            nums.remove(int(i))

        if len(nums) == 0:
            return True

        return False

class Solution:
    def numberOfSteps(self, num: int) -> int:
        steps = 0
        while num > 0:
            if num % 2 == 0:
                num = num / 2
            else:
                num -= 1
            
            steps += 1

        return steps
class Solution:
    def commonFactors(self, a: int, b: int) -> int:
        factors_a = set()
        factors_b = set()

        for i in range(1, a + 1):
            if a % i == 0:
                factors_a.add(i)
            
        for j in range(1, b + 1):
            if b % j == 0:
                factors_b.add(j)

        common = factors_a.intersection(factors_b)

        return len(common)
class Solution:
    def findClosest(self, x: int, y: int, z: int) -> int:
        p1 = abs(x - z)
        p2 = abs(y - z)

        if p2 > p1:
            return 1
        elif p2 < p1:
            return 2
        else:
            return 0
class Solution:
    def smallestEvenMultiple(self, n: int) -> int:
        if n % 2 == 0:
            return n
        else:
            return n * 2
class Solution:
    def findMissingAndRepeatedValues(self, grid: List[List[int]]) -> List[int]:
        counter = 0
        nums = set()
        result = []
        for i in grid:
            for j in i:
                counter += 1
                if j not in nums:
                    nums.add(j)
                else:
                    result.append(j)

        nums2 = set(range(1, counter + 1))
        #print(nums2)
        missing = nums2 - nums

        for num in missing:
            result.append(num)
        return result
class Solution:
    def distanceTraveled(self, mainTank: int, additionalTank: int) -> int:
        total_distance = 0
        fiveL_used = 0

        while mainTank > 0:
            mainTank -= 1
            total_distance += 10
            fiveL_used += 1

            if fiveL_used == 5 and additionalTank > 0:
                additionalTank -= 1
                fiveL_used = 0
                mainTank += 1

        return total_distance
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
