import random

class CPFGenerator:
    def generate_cpf(self):
        cpf = [random.randint(0, 9) for _ in range(9)]
        for _ in range(2):
            val = sum([(len(cpf) + 1 - i) * v for i, v in enumerate(cpf)]) % 11
            cpf.append(11 - val if val > 1 else 0)
        return '%s%s%s.%s%s%s.%s%s%s-%s%s' % tuple(cpf)
    
#Retirado de https://gist.github.com/lucascnr/24c70409908a31ad253f97f9dd4c6b7c


