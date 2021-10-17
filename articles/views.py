from django.shortcuts import render
from django.http import HttpResponse
from django.views import View
from rest_framework import generics
from django_filters.rest_framework import DjangoFilterBackend
from .models import Article, Category
from .serializers import ArticleSerializer


class IndexView(View):

    def get(self, request):
        categories = Category.objects.filter(status="1")\
                    .only("id", "name").values()

        return render(request, "page-index.html", {"categories": categories})


class CategoryView(View):

    def get(self, request, id_category):

        articles = Article.objects.filter(
            category__id=id_category,
            category__status="1"
        ).only("title", "description", "price").values()

        return render(request, "category.html", {"articles": articles})


class ArticleList(generics.ListAPIView):
    """
    Articles API view with url filters by GET method.
    Example, to consult title the url should be &title=example
    """
    queryset = Article.objects.only("title", "description", "price")
    serializer_class = ArticleSerializer
    filter_backends = [DjangoFilterBackend]
    filterset_fields = ['title', 'description', 'category__name']


class ImportScrapDataView(View):

    def get(self, request):

        Category.objects.save_scrap_data()
        Article.objects.save_scrap_data()

        return HttpResponse("Import Scraped data is complete")
