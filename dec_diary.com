# Computer Science
## 2025/12/01 # to review 
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
