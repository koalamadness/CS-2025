# Computer Science
## 2025/10/14
import copy

class Solution:
    def wordSubsets(self, A: List[str], B: List[str]) -> List[str]:
            c_b = reduce(operator.or_, (Counter(w) for w in B))
            return [a for a in A if c_b & Counter(a) == c_b]


class Solution:
    def findDuplicates(self, nums: List[int]) -> List[int]:
        num_dict = {}
        result = []
        for num in nums:
            if num not in num_dict:
                num_dict[num] = 1
            else:
                num_dict[num] += 1
                if num_dict[num] == 2 and num not in result:
                    result.append(num) 

        return result
## 2025/10/13
class Solution:
    def numIdenticalPairs(self, nums: List[int]) -> int:
        num_dict = {}
        counter = 0
        for i in range(len(nums)):
            if nums[i] in num_dict:
                for j in num_dict[nums[i]]:
                    if i > j:
                        counter += 1
                num_dict[nums[i]].append(i)
            else:
                num_dict[nums[i]] = [i]
        
        return counter
import math

class Solution:
    def middleNode(self, head: Optional[ListNode]) -> Optional[ListNode]:
        counter = 0
        total = 0
        curr = head

        while curr is not None:
            counter += 1

            curr = curr.next

        total = counter 
        curr = head

        if total % 2 == 0:
            medium = (total / 2) + 1
        else:
            medium = math.ceil(total / 2)

        counter = 0
        curr = head

            
        while curr is not None:
            counter += 1
            if counter == medium:
                return curr
            curr = curr.next
class Solution:
    def kthDistinct(self, arr: list[str], k: int) -> str:
        count = 0
        map = {}

        # Count occurrences of each string
        for item in arr:
            if item in map:
                map[item] = False  # Mark as not distinct
            else:
                map[item] = True  # Mark as distinct

        # Find the k-th distinct string
        for item in arr:
            if map[item]:  # Check if it's distinct
                count += 1
                if count == k:
                    return item

        return ""
class Solution:
    def areNumbersAscending(self, s: str) -> bool:
        last_number = 0
        res = ascii_lowercase
        s = s.split()

        for i in s:
            if i.isnumeric():
                number = int(i)
                if number < last_number or number == last_number:
                    return False
                last_number = number     

        return True
class Solution:
    def maxDepth(self, s: str) -> int:
        stack = []
        max_len = len(stack)

        for i in s:
            if i == "(":
                stack.append(i)
                if len(stack) > max_len:
                    max_len = len(stack)
            elif i == ")":
                stack.pop()

        return max_len

class Solution:
    def uncommonFromSentences(self, s1: str, s2: str) -> List[str]:
        result = []
        A = s1.split()
        B = s2.split()

        s1 = s1.split()
        s2 = s2.split()
        
        A = set(A)
        B = set(B)

        C = A.union(B) - A.intersection(B)

        for word in C:
         
            count1 = s1.count(word)
            count2 = s2.count(word)

            if count1 == 1 or count2 == 1:
                result.append(word)

        return result
## 2025/10/10
class Solution:
    def sumOfMultiples(self, n: int) -> int:
        lst = []
        for num in range(1, n + 1):
            if num % 3 == 0 or num % 5 == 0 or num % 7 == 0:
                lst.append(num)
        return sum(lst)
## 2025/10/09
class Solution:
    def findMaxAverage(self, nums: List[int], k: int) -> float:
        n = len(nums)

        window_avg = sum(nums[:k]) / k
        window_sum = sum(nums[:k])
        max_avg = window_avg

        for i in range(n - k):
            window_sum = window_sum - nums[i] + nums[i+k]
            avg = window_sum/k

            max_avg = max(max_avg, avg)

        return max_avg
class Solution:
    def runningSum(self, nums: List[int]) -> List[int]:
        n = len(nums)

        prefixSum = [0] * n

        prefixSum[0] = nums[0]

        for i in range(1, n):
            prefixSum[i] = prefixSum[i - 1] + nums[i]

        return prefixSum
class Solution:
    def countPairs(self, nums: List[int], target: int) -> int:
        counter = 0
        i = 0
        j = 0

        while i < len(nums) - 1:
            j = i + 1
            while j < len(nums):
                if nums[i] + nums[j] < target:
                    counter += 1
                j += 1
            i += 1

        return counter
