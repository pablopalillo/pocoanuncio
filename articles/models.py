from django.utils.translation import gettext_lazy as _
from helpers.scraper import Scraper
from django.db import models


class CategoryManagerFillData(models.Manager):
    """
    Manager for Category Model this fill data for Categories,
    using the srapping method.

    Params:
    web_url : str origin valid url
    """

    web_url = "https://www.milanuncios.com/"

    def save_scrap_data(self) -> None:
        web_dom = Scraper(self.web_url)
        element_class = "ma-MainCategory-mainCategoryNameLink"
        titles_cat_dom = web_dom.get_list_elements_by_class(element_class)
        url_cat_dom = web_dom.get_list_elements_by_attr(element_class, "href")
        categoy_objects = self._fill_category_data(titles_cat_dom, url_cat_dom)

        if categoy_objects:
            self.save_categories(categoy_objects)

    def _fill_category_data(self, titles: list, urls: list) -> list:
        """ Fill list of Categories Model objects"""
        category_objects = []  # list of objects

        if titles and urls:
            for index, title in enumerate(titles):
                category_objects.append(Category(name=title, slug=urls[index]))
        return category_objects

    def save_categories(self, categories: list) -> None:
        """ Massive insert of categories"""

        if categories:
            size_list = len(categories)
            Category.objects.bulk_create(categories, size_list)


class Category(models.Model):

    class StatusChoices(models.TextChoices):
        """
            Estructure options for Subcategories status
        """

        ACTIVE = '1', _('Active')
        INNACTIVE = '2', _('Innactive')

    id = models.AutoField(primary_key=True)
    subcategory = models.ForeignKey(
        'self',
        on_delete=models.CASCADE,
        related_name='subcategories',
        null=True
    )
    name = models.CharField(max_length=30)
    slug = models.SlugField(max_length=400)
    status = models.CharField(
        max_length=1,
        choices=StatusChoices.choices,
        default=StatusChoices.ACTIVE,
    )
    objects = CategoryManagerFillData()

    def __str__(self) -> str:
        return self.name

    class Meta:
        verbose_name_plural = "Categories"


class Article(models.Model):
    id = models.AutoField(primary_key=True)
    category = models.ForeignKey(
        Category,
        on_delete=models.CASCADE,
        related_name='article'
    )
    title = models.CharField(max_length=35)
    description = models.TextField(null=True)
    img_url = models.CharField(max_length=200, null=True)

    def __str__(self) -> str:
        return self.title
