from django.shortcuts import render
from django.views import View
from .models import Category, Article


class IndexView(View):

    def get(self, request):
        return render(request, "page-index.html")


class ImportScrapDataView(View):

    def get(self, request):
        Category.objects.save_scrap_data()
        return "done"
