# Computer Science

## 2025/11/25
class Solution:
    def winningPlayerCount(self, n: int, picks: List[List[int]]) -> int:
        
        winners = set()

        players = {} # id : [color1, color1, color2]

        for pick in picks:

            player = pick[0]

            color = pick[1]

            if player not in players:

                players[player] = [color]

            else:

                players[player].append(color)


            if players[player].count(color) > player and player not in winners:

                winners.add(player)
                
        
        return len(winners)
class Solution:
    def isPossibleToSplit(self, nums: List[int]) -> bool:
        
        count_num = {}

        for num in nums:

            if num not in count_num:

                count_num[num] = 1
            else:

                count_num[num] += 1

                if count_num[num] > 2:

                    return False

        return True
class Solution:
    def minOperations(self, nums: List[int], k: int) -> int:
        
        collection = set(range(1, k + 1))

        set_nums = set()

        count_operation = 0


        while collection != set_nums:

            num_popped = nums.pop()
            if num_popped in collection:
               set_nums.add(num_popped)

            count_operation += 1

            


        return count_operation
class Solution:
    def isPathCrossing(self, path: str) -> bool:
        
        coordinates = {"0_0": 1}

        coordinate = [ 0 , 0 ]

        for direction in path:

            if direction == "N":
                coordinate[1] += 1
            elif direction == "S":
                coordinate[1] -= 1
            elif direction == "E":
                coordinate[0] += 1
            elif direction == "W":
                coordinate[0] -= 1

            string_coordinate = str(coordinate[0]) + "_" + str(coordinate[1])

            if string_coordinate in coordinates:
                return True
            else:
                coordinates[string_coordinate] = coordinate

        return False
## 2025/11/24
class UndergroundSystem:

    def __init__(self):
        self.ids = {} # id: [station, t] 
        self.avg_time = {} # station_station : [4, 2, 3] <-time

    def checkIn(self, id: int, stationName: str, t: int) -> None:
        self.ids[id] = [stationName, t] 

    def checkOut(self, id: int, stationName: str, t: int) -> None:
        time_diff = t - self.ids[id][1]
        stations = self.ids[id][0] + "_" + stationName

        if stations not in self.avg_time:

            self.avg_time[stations] = [time_diff]

        else:

            self.avg_time[stations].append(time_diff)

    def getAverageTime(self, startStation: str, endStation: str) -> float:
        stations = startStation + "_" + endStation
        average = sum(self.avg_time[stations]) / len(self.avg_time[stations])

        return average

        


# Your UndergroundSystem object will be instantiated and called as such:
# obj = UndergroundSystem()
# obj.checkIn(id,stationName,t)
# obj.checkOut(id,stationName,t)
# param_3 = obj.getAverageTime(startStation,endStation)
class RecentCounter:

    def __init__(self):
        self.set = set()

    def ping(self, t: int) -> int:
        
        self.set.add(t)

        min_t = t - 3000

        max_t = t

        n_requests = 0
        for num in self.set:

            if num >= min_t and num <= max_t:
                n_requests += 1

        return n_requests
class CustomStack:

    def __init__(self, maxSize: int):
        self.maxSize = maxSize
        self.stack = []

    def push(self, x: int) -> None:
        if len(self.stack) < self.maxSize:
            self.stack.append(x)

    def pop(self) -> int:
        if len(self.stack) < 1:
            return -1

        x = self.stack.pop()
        return x

    def increment(self, k: int, val: int) -> None:
        
        if len(self.stack) < k:
            for i in range(len(self.stack)):
                self.stack[i] += val
        
        else:
            for i in range(k):
                self.stack[i] += val
class Solution:
    def sortedSquares(self, nums: List[int]) -> List[int]:
        
        for i in range(len(nums)):

            nums[i] = nums[i] ** 2


        nums.sort()

        return nums
class Solution:
    def isPrefixOfWord(self, sentence: str, searchWord: str) -> int:
        
        s_list = sentence.split()

        index = 0
        for word in s_list:
            index += 1

            if word[:len(searchWord)] == searchWord :

                return index

        return -1 
class Solution:
    def scoreOfString(self, s: str) -> int:
        
        total = 0

        for i in range(len(s) - 1):

            total += abs(ord(s[i]) - ord(s[i + 1]))

        return total

## 2025/11/14

class Solution:
    def prefixCount(self, words: List[str], pref: str) -> int:
        
        count = 0

        for word in words:
            if pref in word and pref == word[:len(pref)]:
                count += 1

        return count
class Solution:
    def countDistinctIntegers(self, nums: List[int]) -> int:
        
        nums_set = set(nums)

        counter = len(nums_set)

        for i in range(len(nums)):

            str_num = str(nums[i])[::-1]

            num = int(str_num)

            if num not in nums_set:
                counter += 1 
                nums_set.add(num)

        return counter
class Solution:
    def canBeTypedWords(self, text: str, brokenLetters: str) -> int:
        set_letters = set(brokenLetters)

        word_list = text.split()

        counter = 0

        for word in word_list:
            
            word_set = set(word)

            if word_set - set_letters == word_set:
                counter += 1

        
        return counter
class Solution:
    def findIntersectionValues(self, nums1: List[int], nums2: List[int]) -> List[int]:
        set1 = set(nums1)
        set2 = set(nums2)

        result = []

        count1 = 0
        count2 = 0
        for i in nums1:
            if i in set2:
                count1 += 1
        
        for j in nums2:
            if j in set1:
                count2 += 1

        return [count1, count2]
