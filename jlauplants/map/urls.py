from django.urls import path
from . import views

urlpatterns=[
    path("",views.school_map,name="map"),
    path("map_detail/<int:map_id>",views.map_detail,name="map_detail"),
]