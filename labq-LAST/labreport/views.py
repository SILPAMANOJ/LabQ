from django.shortcuts import render
from django.http import HttpResponse
from labreport import dbconnection
from labreport import cstructure
from django.http import HttpResponseRedirect
from django.template import RequestContext
from django.core.files.storage import FileSystemStorage
import xlrd

# Create your views here.
#Public Views
def index(request):
    return render(request,"index.html",{})
def login(request):
    if request.method=='POST':
        a=request.POST.get('u')
        b=request.POST.get('p')
        sql="select * from user_log where uid='"+a+"' and pass='"+b+"'"
        data=dbconnection.selectdata(sql)         
        if data:                        
            if data[3]=="admin":
                request.session['x']=a
                return HttpResponseRedirect("http://127.0.0.1:8000/adminhome")
            elif data[3]=="staff":
                request.session['st']=a
                return HttpResponseRedirect("http://127.0.0.1:8000/staffhome")
            elif data[3]=="stud":
                request.session['stud']=a
                return HttpResponseRedirect("http://127.0.0.1:8000/studenthome")
        else:            
            e="Invalid"
            return render(request,'login.html',{'error':e})
    return render(request,"login.html",{})


#admin Area
def adminhome(request):
    if request.method=='POST':
        sem=request.POST.get('sems')
        qry="select * from student_data where sem='"+sem+"'"
        data4=dbconnection.selectalldata(qry)
        return render(request,"administrator/index.html",{'data':data4})
    return render(request,"administrator/index.html",{})
def managecourse(request):
    if request.method=='POST':
        dep=request.POST.get('d')
        sem=request.POST.get('sem')
        sc=request.POST.get('sc')
        sn=request.POST.get('sn')
        sql="insert into subject_data values ('','"+dep+"','"+sem+"','"+sc+"','"+sn+"','0')"
        if dbconnection.insertdata(sql):        
            x="Insert Successfully"
            print(x)
            return render(request,"administrator/addsubject.html",{"x":x})
    sql="select * from subject_data order by sem asc"
    data=dbconnection.selectalldata(sql)
    if data:
        jj=0
        return render(request,"administrator/addsubject.html",{"data":data,"inc":jj})
    return render(request,"administrator/addsubject.html",{})

def deletecourse(request,qs):
    qry="delete from subject_data where id='"+str(qs)+"'"    
    dbconnection.deletedata(qry)
    return HttpResponseRedirect("http://127.0.0.1:8000/managecourse")    
    
def managestaff(request):    
    qry1="select * from staff_data"
    data1=dbconnection.selectalldata(qry1)
    if request.method=='POST':        
        sn=request.POST.get('sn')
        con=request.POST.get('con')
        addr=request.POST.get('addr')
        myfile=request.FILES['up']
        fs=FileSystemStorage()
        filename=fs.save("C:\\Users\\Administrator\\Desktop\\python\\python\\labq\\labreport\\static\\userpic\\"+myfile.name,myfile)
        u=request.POST.get('u')
        p=request.POST.get('p')
        qry="insert into staff_data values('','"+sn+"','"+con+"','"+addr+"','"+myfile.name+"','"+u+"','1')"
        dbconnection.insertdata(qry)
        qry="insert into user_log values('','"+u+"','"+p+"','staff','1')"
        dbconnection.insertdata(qry)
        return HttpResponseRedirect("http://127.0.0.1:8000/managestaff")
    return render(request,"administrator/addstaff.html",{'stf':data1})

def deletestaff(request,qs):
    qry="delete from staff_data where uid='"+str(qs)+"'"    
    dbconnection.deletedata(qry)
    qry="delete from user_log where uid='"+str(qs)+"'"    
    dbconnection.deletedata(qry)
    return HttpResponseRedirect("http://127.0.0.1:8000/managestaff")   

