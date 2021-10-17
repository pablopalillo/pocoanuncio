from django.urls import path
from . import views


urlpatterns = [
   path('', views.IndexView.as_view()),
   path('category/<int:id_category>', views.Category.as_view()),
   path('api/articles', views.ArticleList.as_view()),
   path('import', views.ImportScrapDataView.as_view()),
]
