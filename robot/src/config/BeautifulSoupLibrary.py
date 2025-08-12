from bs4 import BeautifulSoup

class BeautifulSoupLibrary:
    def parse_html(self, html_content):
        return BeautifulSoup(html_content, "html.parser")

    def get_input_value(self, soup, input_id):
        element = soup.find("input", {"id": input_id})
        return element['value'] if element else None
