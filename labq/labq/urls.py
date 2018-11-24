"""labq URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from labreport import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.index, name="index"),
    path('login', views.login, name="login"),
    path('adminhome', views.adminhome, name="adminhome"),
    path('managecourse',views.managecourse, name="managecourse"),
    path('deletecourse/<int:qs>', views.deletecourse, name="deletecourse"),
    path('managestaff', views.managestaff, name="managestaff"),
    path('deletestaff/<str:qs>', views.deletestaff, name="deletestaff"),
    path('managestudent', views.managestudent, name="managestudent"),
    path('assignsubject/<str:sid>', views.assignsubject, name="assignsubject"),
    path('staffhome', views.staffhome, name="staffhome"),
    path('addquestion/<str:subid>', views.addquestion, name="addquestion"),
    path('editquestion/<str:subid>/<str:qid>', views.editquestion, name="editquestion"),
    path('answers/<str:qid>', views.answers, name="answers"),
    path('studenthome', views.studenthome, name="studenthome"),
    path('viewquestion/<str:subid>', views.viewquestion, name="viewquestion"),
    path('addanswer/<str:subid>/<str:qid>', views.addanswer, name="addanswer"),
    path('approveanswer/<str:qid>/<str:subid>', views.approveanswer, name="approveanswer"),
    path('denyanswer/<str:qid>/<str:subid>', views.denyanswer, name="denyanswer"),
    path('exceladd', views.exceladd, name="exceladd"),
]
