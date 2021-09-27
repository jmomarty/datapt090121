import re
import operator

ops = {"+": operator.add,
       "-": operator.sub,
       "*": operator.mul,
       "/": operator.truediv}


def calculate(string):
    pattern_digits = "\d+\.\d+|\d+"
    pattern_operators = "\+|\-|\/|\*|\(|\)"
    list_digits = re.findall(pattern_digits, string)
    list_operators = re.findall(pattern_operators, string)
    string = string.replace(' ', '')

    # gestion des erreurs
    # erreur 1 : lettre ou caractères spéciaux hors operator
    digits = [str(d) for d in range(0, 10)]
    list_characters = list_operators.copy()
    list_characters.append(".")

    for e in string:
        if e not in digits and e not in list_operators and e != ".":
            return None
    # erreur 2 : position des operators
    # '(' = précédé par un élément de la liste op et suivi par un élément de la liste digits
    if "(" in list_operators:
        list_characters.remove("(")
        if string.index("(") == 0 and string[1] not in digits or string[string.index("(") - 1] not in list_operators \
                and string[string.index("(") + 1] not in digits:
            return None
        # ')' = précédé par un élément de la liste digits et suivi par un élément de la liste op
        if ")" in list_operators:
            list_characters.remove(")")
            if string.index(")") == len(string) - 1 and string[-2] not in list_digits \
                or string[string.index(")") - 1] not in digits and string[string.index(")") + 1] not in list_operators:
                return None
        else:
            return None
    else:
        if ")" in list_operators:
            list_characters.remove(")")
            return None

    # [éléments de la liste_characters] = doivent être précédés et suivis d'un éléments de la liste digits

    if string[0] in list_characters or string[-1] in list_characters:
        return None
    else:
        for i in range(len(string)):
            if string[i] in list_characters:
                if string[i - 1] not in digits and string[i - 1] != ")" or string[i + 1] not in digits \
                        and string[i + 1] != "(":
                    return None

                    # gestion des parenthèses
    if "(" in list_operators:
        index_parentheses_1 = list_operators.index("(")
        index_parentheses_2 = list_operators.index(")")
        res = float(list_digits[index_parentheses_1])
        for i in range(index_parentheses_1 + 1, index_parentheses_2):
            res = ops[list_operators[i]](res, float(list_digits[i]))
        string = re.sub('\(\d+\.*\d*\W*\d+\.*\d*\)', str(res), string)
        list_digits = re.findall(pattern_digits, string)
        list_operators = re.findall(pattern_operators, string)

    # gestion des priorités
    if "*" in list_operators or "/" in list_operators:
        if "*" in list_operators and "/" not in list_operators:
            priority = "*"
        elif "/" in list_operators and "*" not in list_operators:
            priority = "/"
        index_priority = list_operators.index(priority)
        res = ops[list_operators[index_priority]](float(list_digits[index_priority]),
                                                  float(list_digits[index_priority + 1]))
        list_digits[index_priority] = res
        list_digits.pop(index_priority + 1)
        list_operators.pop(index_priority)

    # gestion des autres cas
    res = float(list_digits[0])
    for i in range(len(list_operators)):
        res = ops[list_operators[i]](res, float(list_digits[i + 1]))

    return res