def managestudent(request):
    qry1="select * from student_data"
    data3=dbconnection.selectalldata(qry1)
    if request.method=='POST':        
        sem=request.POST.get('sem')
        sn=request.POST.get('sn')
        rn=request.POST.get('rn')
        p=request.POST.get('p')
        con=request.POST.get('con')
        addr=request.POST.get('addr')
        myfile=request.FILES['up']
        fs=FileSystemStorage()
        filename=fs.save("C:\\Users\\Administrator\\Desktop\\python\\python\\labq\\labreport\\static\\studpic\\"+myfile.name,myfile)
        qry="insert into student_data values('','"+sem+"','"+sn+"','"+rn+"','"+con+"','"+addr+"','"+myfile.name+"','1')"
        dbconnection.insertdata(qry)
        qry="insert into user_log values('','"+rn+"','"+p+"','stud','1')"
        dbconnection.insertdata(qry)
        return HttpResponseRedirect("http://127.0.0.1:8000/managestudent")
    return render(request,"administrator/addstudent.html",{'data':data3})

def assignsubject(request,sid):
    qry="select * from staff_data where uid='"+str(sid)+"'" 
    data=dbconnection.selectdata(qry) 
    qry="select subj_id,subj_nme  from subject_data"
    data1=dbconnection.selectalldata(qry)
    qry1="select * from subj_assign where stf_id='"+str(sid)+"'"
    data3=dbconnection.selectalldata(qry1)
    if request.method=='POST':        
        sn=request.POST.get('sn')
        subj=request.POST.get('subj')
        x=subj.split(',')
        qry="insert into subj_assign values ('','"+x[0]+"','"+x[1]+"','"+sn+"')"
        dbconnection.insertdata(qry)
        return HttpResponseRedirect("http://127.0.0.1:8000/assignsubject/"+sn)    
    return render(request,"administrator/assign.html",{'data':data,'sdata':data1,'subj':data3})

def staffhome(request): 
    uid=request.session['st']
    qry="select * from staff_data where uid='"+uid+"'"    
    data=dbconnection.selectdata(qry)
    qry="select * from subj_assign where stf_id='"+uid+"'"
    data1=dbconnection.selectalldata(qry)
    return render(request,"staff/index.html",{'data':data,'sdata':data1})

def addquestion(request,subid):
    uid=request.session['st']
    qry="select * from staff_data where uid='"+uid+"'"    
    data=dbconnection.selectdata(qry)
    qry="select * from qn_data where stf_id='"+uid+"' and subj_id='"+subid+"'"
    data1=dbconnection.selectalldata(qry)
    if request.method=='POST':        
        qn=request.POST.get('qn')
        qry="insert into qn_data values('','"+uid+"','"+subid+"','"+qn+"')"
        dbconnection.insertdata(qry)
        return HttpResponseRedirect("http://127.0.0.1:8000/addquestion/"+subid)    
    return render(request,"staff/addquestion.html",{'data':data,'qns':data1,'subjid':subid})

def editquestion(request,subid,qid):
    uid=request.session['st']
    qry="select * from staff_data where uid='"+uid+"'"    
    data=dbconnection.selectdata(qry)
    qry="select * from qn_data where id='"+qid+"'"
    data1=dbconnection.selectdata(qry)
    if request.method=='POST':        
        qn=request.POST.get('qn')
        qry="update qn_data set qn='"+qn+"' where id='"+qid+"'"
        dbconnection.updatedata(qry)
        return HttpResponseRedirect("http://127.0.0.1:8000/addquestion/"+subid)
    return render(request,"staff/editquestion.html",{'data':data,'subjid':subid,'qn':data1})

def answers(request,qid):
    
    uid=request.session['st']
    qry="select * from staff_data where uid='"+uid+"'"    
    data=dbconnection.selectdata(qry)
    qry="select * from qn_data where id='"+qid+"'"
    data1=dbconnection.selectdata(qry)
    qry="select * from answr_data,student_data where student_data.rollnum=answr_data.regnum and answr_data.qn_id='"+qid+"'"
    data2=dbconnection.selectalldata(qry)
    return render(request,"staff/answers.html",{'data':data,'qn':data1,'stlist':data2})

def approveanswer(request,qid,subid):
    qry="update answr_data set st=1 where id='"+qid+"'"
    dbconnection.updatedata(qry)
    return HttpResponseRedirect("http://127.0.0.1:8000/answers/"+subid)

