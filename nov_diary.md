# Computer Science
## 2025/11/11
class Solution:
    def checkDivisibility(self, n: int) -> bool:
        
        str_num = str(n)
        s=0
        p=1
        for c in str_num:
            s += int(c)
            p *= int(c)

        return n % (s + p) == 0
class Solution:
    def smallestNumber(self, n: int, t: int) -> int:
        
    
    
        while True:
            product = 1
            str_num = str(n)

            for c in str_num:
                product *= int(c)
            
            if product % t == 0:
                return int(str_num)

            n += 1
class Solution:
    def arraySign(self, nums: List[int]) -> int:
        nums.sort()

        if nums[0] > 0:
            return 1

        count = 0

        for num in nums:
            if num == 0:
                return 0

            if num > 0:  
                break   
            
            count += 1  
        
        if count % 2 == 0:
            return 1
        else:
            return -1 
class Solution:
    def maxProduct(self, n: int) -> int:
        
        str_num = str(n)
        num_lst = list(str_num)

        num_lst.sort()

        return int(num_lst[-1]) * int(num_lst[-2])


class Solution:
    def convertTemperature(self, celsius: float) -> List[float]:
        return [celsius + 273.15, celsius * 1.80 + 32]
class Solution:
    def smallestIndex(self, nums: List[int]) -> int:
        
        for i in range(len(nums)):

            str_num = str(nums[i])

            sums = 0

            for c in str_num:
                sums += int(c)

            if sums == i:
                return i


        return -1
## 2025/11/10
class Solution:
    def smallestIndex(self, nums: List[int]) -> int:
        
        for i in range(len(nums)):

            str_num = str(nums[i])

            sums = 0

            for c in str_num:
                sums += int(c)

            if sums == i:
                return i


        return -1
class Solution:
    def generateTag(self, caption: str) -> str:
        result = "#"
        
        words = caption.split() 
        if len(caption.split()) > 0:
            words[0] = words[0].lower()
            result += words[0]
        if len(words) > 1: 
            for i in range(1, len(words)):
                result += words[i].title()

        if len(result) > 100:
            result = result[:100]         
            
        return result
class Solution:
    def findValidPair(self, s: str) -> str:
        result = ""
        for i in range(len(s) - 1):
            num1 = s[i]
            num2 = s[i + 1]

            if num1 == num2:
                continue

            if int(num1) == s.count(num1) and int(num2) == s.count(num2):
                result = num1 + num2
                return result
        return result
import operator

class Solution:
    def sortPeople(self, names: List[str], heights: List[int]) -> List[str]:
        result = []
        zipped = zip(names, heights)

        zipped = list(zipped)

        res = sorted(zipped, key = operator.itemgetter(1), reverse=True)
        for pair in res:
            result.append(pair[0])
        return result
class Solution:
    def rowAndMaximumOnes(self, mat: List[List[int]]) -> List[int]:
        result = [0,0]
        max_ones = 0
        for i in range(len(mat)):
            ones = sum(mat[i])

            if ones > max_ones:
                result[0] = i
                result[1] = ones
                max_ones = ones

        return result



class Solution:
    def maximumWealth(self, accounts: List[List[int]]) -> int:
        max_wealth = 0
    
        for customer in accounts:
            wealth = sum(customer)

            if wealth > max_wealth:
                max_wealth = wealth

        return max_wealth

class Solution:
    def flipAndInvertImage(self, image: List[List[int]]) -> List[List[int]]:
        
        for i in range(len(image)):
            image[i] = image[i][::-1]
            
        for i in range(len(image)):
            for j in range(len(image[i])):
                if image[i][j] == 0:
                    image[i][j] += 1
                else:
                    image[i][j] -= 1

        return image
class Solution:
    def isMonotonic(self, nums: List[int]) -> bool:
        if len(nums) < 2:
            return True
        
        direction = 0  # 0 means unknown, 1 means increasing, -1 means decreasing
        
        for i in range(1, len(nums)):
            if nums[i] > nums[i-1]:  # increasing
                if direction == 0:
                    direction = 1
                elif direction == -1:
                    return False
            elif nums[i] < nums[i-1]:  # decreasing
                if direction == 0:
                    direction = -1
                elif direction == 1:
                    return False
        
        return True
class Solution:
    def checkRecord(self, s: str) -> bool:
        absent_count = 0
        if "LLL" in s:
            late = True
        else:
            late = False
        
        for c in s:
            if c == "A":
                absent_count += 1
        
        if absent_count < 2 and not late:
            return True
        
        return False
## 2025/11/07
class Solution:
    def buyChoco(self, prices: List[int], money: int) -> int:
        prices.sort()

        if prices[0] + prices[1] > money:
            return money

        return money- (prices[0] + prices[1] )
class Solution:
    def finalString(self, s: str) -> str:
        result = ""
        for c in s:
            if c != "i":
                result += c
            else:
                result = result[::-1]

        return result