## 2025/10/08
class Solution:
class Solution:
    def isSubsequence(self, s: str, t: str) -> bool:
        i = 0
        j = 0
        if i < (len(s) - 1):
            letters = s[i]

            for letter in t:
                if letter == letters:
                    i += 1
                    if i < (len(s) - 1):
                        letters = s[i]
        if s == "":
            return True
        return i == (len(s) - 1) 
    def reverseString(self, s: List[str]) -> None:
        i = 0
        j = len(s) - 1


        while(i != j and  j > i):
            l1 = s[i]
            fill = ""
            l2 = s[j]

            fill = l1
            s[i] = l2
            s[j] = fill

            i += 1
            j -= 1

        return s
class Solution:
    def sumZero(self, n: int) -> List[int]:
        result = []
        if n % 2 != 0:
            m = (n / 2) - 0.5
            
            m = -m
            m = int(m)
            for i in range(int(n)):
                result.append(m)
                m += 1
        else:
            m = -(n / 2) 

            for i in range(n):
                result.append(m)

                if(i + 1 == n/2):
                    m += 2
                else:
                    m += 1  
        return result
## 2025/10/07
class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        letter_dict = {}

        if len(s) != len(t):
            return False

        for i in s:
            if i not in letter_dict:
                letter_dict[i] = 1
            else:
                letter_dict[i] += 1

        for j in t:
            if j in letter_dict:
                letter_dict[j] -= 1

                if letter_dict[j] == 0:
                    del letter_dict[j]

        
        return letter_dict == {}
class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        result = []
        num_dict = {}
        for i in range(len(nums)):
            x = target - nums[i]
            if x in num_dict:
                result.append(num_dict[x])
                result.append(i)

                return result
            else:
                num_dict[nums[i]] = i 
class Solution:
    def sum(self, num1: int, num2: int) -> int:
        return num1 + num2
class Solution:
    def fizzBuzz(self, n: int) -> List[str]:
        result = []
        for i in range(1, n+1):
            if i % 3 == 0 and i % 5 == 0:
                result.append("FizzBuzz")
            elif i % 3 == 0:
                result.append("Fizz")
            elif i % 5 == 0:
                result.append("Buzz")
            else:
                result.append(str(i))

        return result
class Solution:
    def transformArray(self, nums: List[int]) -> List[int]:
        for i in range(len(nums)):
            if nums[i] % 2 == 0:
                nums[i] = 0
            else:
                nums[i] = 1

        nums.sort()

        return nums
## 2025/10/06
class Solution:
    def findDifference(self, nums1: List[int], nums2: List[int]) -> List[List[int]]:
        result = []

        A = set(nums1)
        B = set(nums2)

        A2 = A
        A = A - B

        B = B - A2

        result.append(list(A))

        result.append(list(B))

        return result
class Solution:
    def calPoints(self, operations: List[str]) -> int:
        record = []

        for i in operations:
            if i == "+":
                result = record[-1] + record[-2]
                record.append(result)
            elif i == "D":
                result = record[-1] * 2
                record.append(result)
            elif i == "C":
                record.pop()
            else:
                record.append(int(i))

        return sum(record)
class Solution:
    def clearDigits(self, s: str) -> str:
        stack = []

        nums = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

        for i in s:
            if i not in nums:
                stack.append(i)
            else:
                stack.pop()

        return "".join(stack)
class Solution:
    def repeatedCharacter(self, s: str) -> str:
        letter_dict = {}
        for letter in s:
            if letter not in letter_dict:
                letter_dict[letter] = 1
            else:
                letter_dict[letter] += 1
            
            if letter_dict[letter] == 2:
                return letter
        
        
class ParkingSystem:

    def __init__(self, big: int, medium: int, small: int):
        self.big = big
        self.medium = medium
        self.small = small

    def addCar(self, carType: int) -> bool:
        if carType == 1:
            if self.big - 1 < 0:
                return False
            self.big -= 1
        elif carType == 2:
            if self.medium - 1 < 0:
                return False    
            self.medium -= 1
        elif carType == 3:
            if self.small - 1 < 0:
                return False    
            self.small -= 1
        return True