def denyanswer(request,qid,subid):
    qry="update answr_data set st=2 where id='"+qid+"'"
    dbconnection.updatedata(qry)
    return HttpResponseRedirect("http://127.0.0.1:8000/answers/"+subid)

def studenthome(request):
    uid=request.session['stud']
    qry="select * from student_data where rollnum='"+uid+"'"    
    data=dbconnection.selectdata(qry)
    qry="select * from subject_data where sem='"+data[1]+"'"
    data1=dbconnection.selectalldata(qry)
    return render(request,"student/index.html",{'data':data,'sdata':data1})

def viewquestion(request,subid):
    uid=request.session['stud']
    qry="select * from student_data where rollnum='"+uid+"'"    
    data=dbconnection.selectdata(qry)
    qry="select * from qn_data where subj_id='"+subid+"'"
    data1=dbconnection.selectalldata(qry)
    qry="select * from subject_data where subj_id='"+subid+"'"
    data2=dbconnection.selectdata(qry)
    return render(request,"student/viewquestion.html",{'data':data,'qns':data1,'sub':data2})

def addanswer(request,subid,qid):
    msg=""
    temp=""
    quest=request.POST.get("qn")
    uid=request.session['stud']
    qry="select * from student_data where rollnum='"+uid+"'"    
    data=dbconnection.selectdata(qry)
    qry="select * from qn_data where id='"+qid+"'"
    data1=dbconnection.selectdata(qry)
    qry="select * from answr_data where qn_id='"+qid+"' and regnum='"+uid+"'"
    data3=dbconnection.selectalldata(qry)
    qry="select * from answr_data where qn_id='"+qid+"' and regnum='"+uid+"' order by id desc"
    data4=dbconnection.selectdata(qry)
    if data4:        
        if str(data4[5])=="0":
            temp=1
        elif str(data4[5])=="1":
            temp=1
        else:
            temp=2
    else:
        temp=2
    if request.method=='POST':     
        myfile=request.FILES['up']
        ps=request.POST.get('ps')        
        fs=FileSystemStorage()
        filename=fs.save("/home/silpa/Desktop/labq/labreport/static/o_answer/"+myfile.name,myfile)
        qry="insert into answr_data values('','"+qid+"','"+uid+"','"+myfile.name+"','2018-09-22','0')"
        dbconnection.insertdata(qry)
        if ps=="1":
            cstructure.structure(myfile.name,quest,qid)
        return HttpResponseRedirect("http://127.0.0.1:8000/addanswer/"+subid+"/"+qid)
        #filename=fs.save("C:\\Users\\Administrator\\Desktop\\python\\python\\labq\\labreport\\static\\studpic\\"+myfile.name,myfile)
        
    return render(request,"student/addanswer.html",{'data':data,'qns':data1,'ans':data3,'subid':subid,'temp':temp})

def exceladd(request):  
    if request.method=='POST':
        myfile=request.FILES['upxl']
        fs=FileSystemStorage()
        filename=fs.save("C:\\Users\\Administrator\\Desktop\\python\\python\\labq\\labreport\\static\\studpic\\"+myfile.name,myfile)
        n=myfile.name
        print(n)
        loc = ("C:\\Users\\Administrator\\Desktop\\python\\python\\labq\\labreport\\static\\studpic\\"+n) 
        wb = xlrd.open_workbook(loc) 
        sheet = wb.sheet_by_index(0) 
        sheet.cell_value(0, 0) 
        for i in range(5,sheet.nrows): 
            s1=str(int(sheet.cell_value(i, 6)))
            s2=str(sheet.cell_value(i, 3))
            s3=sheet.cell_value(i, 1)
            s4=sheet.cell_value(i, 10)
            if s4:
                s4 = str(int(s4))
            s5=str(sheet.cell_value(i,8))
            s6=''
            s7='1' 
            qry="insert into student_data values('','"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"')"
            dbconnection.insertdata(qry)
            qry="insert into user_log values('','"+s2+"','"+s3+"','stud','1')"
            dbconnection.insertdata(qry)
        return HttpResponseRedirect("http://127.0.0.1:8000/exceladd")    
    return render(request,"administrator/addexcel.html",{})