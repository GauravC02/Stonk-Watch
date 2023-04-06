<<<<<<< HEAD


import 'package:endproject/pages/signup.dart';
import 'package:endproject/pages/utils.dart';
=======
>>>>>>> refs/remotes/origin/master
import 'package:flutter/material.dart';
import 'splashscreen.dart';
import 'package:endproject/main.dart';
import 'package:endproject/pages/homepage.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

<<<<<<< HEAD



class loginpage extends StatefulWidget {
  const loginpage({super.key});
=======
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});
>>>>>>> refs/remotes/origin/master

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {


final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
   TextEditingController _emailController = TextEditingController();
   TextEditingController _passwordController = TextEditingController();
   final _auth = FirebaseAuth.instance;

    @override
    void login(){
      // setState(() {
      //   loading = true;
      // }); 
      _auth.signInWithEmailAndPassword(
        email: _emailController.text,
       password: _passwordController.text.toString()).then((value) {
        utils().toastMessage(value.user!.email.toString());
         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>homepage(),));


       }).onError((error, stackTrace){


        utils().toastMessage(error.toString());
        // setState(() {
        //   loading= false;
        // });


       });


    }
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Scaffold(
 appBar: AppBar(
automaticallyImplyLeading: false,
 title: Text ("LOG In"),
), body: Padding(
padding: const EdgeInsets.symmetric(horizontal: 20), 
child: Column(

mainAxisAlignment: MainAxisAlignment.center, 
crossAxisAlignment: CrossAxisAlignment.center,
children: [
  Form(
    key:_formKey,

    child: Column(
      children: [
         TextField(
             controller: _emailController,
               decoration: InputDecoration(
                 labelText: 'Email',
                 prefixIcon: Icon(Icons.email),
               ),
               

                



),


SizedBox(
  height: 5,
),
 TextField(
             controller: _passwordController,
             obscureText: true,
               decoration: InputDecoration(
                 labelText: 'password',
                 prefixIcon: Icon(Icons.password),
               ),
),
=======
    // Build a Form widget using the _formKey created above.
    return MaterialApp(
      title: "login page",
      home: Scaffold(
        body: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              // Add TextFormFields and ElevatedButton here.
              //         TextFormField(

              //   validator: (value) {
              //   if (value == null || value.isEmpty) {
              //     return 'Please enter some text';
              //   }
              //   return null;
              //   },
              // ),
              // ElevatedButton(
              //   onPressed: () {
              //   // Validate returns true if the form is valid, or false otherwise.
              //   if (_formKey.currentState!.validate()) {

              //     // If the form is valid, display a snackbar. In the real world,
              //     // you'd often call a server or save the information in a database.
              //     ScaffoldMessenger.of(context).showSnackBar(
              //       const SnackBar(content: Text('Processing Data')),

              //     );
              //   }
//         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => homepage(),));
//         },
//         child: const Text('Submit'),

//       ),
              SizedBox(
                height: 44,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "user email",
                  prefixIcon: Icon(
                    Icons.mail,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 44,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "user password",
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.black,
                  ),
                ),
              ),
>>>>>>> refs/remotes/origin/master

              Text(
                "dont remember your password",
                selectionColor: Colors.blue,
              ),
              SizedBox(
                height: 8,
              ),

<<<<<<< HEAD




      ],


    ),
    ),
    SizedBox(
      height: 15,
    ),
 
Container(
              width: double.infinity,
               child: RawMaterialButton(
              fillColor: Color.fromARGB(255, 69, 107, 232), 
              elevation: 0.0,

              padding: EdgeInsets.symmetric(vertical: 20),
              shape: RoundedRectangleBorder (
              borderRadius: BorderRadius.circular (12.0)),
              onPressed: (){
                if(_formKey.currentState!.validate()){
                   login();
                    
                }
                // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>homepage(),));

              },
              child: Text("log in",selectionColor: Colors.black26,),



               ),
),


  SizedBox(

                  height: 20,


            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Dont have an account?"),
                TextButton(onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>signup(),));

                }, 
                child: Text('sign up')),
               
              ],
            )

],
),
),
    );



  
=======
              Container(
                width: double.infinity,
                child: RawMaterialButton(
                  fillColor: Color.fromARGB(255, 69, 107, 232),
                  elevation: 0.0,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  onPressed: () {},
                  child: Text(
                    "login",
                    selectionColor: Colors.black26,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => homepage(),));
>>>>>>> refs/remotes/origin/master
  }
}
