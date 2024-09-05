import 'package:attendence_app/pages/dashboard.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/login.png'),

          Expanded(child: 
            Container(
               width: double.infinity,
                  decoration: BoxDecoration(
                  gradient: LinearGradient(
                  colors: [
                   const Color.fromARGB(255, 149, 202, 245),      // Start color
                   Color.fromARGB(255, 223, 131, 240),    // End color
                    ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                   ),
                   borderRadius: BorderRadius.vertical(
                   // top: Radius.circular(10),
                   ),
            
            ),
            child: Padding(padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Welcome To Cake World',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context)=>DashboardScreen()));
                    }, 
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
                      padding: EdgeInsetsDirectional.symmetric(horizontal: 70,vertical: 13),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                      )
                    ),
                    child: Text('Login',
                    style: TextStyle(
                      fontSize: 20
                    ),),)
                ],
              ),
            ),
                    )
      )],
      ),
      
  
      
     
     
     
     );
  }
}