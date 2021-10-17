from django.shortcuts import render
from django.views import View
from .models import Category, Article


class ImportScrapDataView(View):

    def get(self, request):
        Article.objects.save_scrap_data()
        return "done"