## 2025/11/13
class Solution:
    def digitCount(self, num: str) -> bool:
        for i in range(len(num)):

            if num.count(str(i)) != int(num[i]) :

                return False

        return True
class Solution:
    def findTheArrayConcVal(self, nums: List[int]) -> int:
        
        total = 0

        while nums:

            if len(nums) > 1:
                first_el = nums[0]
                last_el = nums[-1]
                del nums[0]
                del nums[-1]
                concatenation = str(first_el) + str(last_el)
            else:
                concatenation = nums[0]
                del nums[0]
            
            total += int(concatenation)

        return total    
## 2025/11/12
OA 
class Solution:
    def arrayChange(self, nums: List[int], operations: List[List[int]]) -> List[int]:
        # Mapa: número → índice actual en nums
        position = {num: i for i, num in enumerate(nums)}

        for old, new in operations:
            idx = position[old]     # posición del número viejo
            nums[idx] = new         # reemplazar en el array
            position[new] = idx     # actualizar el mapa
            del position[old]       # eliminar el viejo
        return nums
            
class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:
        
        result = []

        anagram_dict = {}

        for word in strs:
            word_list = list(word)
            copy_word = word
            word_list.sort()
            word = "".join(word_list)

            if word not in anagram_dict:
                anagram_dict[word] = [copy_word]
            else:
                anagram_dict[word].append(copy_word)


        for key in anagram_dict:
            result.append(anagram_dict[key])

        return result
class Solution:
    def canMakeArithmeticProgression(self, arr: List[int]) -> bool:
        
        arr.sort()

        diff = arr[1] - arr[0]

        for i in range( len(arr) - 1 ):
            if arr[i + 1] - arr[i] != diff:
                return False

        return True    
class Solution:
    def isValid(self, word: str) -> bool:
        vowels = "AEIOUaeiou"
        if len(word) < 3:
            return False

        word = set(word)

        consonant_counter = 0
        vowel_counter = 0

        digits = "0123456789"

        for c in word:
            if c.isalnum() and c not in vowels and c not in digits:
                consonant_counter += 1
            elif c.isalnum() and c in vowels:
                vowel_counter += 1

            if not c.isalnum():
                return False

        if vowel_counter > 0 and consonant_counter > 0:
            return True
        else:
            return False 
class Solution:
    def countKeyChanges(self, s: str) -> int:
        
        s = s.lower()
        count = 0

        for i in range(1, len(s)):
            if s[i] != s[i-1]:
                count += 1

        return count
class Solution:
    def vowelStrings(self, words: List[str], left: int, right: int) -> int:
        count = 0
        vowels = "aeiou"

        for i in range(left, right + 1):
            if words[i][0] in vowels and words[i][-1] in vowels:
                count += 1
        
        return count 
        
class Solution:
    def similarPairs(self, words: List[str]) -> int:
        word_table = {}
        count = 0
        counter = 1
        for word in words:
            word_set = set(word)
            if len(word_table) > 0:
                for key in word_table:
                    if word_set == word_table[key]:
                        count += 1
            word_table[word + str(counter) ] = word_set
            counter += 1
        return count

class Solution:
    def isCircularSentence(self, sentence: str) -> bool:
        
        s_split = sentence.split()

        for i in range(len(s_split) - 1):
            if s_split[i][-1] != s_split[i+1][0]:
                return False

        if s_split[-1][-1] != s_split[0][0]:
            return False

        return True
class Solution:
    def sortSentence(self, s: str) -> str:
        
        word_list = s.split()

        s_list = [0] * len(word_list)

        for word in word_list:
            number = word[-1]
            s_list[int(number) - 1] = word[:-1]

        s_list = " ".join(s_list)

        return s_list

        
class Solution:
    def halvesAreAlike(self, s: str) -> bool:
        
        vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']

        count1 = 0
        count2 = 0

        s1 = s[:len(s)//2]
        s2 = s[len(s)//2:]

        for i in range(len(s1)):
            if s1[i] in vowels:
                count1 += 1

            if s2[i] in vowels:
                count2 += 1

        return count1 == count2
## 2025/11/11
class Solution:
    def findCenter(self, edges: List[List[int]]) -> int:
        count = {}
        for edge in edges:
            if edge[0] not in count:
                count[edge[0]] = 1
            else:
                count[edge[0]] += 1
            
             
            if edge[1] not in count:
                count[edge[1]] = 1
            else:
                count[edge[1]] += 1

        max_val = 0
        biggest_number = 0
        for i, j in count.items():
            if j > max_val:
                max_val = j
                biggest_number = i

        return biggest_number

        
class Solution:
    def distinctAverages(self, nums: List[int]) -> int:
        nums.sort()
        averages = []

        while nums:

            min_num = nums[0]
            max_num = nums[-1]

            nums.remove(nums[0])
            nums.remove(nums[-1])

            average = (max_num + min_num) / 2

            if average not in averages:
                averages.append(average)

        return len(averages)
class Solution:
    def isThree(self, n: int) -> bool:
        
        if n <= 2:
            return False
        
        if n % 2 == 0:
            return True


        limit = int(n**(1/2))

        for i in range(3,limit+1):
            if n % i == 0:
                return True

        return False
class Solution:
    def minimumAverage(self, nums: List[int]) -> float:

        nums.sort()

        averages = []

        for i in range(len(nums)//2):
            min_num = nums[0]
            max_num = nums[-1]

            del nums[0]
            del nums[-1]

            averages.append((min_num + max_num)/2)

        return min(averages)

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