# Your ParkingSystem object will be instantiated and called as such:
# obj = ParkingSystem(big, medium, small)
# param_1 = obj.addCar(carType)
class MyHashSet:

    def __init__(self):
        self.my_set = []

    def add(self, key: int) -> None:
        if key in self.my_set:
            return None
        else:
            self.my_set.append(key)

    def remove(self, key: int) -> None:
        if key not in self.my_set:
            return None
        else:
            self.my_set.remove(key)

    def contains(self, key: int) -> bool:
        return key in self.my_set


# Your MyHashSet object will be instantiated and called as such:
# obj = MyHashSet()
# obj.add(key)
# obj.remove(key)
# param_3 = obj.contains(key)
class Solution:
    def firstMissingPositive(self, nums: List[int]) -> int:
        counter = 1
        nums.sort()
        for num in nums:
            if num == counter:
                counter += 1  
                
        return counter 
class Solution:
    def uniqueOccurrences(self, arr: List[int]) -> bool:
        num_dict = {}
        ocurrences = []

        for num in arr:
            if num not in num_dict:
                num_dict[num] = 1
            else:
                num_dict[num] += 1

        for key in num_dict:
            if num_dict[key] not in ocurrences:
                ocurrences.append(num_dict[key])
            else:
                return False

        return True
class Solution:
    def mergeSimilarItems(self, items1: List[List[int]], items2: List[List[int]]) -> List[List[int]]:
        num_dict = {}
        num_list = []
        for element1 in items1:
            if element1[0] not in num_dict:
                num_dict[element1[0]] = element1[1]
            else:
                num_dict[element1[0]] += element1[1]
        
        for element2 in items2:
            if element2[0] not in num_dict:
                num_dict[element2[0]] = element2[1]
            else:
                num_dict[element2[0]] += element2[1]

        for key in num_dict:
            element = [key, num_dict[key]]
            num_list.append(element)
        
        num_list.sort()
        
        return num_list
## 2025/10/03
class Solution:
    def timeRequiredToBuy(self, tickets: List[int], k: int) -> int:
        follow = k
        k = tickets[k]
        seconds = 0
       
        # check 
        while k > 0 and len(tickets) > 0:
            #print(tickets, seconds)
            if len(tickets) > 0:
                front_line = tickets.pop(0)
               # print(f"frontiline: {front_line}")
    
                follow -= 1
              #  print(tickets[follow])
                if(follow < 0):
                  
                    k -= 1
                    print(k)

                #ticket bought
                front_line -= 1
                seconds += 1
                
                if(k == 0):
                    return seconds

                # if 0 leave line
                if front_line > 0:
                    tickets.append(front_line)
                    if(follow < 0):
                        follow = len(tickets) - 1
class Solution:
    def backspaceCompare(self, s: str, t: str) -> bool:
        stack1 = []
        stack2 = []

        for i in s:
            if i != "#":
                stack1.append(i)
            else:
                if len(stack1) > 0:
                    stack1.pop()
        
        for i in t:
            if i != "#":
                stack2.append(i)
            else:
                if len(stack2) > 0: 
                    stack2.pop()
    
        return str(stack1) == str(stack2)
class Solution:
    def getCommon(self, nums1: List[int], nums2: List[int]) -> int:
            set1 = set(nums1) 
            set2 = set(nums2)
    
            set3 = set1.intersection(set2)
             
            l3 = list(set3)
            
            l3.sort()
            
            if len(l3) < 1:
               return -1
    
            return l3[0]
class Solution:
    def areOccurrencesEqual(self, s: str) -> bool:
        letter_dict = {}
        frequency = 1
        
        for letter in s:
            if letter not in letter_dict:
                letter_dict[letter] = 1
            else:
                letter_dict[letter] += 1
        
        frequency = letter_dict[letter] 
        
        for value in letter_dict.values():
            if value != frequency:
                return False
                
        return True
## 2025/10/02
class Solution:
    def removeStars(self, s: str) -> str:
        stack = []

        for i in s:
            if i == "*":
                stack.pop()
            else:
                stack.append(i)
        
        return "".join(stack)
