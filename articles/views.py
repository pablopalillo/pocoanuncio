from django.shortcuts import render
from django.views import View
from .models import Article, Category


class IndexView(View):

    def get(self, request):
        categories = Category.objects.filter(status="1")\
                    .only("id", "name").values()

        return render(request, "page-index.html", {"categories": categories})


class ArticlesView(View):

    def get(self, request, id_category):

        articles = Article.objects.filter(
            category__id=id_category,
            category__status="1"
        ).only("title", "description", "price").values()

        return render(request, "category.html", {"articles": articles})


class ImportScrapDataView(View):

    def get(self, request):
        Category.objects.save_scrap_data()
        return "done"
