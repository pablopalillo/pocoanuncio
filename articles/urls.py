from django.urls import path
from . import views


urlpatterns = [
   path('import', views.ImportScrapDataView.as_view()),
]
