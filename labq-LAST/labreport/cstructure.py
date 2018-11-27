import datetime


def structure(fn,qname,qid):
    ncontent=[]
    x =str(datetime.datetime.now())

    ncontent.append("                                Program -  "+qid+ "                         ")
    ncontent.append("***************************************************************************")
    ncontent.append("* Name of the program : "+qname+"                                            *")
    ncontent.append("* Aim : "+qname+"                                                            *")
    ncontent.append("*Date of written : "+x+"                                                     *")
    ncontent.append("***************************************************************************")
    ncontent.append("")
    ncontent.append("***************************************************************************")
    ncontent.append("*Program                                                                  *")



    f=open("/home/silpa/Desktop/labq/labreport/static/o_answer/"+fn,'r')
    line=list(f)
    space=0
    for i in line:
        content=""
        if i=="{\n":
            if space==0:
                ncontent.append(i)
                
                space=space+3
            else:
                for j in range(space):
                    content=content+" "
                s=content+i
                ncontent.append(s)
            
                space=space+3
        elif i=="}\n":
            cont=""
            for j in range(space-3):
                cont=cont+" "
            s=cont+i
            ncontent.append(s)
        
            space=space-3
        else:
            conts=""
            for j in range(space):
                conts=conts+" "
            s=conts+i
            ncontent.append(s)
    ncontent.append("***************************************************************************")
    ncontent.append("Result")
    ncontent.append("*                                                                         *")
    ncontent.append("*            The script is executed and the output is verified            *")
    ncontent.append("***************************************************************************")
    
    f.close()
    with open("/home/silpa/Desktop/labq/labreport/static/final_answer/"+fn,'w',encoding='utf-8')as f:
        for i in ncontent:
            f.write(i+"\n")
    f.close()