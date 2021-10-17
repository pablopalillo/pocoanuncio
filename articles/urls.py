from django.urls import path
from . import views


urlpatterns = [
   path('', views.IndexView.as_view()),
   path('import', views.ImportScrapDataView.as_view()),
]
