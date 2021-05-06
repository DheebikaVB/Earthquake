import os
import base64
from flask import Flask, render_template, Response, redirect, request, session, abort, url_for
from datetime import date
import datetime
import calendar 
import xlrd
from urllib.request import urlopen
import urllib.request
import urllib.parse
from flask import send_file
from werkzeug.utils import secure_filename
import mysql.connector
mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="",
  charset="utf8",
  database="iot_earth"

)

#from store import *


app = Flask(__name__)
app.secret_key = 'abcdef'
#######
UPLOAD_FOLDER = 'dataset'
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER
#####


@app.route('/')
def index():
    return render_template('index.html')



@app.route('/login_admin', methods=['GET', 'POST'])
def login_admin():
    msg=""
    act = request.args.get('act')
    if request.method=='POST':
        uname=request.form['uname']
        pwd=request.form['pass']
        cursor = mydb.cursor()
        cursor.execute('SELECT * FROM admin WHERE username = %s AND password = %s', (uname, pwd))
        account = cursor.fetchone()
        if account:
            session['username'] = uname
            return redirect(url_for('upload'))
        else:
            # Account doesnt exist or username/password incorrect
            msg = 'Incorrect username/password!'
    
        
        
    return render_template('login_admin.html',msg=msg,act=act)



@app.route('/upload', methods=['GET', 'POST'])
def upload():
    msg=""
    
    if 'username' in session:
        uname = session['username']
    if request.method=='POST':
        mycursor = mydb.cursor()
        mycursor.execute("delete FROM store_data")
        mydb.commit()
        if 'file' not in request.files:
            
            return redirect(request.url)
        file = request.files['file']
        if file:
                fname = "dataset.xlsx"
                filename = secure_filename(fname)
                
                file.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))
                # To open Workbook
                loc = ("dataset/"+fname) 
                wb = xlrd.open_workbook(loc) 
                sheet = wb.sheet_by_index(0)
                nr=sheet.nrows
                i=2
                while i<300:
                    col1=sheet.cell_value(i, 0)
                    col2=sheet.cell_value(i, 1)
                    col3=sheet.cell_value(i, 2)
                    col4=sheet.cell_value(i, 3)
                    col5=sheet.cell_value(i, 4)
                    col6=sheet.cell_value(i, 5)
                    col7=sheet.cell_value(i, 6)
                    col8=sheet.cell_value(i, 7)
                    col9=sheet.cell_value(i, 8)
                    col10=sheet.cell_value(i, 9)
                    col11=sheet.cell_value(i, 10)

                    #col2=str(col2)
                    #col22=col2.split('.')
                    #col2=col22[0]
                    #col7=str(col7)
                    #col77=col7.split('.')
                    #col7=col77[0]
                    i+=1
                    
                    mycursor = mydb.cursor()
                    mycursor.execute("SELECT max(id)+1 FROM store_data")
                    maxid = mycursor.fetchone()[0]
                    if maxid is None:
                        maxid=1
                    cursor = mydb.cursor()
                    sql = "INSERT INTO store_data(id,data1,data2,data3,data4,data5,data6,data7,data8,data9,data10,data11) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
                    val = (maxid,str(col1),str(col2),str(col3),str(col4),str(col5),str(col6),str(col7),str(col8),str(col9),str(col10),str(col11))
                    cursor.execute(sql, val)
                    mydb.commit()    
                    #print(sheet.cell_value(i, 0))
                    
                ####

                msg="Upload Success"
                return redirect(url_for('view'))
                
    return render_template('upload.html', msg=msg)

@app.route('/view', methods=['GET', 'POST'])
def view():
    msg=""
    
    
    mycursor = mydb.cursor()
    mycursor.execute("SELECT * FROM store_data")
    data = mycursor.fetchall()
    if request.method=='POST':
        return redirect(url_for('feature_sel'))
    
    return render_template('view.html', data=data)

@app.route('/feature_sel', methods=['GET', 'POST'])
def feature_sel():
    msg=""
    mycursor = mydb.cursor()
    mycursor.execute("SELECT * FROM store_data")
    data = mycursor.fetchall()
    
    
    if request.method=='POST':
        return redirect(url_for('feature_ext'))
    
    return render_template('feature_sel.html', data=data)

def DQN():
        model = Sequential()

        model.add(Conv2D(256, (3, 3), input_shape=env.OBSERVATION_SPACE_VALUES))  # OBSERVATION_SPACE_VALUES = (10, 10, 3) a 10x10 RGB image.
        model.add(Activation('relu'))
        model.add(MaxPooling2D(pool_size=(2, 2)))
        model.add(Dropout(0.2))

        model.add(Conv2D(256, (3, 3)))
        model.add(Activation('relu'))
        model.add(MaxPooling2D(pool_size=(2, 2)))
        model.add(Dropout(0.2))

        model.add(Flatten())  # this converts our 3D feature maps to 1D feature vectors
        model.add(Dense(64))

        model.add(Dense(env.ACTION_SPACE_SIZE, activation='linear'))  # ACTION_SPACE_SIZE = how many choices (9)
        model.compile(loss="mse", optimizer=Adam(lr=0.001), metrics=['accuracy'])
        return model

