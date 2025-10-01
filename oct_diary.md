# Computer Science
## 2025/10/01
class Solution:
    import string
    def checkIfPangram(self, sentence: str) -> bool:
        lowercase_alphabet = set(string.ascii_lowercase)
       
        return lowercase_alphabet- set(sentence) == set()
