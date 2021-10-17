import requests
from bs4 import BeautifulSoup
from django.core.validators import URLValidator
from django.core.exceptions import ValidationError


class Scraper:
    """
    Scraper Tool Class for obtain doom HTML information for available
    web page.

    Attributes
    ----------
    url : str
        Valid URL format of active web page
    dom_parser : str
        Content DOM of web page set in the URL
    """

    ulr = None
    dom_parser = None

    def __init__(self, url: str) -> None:
        self.url = url
        self._get_dom_web_page()

    def _get_dom_web_page(self) -> None:
        """Parser DOM information and set in dom_parser attribute"""

        if(self._validate_url()):
            page_request = requests.get(self.url)
            self.dom_parser = BeautifulSoup(
                page_request.content,
                'html.parser'
            )

    def get_list_elements_by_class(self, class_element: str) -> list:
        """
        Get text content of DOM element list

        Params:
        class_element : str Name of class o DOM element

        Rerturn:
        list of repetitive text with the same class
        """

        return [
            el.text for el in self.get_dom_elements_by_class(class_element)
        ]

    def get_list_elements_by_attr(
        self,
        class_element: str,
        attr: str
    ) -> list:
        """
        Get text content of DOM element list

        Params:
        class_element : str Name of class o DOM element

        Rerturn:
        list of repetitive text with the same class
        """

        return [
            el.get(attr) for el in
            self.get_doom_elements_by_attr(class_element)
        ]

    def get_dom_elements_by_class(self, class_element: str) -> list:
        """
        Get DOM especific repetitive elements and return a list

        Params:
        class_element : str Name of class o DOM element

        Rerturn:
        list of repetitive DOM elements with the same class
        """
        items_founds_dom = None
        if class_element is not None:
            items_founds_dom = self.dom_parser.find_all(
                class_=class_element
            )

        return items_founds_dom

    def get_doom_elements_by_attr(self, class_element: str) -> list:
        """
        Get DOM especific repetitive elements and return a list

        Params:
        class_element : str Name of class o DOM element

        attr : attr of DOM element

        Rerturn:
        list of repetitive DOM elements with the same class
        """
        items_founds_dom = None
        if class_element is not None:
            items_founds_dom = self.dom_parser.find_all(
                class_=class_element
            )

        return items_founds_dom

    def _validate_url(self) -> bool:
        """ Validate if the url is well formed """
        validator = URLValidator()
        try:
            validator(self.url)
        except ValidationError as e:
            print(e)
            return False

        return True
