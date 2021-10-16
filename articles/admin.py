from django.contrib import admin
from .models import Category, Article


class CategoryAdmin(admin.ModelAdmin):
    readonly_fields = ('id',)


class ArticleAdmin(admin.ModelAdmin):
    readonly_fields = ('id',)


admin.site.register(Category, CategoryAdmin)
admin.site.register(Article, ArticleAdmin)
