from django.utils.translation import gettext_lazy as _
from django.db import models


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
    name = models.CharField(max_length=15)
    slug = models.SlugField(max_length=400)
    status = models.CharField(
        max_length=1,
        choices=StatusChoices.choices,
        default=StatusChoices.ACTIVE,
    )

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
