class TextBase:
    def __init__(self, url):
        self.text = self.__load_text(url)

    def __load_text(self, url):
        return open(url).read()
