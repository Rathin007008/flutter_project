import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home_screens/home_page.dart';
import '../utilise/chalenter_wiged.dart';




class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController birthDateController = TextEditingController();
  TextEditingController gmailController = TextEditingController();



  @override
  Widget build(BuildContext context) {
Size size = MediaQuery.of(context).size;
    return Scaffold(


      body:
      Center(
        child: SingleChildScrollView(

            child:   Container(
            
              child: Column(

                        children: [
              SizedBox(
                height: 100,
              ),

              Stack(
                children: [
                  CircleAvatar(
                    radius: 50,
                  ),
                  Positioned(
                      right: 0,
                      bottom: 0,
                      child: InkWell(
                        onTap: (){},
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.blue,
                          child: Center(
                            child: Icon(Icons.edit,color: Colors.white,),
                          ),
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: TextField(
                        controller: firstNameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    labelText: 'First Name',


                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: TextField(
                  controller: lastNameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder( borderRadius: BorderRadius.circular(10.0)),
                      labelText: 'last Name'
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: TextField(
                  onTap: (){
                    pickDate(context,birthDateController,firstDate: DateTime(2000),lastDate: DateTime(2016));
                  },
                  // controller: birthDateController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder( borderRadius: BorderRadius.circular(10.0)),
                      labelText: 'Date of Birth'
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: TextField(
                  controller: mobileNumberController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder( borderRadius: BorderRadius.circular(10.0)),
                      labelText: 'Mobile Number'
                  ),
                  maxLength: 10,
                  keyboardType:TextInputType.number,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: TextField(
                  inputFormatters: [],
                  controller: gmailController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder( borderRadius: BorderRadius.circular(10.0)),
                      labelText: 'G-mail'
                  ),
                ),
              ),

              SizedBox(
                height: 30,
              ),
              Container(
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder( borderRadius: BorderRadius.circular(10.0)),
                      labelText: 'Enter the Password'
                  ),
                  maxLength: 8,
                  obscuringCharacter: '*',
                  obscureText: true,

                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: TextField(

                  controller: confirmPasswordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder( borderRadius: BorderRadius.circular(10.0)),
                      labelText: 'Confirm the password'
                  ),
                  maxLength: 8,
                  obscuringCharacter: '*',
                  obscureText: true,


                ),
              ),
              SizedBox(
                height: 30,
              ),

              ElevatedButton(onPressed:(){
                if(firstNameController.text.isNotEmpty && passwordController.text.isNotEmpty && lastNameController.text.isNotEmpty && birthDateController.text.isNotEmpty && mobileNumberController.text.isNotEmpty && gmailController.text.isNotEmpty && confirmPasswordController.text.isNotEmpty){
                 if(passwordController.text.length==8 && confirmPasswordController.text.length==8){
                   if(passwordController.text==confirmPasswordController.text){


                     Navigator.of(context).push(
                         MaterialPageRoute(builder: (context) {
                           return  HomePage( user:' ${firstNameController.text+lastNameController.text}', mobileNumber: '${mobileNumberController.text}', gmail: '${gmailController.text}', birthDate: '${birthDateController.text}', );

                         }

                           ));



                   }
                   else{
                     print('object');

                   }

                 }
                 else{
                   print("object");

                 }

                }
                else{
                  print('this ');
                }
              },





                  child: Text(
                    "Sign In"

                  ),



              ),

              SizedBox(
                height: 20,

              )



                        ],
                      ),
            ),
        ),
      )
    );
  }
}

