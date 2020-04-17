from src.text_base import TextBase
import re as re


class TextCypher(TextBase):
    def __init__(self, url):
        super().__init__(url)

    def encrypt(self, number_of_keys, *keys):
        words = self.__get_words()
        key_index = 0
        for w in words:
            if key_index > number_of_keys - 1:
                key_index = 0
            key = keys[key_index]
            chars = list(w)
            new_word = "".join(self._encrypt_word(chars, key))
            self.text = self.text.replace(w, new_word, 1)
            key_index += 1

        open('FileEncrypted.txt', 'w').write(self.text)

    def __get_words(self):
        return re.findall("[\w]+", self.text)

    def _encrypt_word(self, chars, key):
        encrypted = []
        for c in chars:
            char = ord(c)
            new_char = char + key
            if new_char > 122 and char > 96:
                new_char -= 26
            elif new_char > 96 and char > 96:
                pass
            elif new_char > 90:
                new_char -= 26
            else:
                pass
            encrypted.append(chr(new_char))
        return encrypted


a = TextCypher('TheZenOfPython.txt')
a.encrypt(2, 2, 3)