class Solution:
    def checkAlmostEquivalent(self, word1: str, word2: str) -> bool:
        letter_dict = {}
        for i in range(len(word1)):
            letter_1 = word1[i]
            letter_2 = word2[i]
             
            if letter_1 not in letter_dict:
                letter_dict[letter_1] = 1
            else:
                letter_dict[letter_1] += 1
            
            if letter_2 not in letter_dict:
                letter_dict[letter_2] = -1
            else:
                letter_dict[letter_2] -= 1

        print(letter_dict)
        for key in letter_dict:
            if abs(letter_dict[key]) > 3:
                return False
        return True 
class Solution:
    def countWords(self, words1: List[str], words2: List[str]) -> int:
        
        words1_set = set(words1)
        words2_set = set(words2)

        count = 0

        intersection1_2 = words1_set.intersection(words2_set)

        for word in intersection1_2:
            count1 = words1.count(word)
            count2 = words2.count(word)

            if count1 == 1 and count2 == 1:
                count += 1

        return count        
class Solution:
    def checkString(self, s: str) -> bool:
        #seen_a = False
        seen_b = False

        for i in s:
            if i == "a" and seen_b:
                return False
            elif i == "b":
                seen_b = True

        return True
class Solution:
    def divideString(self, s: str, k: int, fill: str) -> List[str]:
        
        result_list = []
        m = k
        i = 0

        while k <= len(s):

            block = s[i:k]
            result_list.append(block)

            i = k 

            k += m

        if i < len(s):
            block = s[i:]
            to_fill = (m - len(block)) * fill 
            block += to_fill
            result_list.append(block)
    
        return result_list
class Solution:
    def processStr(self, s: str) -> str:
        result = ""   

        for i in s:
            if i == "*":
                if len(result) > 0:
                    result = result[:len(result) - 1]
            elif i == "#":
                result += result
            elif i == "%":
                result = result[::-1]
            else:
                result += i

        return result
            
class Solution:
    def numJewelsInStones(self, jewels: str, stones: str) -> int:
        jewel_set = set(jewels)
        jewel_count = 0
        for stone in stones:
            if stone in jewel_set:
                jewel_count += 1
        
        return jewel_count
## 2025/10/01
    def numDifferentIntegers(self, word: str) -> int:
        import string

        alphabet = string.ascii_lowercase
        in_num = False
        num_set = set()
        num = ""

        for char in word:
            if char in alphabet and in_num:
                num_set.add(int(num))
                num = ""
                in_num = False
            elif char in alphabet:
                continue
            elif char not in alphabet:
                num += char
                in_num = True

        num_set.add(int(num))

        return len(num_set)
class Solution:
    def countAsterisks(self, s: str) -> int:
        counter = 0
        inside_bars = False

        for i in s:
            if i == '|':
                inside_bars = not inside_bars

            if i == '*' and not inside_bars:
                counter += 1
        
        return counter


class Solution:
    import string
    def checkIfPangram(self, sentence: str) -> bool:
        lowercase_alphabet = set(string.ascii_lowercase)
       
        return lowercase_alphabet- set(sentence) == set()
class Solution:
    def twoOutOfThree(self, nums1: List[int], nums2: List[int], nums3: List[int]) -> List[int]:
        
        A = set(nums1) 
        B = set(nums2)
        C = set(nums3)

        result_set = set()

        A_B = A.intersection(B)
        A_C = A.intersection(C)
        B_C = B.intersection(C)

        result_set.update(A_B)
        result_set.update(A_C)
        result_set.update(B_C)
       # print(result_set)
        return list(result_set)
class Solution:
    def findPermutationDifference(self, s: str, t: str) -> int:
        letter_dict = {}
        permutation_dif = 0
        for i in range(len(s)):
            letter_s = s[i]
            letter_t = t[i]

            if letter_s not in letter_dict:
                letter_dict[letter_s] = i
            else:
                letter_dict[letter_s] = abs(letter_dict[letter_s] - i)
                permutation_dif += letter_dict[letter_s]
            
            if letter_t not in letter_dict:
                letter_dict[letter_t] = i
            else:
                letter_dict[letter_t] = abs(letter_dict[letter_t] - i)
                permutation_dif += letter_dict[letter_t]

        return permutation_dif
