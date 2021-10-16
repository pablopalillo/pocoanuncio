from django.test import TestCase
from helpers.scraper import Scraper
from .models import Category


class TestCategoryModel(TestCase):

    def test_scraps_titles(self):
        test_url = "https://www.milanuncios.com/"
        test_web_scrap = Scraper(test_url)

        test_class = "ma-MainCategory-mainCategoryNameLink"
        titles_dom = test_web_scrap.get_list_elements_by_class(test_class)

        print("titles: ")
        print(titles_dom)
        self.assertTrue(titles_dom, "None list")

    def test_scraps_url(self):
        test_url = "https://www.milanuncios.com/"
        test_web_scrap = Scraper(test_url)

        test_class = "ma-MainCategory-mainCategoryNameLink"
        url_dom = test_web_scrap.get_elements_by_attr(test_class, "href")
        print("url list: ")
        print(url_dom)
        self.assertTrue(url_dom, "None list")