class Solution:
    def alternatingSum(self, nums: List[int]) -> int:
        total = 0
        sign = 1
        for num in nums:
            total += num * sign

            sign *= -1

        return total
class Solution:
    def getConcatenation(self, nums: List[int]) -> List[int]:
        return nums + nums
class Solution:
    def differenceOfSum(self, nums: List[int]) -> int:
        elt_sum = 0
        digit_sum = 0

        for num in nums:
            elt_sum += num
            num_string = str(num)

            for i in num_string:
                digit_sum += int(i)
        
        return abs(digit_sum - elt_sum)
class Solution:
    def alternateDigitSum(self, n: int) -> int:
        total = 0
        num_string = str(n)
        sign = 1

        for num in num_string:
            number = int(num) * sign
            total += number

            sign *= -1

        return total



class Solution:
    def squareIsWhite(self, coordinates: str) -> bool:
        letters = ["a", "b", "c", "d", "e", "f", "g", "h"]
    
        letter_index = letters.index(coordinates[0]) + 1
        number = int(coordinates[1])

        if letter_index % 2 == 0 and number % 2 == 0:
            return False
        elif letter_index % 2 == 0 and number % 2 != 0:
            return True
        elif letter_index % 2 != 0 and number % 2 == 0:
            return True
        else:
            return False
class Solution:
    def countOperations(self, num1: int, num2: int) -> int:
        count = 0

        while num1 != 0 and num2 != 0:
            if num1 >= num2:
                num1 = num1 - num2
            else:
                num2 = num2 - num1
            count += 1

        return count    

class Solution:
    def countDigits(self, num: int) -> int:
        num_string = str(num)
        count = 0
        for char in num_string:
            if num % int(char) == 0:
                count += 1

        return count
class Solution:
    def getFinalState(self, nums: List[int], k: int, multiplier: int) -> List[int]:
        
        for i in range(k):

            min_num = min(nums)
            index = nums.index(min_num)

            nums[index] = nums[index] * multiplier
        return nums
class Solution:
    def findNumbers(self, nums: List[int]) -> int:
        counter = 0
        for num in nums:
            if len(str(num)) % 2 == 0:
                counter += 1

        return counter
## 2025/11/06
<img width="732" height="687" alt="image" src="https://github.com/user-attachments/assets/4602da1e-c0ef-48b2-8ea2-f433f731abce" />
<img width="1199" height="702" alt="image" src="https://github.com/user-attachments/assets/0a757ad7-572f-428c-9cc7-2b42098dc751" />

## 2025/11/05
<img width="676" height="651" alt="image" src="https://github.com/user-attachments/assets/41a1188b-86ac-423c-bec0-4e4cbdf6387b" />
<img width="715" height="721" alt="image" src="https://github.com/user-attachments/assets/e77d8a71-d20a-4d3d-9ae7-7085785de05d" />
<img width="663" height="589" alt="image" src="https://github.com/user-attachments/assets/c9a5ffb2-9092-4da6-99c9-27d7c7c1f609" />

class Solution:
    def findNonMinOrMax(self, nums: List[int]) -> int:
        
        if len(nums) == 1 or len(nums) == 2:
            return -1

        nums.sort()

        return nums[1]
class Solution:
    def countSeniors(self, details: List[str]) -> int:
        
        counter = 0

        for data in details:

            age = int(data[11:13])
            #print(age)
            if age > 60:
                counter += 1
        
        return counter
class Solution:
    def findMaxConsecutiveOnes(self, nums: List[int]) -> int:
        max_ones = 0
        is_consecutive = False
        counter = 0

        for i in nums:
            if i == 1 and not is_consecutive:
                counter += 1
                is_consecutive = True
            elif i == 1 and is_consecutive:
                counter += 1
            elif i == 0 and is_consecutive:
                counter = 0
                is_consecutive = False

            if counter > max_ones:
                max_ones = counter    
        return max_ones


class Solution:
    def canAliceWin(self, n: int) -> bool:
        alice = 10
        bob = None

        while True:

            if n - alice < 0:
                return False
            
            n -= alice 

            bob = alice - 1

            if n - bob < 0:
                return True

            n -= bob

            alice = bob - 1        
class Solution:
    def hasSameDigits(self, s: str) -> bool:
        
        while len(s) != 2:
        
            digits = ""

            for i in range(len(s)-1):
                digits = digits + str((int(s[i]) + int(s[i+1])) % 10)
               # print("int1", s[i], "inti+1", s[i + 1])
              #  print(digits)
            s = digits

        return s[0] == s[1]    
class Solution:
    def getSneakyNumbers(self, nums: List[int]) -> List[int]:
        digits = {}
        result = []
        for num in nums:
            if num not in digits:
                digits[num] = 1
            else:
                digits[num] += 1
                result.append(num)
        
        return result
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
