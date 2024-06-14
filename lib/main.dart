import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main()=>runApp(MaterialApp(

title:'DIAM ERP',
debugShowCheckedModeBanner: false,
home: LoginPage(),

));

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//-----------------------------------------------APP BAR---------------------//
appBar: AppBar(centerTitle: true,title: Text('Calc rom',style: TextStyle(color: Colors.amber,fontSize:25),),
backgroundColor:Color.fromARGB(255, 65, 63, 63),
 leading: IconButton(
    onPressed: () {},
    icon: Icon(Icons.home,color: Colors.amber,),tooltip: "HOME",
  ),
  actions: [
    IconButton(
      onPressed: () {},
      icon: Icon(Icons.call,color: Colors.amber,),tooltip: "CALL",
    ),
    IconButton(
      onPressed: () {},
      icon: Icon(Icons.more_vert,color: Colors.amber,),tooltip: "MORE",
    ),
  ],),
//----------------------------------------add photo----------------------------------//
 body: SingleChildScrollView( 
        child: Column( 
          children: <Widget>[ 
            Padding( 
              padding: const EdgeInsets.only(top: 70), 
              child: Center( 
                child: Container( 
                  width: 120, 
                  height: 120,
                  child: Image.asset('assets/lglg.png'), 
                ), 
              ), 
            ),
//-----------------------------------------------email-----------------------------//
 Padding(
     padding: const EdgeInsets.only(left: 250,right: 250), 
   child: TextField(
    controller: emailController,
       decoration: const InputDecoration(
       border: OutlineInputBorder(borderSide: 
              BorderSide(color: Colors.red), 
              borderRadius: BorderRadius.all( 
               Radius.circular(9.0)),
               ),
       labelText: 'User Email',
       hintText: 'Enter valid mail id as abc@gmail.com',
      prefixIcon: Icon( 
    Icons.email, 
      color: Colors.black, 
      ),
       
     ),
   ),
 ),
//-----------------------------------------------password--------------------------//
const Padding(
     padding: const EdgeInsets.only(top:20, left: 250,right: 250),
   child: TextField(
       obscureText: true,
       decoration: InputDecoration(
       border: OutlineInputBorder(),
       labelText: 'Password',
       hintText: 'Enter your secure password',
       prefixIcon: Icon( Icons.key,
  
      color: Colors.black, 
      ),
     ),
   ),
 ),

Padding(
  padding: const EdgeInsets.all(28.0),
  child: Container(
    height: 50,width: 200,
    child: ElevatedButton(
      onPressed: () {
         
  String email = emailController.text; 
  
  
  if (isEmailValid(email)) {
     print('Email is valid');
                   } 
                   else {
    
    print('Invalid email format');
    
  }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue, // Background color
      ),
      child: const Text(
        'Login',
        style: TextStyle(
          color: Colors.white,
         
          fontSize: 22,
        ),

    ),
  ),
),
),

         
          ], 
      
        ),
   
   ),

    );
  }

 bool isEmailValid(String email) {
  String pattern = r'^[a-zA-Z0-9._%+-]+@gmail\.com$';

  RegExp regex = RegExp(pattern);
  bool isValidEmail = regex.hasMatch(email);

  bool containsGmail = email.contains("");

  return isValidEmail && containsGmail;
}
}


