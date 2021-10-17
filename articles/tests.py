from django.test import TestCase
from helpers.scraper import Scraper
from .models import Category


class TestCategoryModel(TestCase):

    def test_scraps_titles(self):
        test_url = "https://www.milanuncios.com/"
        test_web_scrap = Scraper(test_url)

        test_class = "ma-MainCategory-mainCategoryNameLink"
        titles_dom = test_web_scrap.get_list_elements_by_class(test_class)

        self.assertTrue(titles_dom, "None list")

    def test_scraps_url(self):
        test_url = "https://www.milanuncios.com/"
        test_web_scrap = Scraper(test_url)

        test_class = "ma-MainCategory-mainCategoryNameLink"
        url_dom = test_web_scrap.get_list_elements_by_attr(test_class, "href")

        self.assertTrue(url_dom, "None list")

    def test_scraps_not_valid_url(self):
        test_url = "pablopalillo_no_validurl.com/"
        test_web_scrap = Scraper(test_url)

        self.assertIsNone(test_web_scrap.dom_parser, "Not none")

        test_url = "https://pablopalillo_no_validurl¨cé.com"
        test_web_scrap = Scraper(test_url)

        self.assertIsNone(test_web_scrap.dom_parser, "Not none")

    def test_category_manager_save_data(self):
        Category.objects.save_scrap_data()
        test_categories = Category.objects.all()
        print("_-- test --")
        print(test_categories)
        self.assertIsNotNone(test_categories, "data not inserted")
