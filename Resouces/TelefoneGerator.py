import random

class TelefoneGerator:
    def gerador_telefonico(self):
        ddd = "77"  # Exemplo de DDD
        prefixo = "99"  # Dois primeiros dígitos fixos como 99
        sufixo = ''.join(str(random.randint(0, 9)) for _ in range(7))  # Restantes dos dígitos
        telefone = f"{ddd}{prefixo}{sufixo}"
        return telefone
