from django.shortcuts import render
from django.views import View
from .models import Category


class ImportScrapDataView(View):

    def get(self, request):
        Category.objects.save_scrap_data()
        return "done"