@app.route('/feature_ext', methods=['GET', 'POST'])
def feature_ext():
    msg=""
    mycursor = mydb.cursor()
    mycursor.execute("SELECT * FROM store_data where data5>=5.9")
    data = mycursor.fetchall()

    mycursor.execute("SELECT * FROM store_data where data5>=4.5 and data5<=5.8")
    data2 = mycursor.fetchall()

    mycursor.execute("SELECT * FROM store_data where data5>=3 and data5<=4.4")
    data3 = mycursor.fetchall()
    
    
    if request.method=='POST':
        return redirect(url_for('classified'))
    
    return render_template('feature_ext.html',data=data,data2=data2,data3=data3)
 
@app.route('/classified', methods=['GET', 'POST'])
def classified():
    msg=""
    mycursor = mydb.cursor()
    mycursor.execute("SELECT * FROM store_data where data5>=5.9")
    data = mycursor.fetchall()

    mycursor.execute("SELECT * FROM store_data where data5>=4.5 and data5<=5.8")
    data2 = mycursor.fetchall()

    mycursor.execute("SELECT * FROM store_data where data5>=3 and data5<=4.4")
    data3 = mycursor.fetchall()
   
    
    return render_template('classified.html', data=data,data2=data2,data3=data3)

@app.route('/contact', methods=['GET', 'POST'])
def contact():
    mycursor = mydb.cursor()
    mycursor.execute("SELECT * FROM admin")
    data = mycursor.fetchone()
    mobile=""
    msg = request.args.get('msg')
    if msg is None:
        msg=""
    if request.method=='POST':
        mobile=request.form['mobile']
        mycursor = mydb.cursor()
        mycursor.execute("update admin set mobile=%s",(mobile, ))
        mydb.commit()
        return redirect(url_for('contact',msg='success'))

    
    return render_template('contact.html',data=data, msg=msg)
    
@app.route('/test', methods=['GET', 'POST'])
def test():
    data=""
    msg=""
    mag=""
    mg=0.0
    mycursor = mydb.cursor()

    if request.method=='POST':
        v1=request.form['v1']
        v2=request.form['v2']
        v3=request.form['v3']
        
        mycursor.execute("SELECT * FROM store_data where data10>=%s and data6>=%s and data7>=%s",(v1,v2,v3))
        data = mycursor.fetchone()
        mag=data[5]
        if mag!="":
            mg=float(mag)
            if mg>=5.9:
                msg="Severe"
            elif mg>=4.5:
                msg="Moderate"
            else:
                msg="Mild"
        
    return render_template('test.html',data=data,mag=mag,msg=msg)
 

@app.route('/result', methods=['GET', 'POST'])
def result():
    msg=""
    res=""
    mess=""
    ds=""

    try:
        url2="http://projectone.in/iot_earth/view.php"
        ur2 = urlopen(url2)#open url
    except:
        print("u2")
    
    
    url="http://projectone.in/iot_earth/log.txt"
    ur = urlopen(url)#open url
    data1 = ur.read().decode('utf-8')
    print(data1)
    if data1!="":
        dd=data1.split(' ')
        t=dd[0].split(':')
        p=dd[1].split(':')
        x=dd[2].split(':')
        y=dd[3].split(':')
        z=dd[4].split(':')
        s=dd[5].split(':')

        
        t1=t[1]
        p1=p[1]
        x1=x[1]
        y1=y[1]
        z1=z[1]
        # and data7
        if s[1]=="0":
            mycursor = mydb.cursor()
            mycursor.execute("SELECT * FROM admin")
            dd = mycursor.fetchone()
            mobile=dd[2]
            print(mobile)
            mycursor.execute("SELECT * FROM store_data where data10>=%s and data6>=%s",(z1,t1))
            data = mycursor.fetchone()
            mag=data[5]
            if mag!="":
                mg=float(mag)
                if mg>=5.9:
                    res="Severe"
                elif mg>=4.5:
                    res="Moderate"
                else:
                    res="Mild"
            if res=="Severe" or res=="Moderate":
                print(x1)
                print(y1)
                x2=float(x1)
                y2=float(y1)
                if x2>=9:
                    ds="East"
                elif x2<=-7:
                    ds="West"
                elif y2>=9:
                    ds="North"
                else:
                    ds="South"
                
                    
                
                mess="Earth Quake Predicted Level is "+res+", Range is "+mag+", "+ds+" direction"
                print(mess)
                params = urllib.parse.urlencode({'token': 'b81edee36bcef4ddbaa6ef535f8db03e', 'credit': 2, 'sender': 'NoTSMS', 'message':mess, 'number':mobile})
                url = "http://pay4sms.in/sendsms/?%s" % params
                with urllib.request.urlopen(url) as f:
                    print(f.read().decode('utf-8'))
            
            else:
                mess="No Earth Quake"

            msg=data1
    else:
        msg=""
    
    #f2=open("log.txt","r")
    #vv=f2.read()
    #f2.close()
    url3="http://projectone.in/iot_earth/update.php"
    ur3 = urlopen(url3)#open url
    
    
    return render_template('result.html',msg=msg,mess=mess)

@app.route('/logout')
def logout():
    # remove the username from the session if it is there
    session.pop('username', None)
    return redirect(url_for('index'))

if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=True)
