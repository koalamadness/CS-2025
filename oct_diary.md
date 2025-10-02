# Computer Science
## 2025/10/02
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
