import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final _header=Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/3,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60)),
      ),
      child: Stack(
        children: <Widget>[
          Container(
            child: Align(
              alignment: Alignment.center,
              child: Icon(Icons.menu,size: 40,color: Colors.white,),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20,right: 20),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
          )
        ],
      ),
    );

    final _bottom=Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Card(
            margin:EdgeInsets.only(top: 10,left: 20,right: 20,bottom: 10),
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Align(
              alignment: Alignment.center,
              child: TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.email),
                  border: InputBorder.none,
                  hintText: 'Email',
                  contentPadding:EdgeInsets.fromLTRB(10 , 10, 20, 10),
                ),
              ),
            ),
          ),
          Card(
            margin:EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 10),
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Align(
              alignment: Alignment.center,
              child: TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.security),
                  border: InputBorder.none,
                  hintText: 'Password',
                  contentPadding:EdgeInsets.fromLTRB(10 , 10, 20, 10),
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.only(top: 20,left: 20,right: 20),
            shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Align(
              alignment: Alignment.center,
              child: TextFormField(

                decoration: InputDecoration(
                  fillColor: Colors.orange,
                  filled: true,
                  contentPadding: EdgeInsets.fromLTRB(150, 10, 40, 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  hintText: 'Login',
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          RaisedButton(
            onPressed: (){},
            child: const Text('Login'),

          ),


        ],
      ),
    );






    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[

          _header,
          SizedBox(
            height: 40,
          ),
          _bottom,
          Align(
            alignment: Alignment.center,
            child: Text('Dont have an Account? Register'),
          )
        ],
      ),

    );
  }
}
