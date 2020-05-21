from django.urls import path
from . import views

urlpatterns = [
    path('',views.plant,name='plant'),
    path('add_plant/',views.add_plants,name='add_plant'),
    path('plant_detail/<int:plant_id>',views.plant_detail,name='plant_detail'),
    path("delete_plant/",views.delete_plant,name="delete"),
    path("plant_intro/<int:plant_id>",views.plant_intro,name="introduce"),
    path("change_map/",views.change_map,name="change_map"),
]