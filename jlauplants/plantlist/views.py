from django.shortcuts import render,redirect,reverse
from django.http import HttpResponse
from django.db import connection

# Create your views here.
# 获取数据库操作指针
def get_cursor():
    return connection.cursor()

# 找到植物出现的地方
def lookformap(plant_id):
    cursor = get_cursor()
    cursor.execute("select idofmap from connect where idofplant=%s"%plant_id)
    idofmap = cursor.fetchall()
    name_map = []
    for i in idofmap:
        cursor.execute("select id,name from mapofschool where id=%s"%i)
        name = cursor.fetchone()
        name_map.append(name)
    return name_map

# 植物库界面
def plant(request):
    cursor = get_cursor()
    cursor.execute("select id,name,sciname,families,genera from plants")
    plants = cursor.fetchall()
    return render(request,'plant.html',context={'plants':plants})

# 添加植物
def add_plants(request):
    if request.method == 'GET':
        cursor = get_cursor()
        cursor.execute("select id,name from mapofschool")
        maps = cursor.fetchall()
        return render(request,'add_plant.html',context={'maps':maps})
    else:
        name = request.POST.get("name")
        sciname = request.POST.get("sciname")
        families = request.POST.get("families")
        genera = request.POST.get("genera")
        map_id = request.POST.get("map_id")
        cursor = get_cursor()
        cursor.execute("select * from plants where name='%s'"%name)
        act = cursor.fetchone()
        if act == None:
            cursor.execute("insert into plants(id,name,sciname,families,genera) values(null,'%s','%s','%s','%s')"%(name,sciname,families,genera))
            cursor.execute("select * from plants where name='%s'"%name)
            act = cursor.fetchone()
            cursor.execute("insert into connect values(null,'%s','%s')"%(act[0],map_id))
            return redirect(reverse('add_plant'))
        else:
            error = "这个植物“%s”已经收入"%name
            return render(request,"error.html",context={'error':error})

# 植物介绍页面
def plant_detail(request,plant_id):
    cursor = get_cursor()
    if request.method=="GET":
        cursor.execute("select id,name,sciname,families,genera from plants where id = %s"% plant_id)
        plant = cursor.fetchone()
    else:
        # 编辑植物词条
        name = request.POST.get('name')
        cursor.execute("select id,name,sciname,families,genera from plants where name = '%s'"% name)
        plant = cursor.fetchone()
        if plant == None:
            error = "这个植物——"+name+"——尚未收入"
            return render(request,"error.html",context={'error':error})

    num = plant[0]
    cursor.execute("select * from introduce where id=%s"%num)
    introduce = cursor.fetchone()
    map = lookformap(num)
    cursor.execute("select id,name from mapofschool")
    mapall = cursor.fetchall()
    return render(request,'plant_detail.html',context={'plant':plant,'intro':introduce,'map':map,'mapall':mapall})   

# 编辑植物词条界面
def plant_intro(request,plant_id):
    cursor = get_cursor()
    if request.method == 'GET':
        cursor.execute("select * from plants where id=%s"%plant_id)
        plant = cursor.fetchone()
        cursor.execute("select * from introduce where id=%s"%plant_id)
        introduce = cursor.fetchone()
        return render(request,'plant_intro.html',context={'plant':plant,'intro':introduce})
    else:
        id = request.POST.get('plant_id')
        sciname = request.POST.get("sciname")
        families = request.POST.get("families")
        genera = request.POST.get("genera")
        gaishu = request.POST.get('gaishu')
        xingtai = request.POST.get('xingtai')
        huanjing = request.POST.get('huanjing')
        cursor.execute("update plants set sciname='%s',families='%s',genera='%s' where id=%s"%(sciname,families,genera,id))
        cursor.execute("select * from introduce where id=%s"%id)
        act = cursor.fetchone()
        if act == None:
            cursor.execute("insert into introduce values(%s,'%s','%s','%s')"%(id,gaishu,xingtai,huanjing))
        else:
            cursor.execute("update introduce set gaishu='%s',xingtai='%s',huanjing='%s' where id=%s"%(gaishu,xingtai,huanjing,id))
        return redirect(reverse('plant_detail',kwargs={'plant_id':id}))

# 删除植物库中的植物
def delete_plant(request):
    if request.method == "POST":
        plant_id = request.POST.get('plant_id')
        cursor = get_cursor()
        cursor.execute("delete from plants where id=%s"%plant_id)
        return redirect(reverse('plant'))
    else:
        error = "删除错误"
        return render(request,"error.html",context={'error':error})

# 修改地图标签
def change_map(request):
    if request.method =='POST':
        way = request.POST.get('way')
        map_id = request.POST.get('map_id')
        plant_id = request.POST.get('plant_id')
        cursor = get_cursor()
        if way =='add':
            cursor.execute("select * from connect where idofplant=%s and idofmap=%s"%(plant_id,map_id))
            act = cursor.fetchone()
            print(act)
            if act == None:
                cursor.execute("insert into connect values(null,%s,%s)"%(plant_id,map_id))
            else:
                error = "这个标签已经存在"
                return render(request,"error.html",context={'error':error})
        else:
            cursor.execute("delete from connect where idofplant=%s and idofmap=%s"%(plant_id,map_id))
            
        return redirect(reverse('plant_detail',kwargs={'plant_id':plant_id}))
    
    # 直接访问的问题
    else:
        error = "无法直接访问这个域名"
        return render(request,"error.html",context={'error':error})
