from django.shortcuts import render,redirect,reverse
from django.http import HttpResponse
from django.db import connection

# Create your views here.
#返回数据库操作指针
def get_cursor():
    return connection.cursor()

#生成校园地图页面
def school_map(request):
    cursor = get_cursor()
    cursor.execute("select * from mapofschool")
    map_school = cursor.fetchall()
    return render(request,'map.html',context={'map_school':map_school})

#生成特定区块植物地图种类的页面
def map_detail(request,map_id):
    cursor = get_cursor()
    cursor.execute("select name from mapofschool where id=%s"%map_id)
    name = cursor.fetchone()
    plants = lookforplant(map_id)
    return render(request,"map_detail.html",context={'plants':plants,'name':name})

#从数据库找到该地区的植物种类
def lookforplant(map_id):
    cursor = get_cursor()
    cursor.execute("select idofplant from connect where idofmap=%s"%map_id)
    idofplants = cursor.fetchall()
    plants = []
    for id in idofplants:
        cursor.execute("select * from plants where id=%s"%id)
        plant = cursor.fetchone()
        plants.append(plant)
    return plants