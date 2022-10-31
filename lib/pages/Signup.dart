import 'package:ethocity_v3/Constants/customclr.dart';
import 'package:ethocity_v3/UI/Style/newStyle.dart';
import 'package:ethocity_v3/UI/Widget/customWidgets.dart';
import 'package:ethocity_v3/home.dart';
import 'package:ethocity_v3/pages/homepage.dart';
import 'package:ethocity_v3/pages/routine.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';


class signUp extends StatefulWidget {
  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  TextEditingController name_controller = TextEditingController();

  TextEditingController id_controller = TextEditingController();

  TextEditingController dept_controller = TextEditingController();

  TextEditingController sem_controller = TextEditingController();

  TextEditingController sec_controller = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  Box? records;
  @override
  void initState() {
    records=Hive.box("Details");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Center(
              child: Form(
                key: _formKey,
                child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 30),
                          child: Text("Sign Up",style: txtStyle(25,fnt_wdt: FontWeight.w500,clr: customColor.greenClr),),
                        ),
                        field("Student Name",(value){
                              if (value!.length>=1 && value.length<=2){
                                return "Enter A Valid Name";
                              }
                              else{return null;}
                        },name_controller),
                  
                        space(ht: 8),
                  
                        field("Student ID",(value){
                              if (value!.length>=1 && value.length<8){
                                return "Example - 12111014";
                              }
                              else{return null;}
                        },id_controller),
                        space(ht: 8),
                        field("Department",(value){
                              if (value!.length>=1 && value.length<3){
                                return "Example - CSE";
                              }
                              else{return null;}
                        },dept_controller),
                        space(ht: 8),
                        field("Semester",(value){
                              if (value!.length>=1 && value.length<3){
                                return "Example - 4th";
                              }
                              else{return null;}
                        },sem_controller),
                        space(ht: 8),
                        field("Section",(value){
                              if (value!.length>=0 && value.length<2){
                                return null;
                              }
                              else{return "Example - A or B or C";}
                        },sec_controller),
                        space(ht: 15),
                  
                        ElevatedButton(
                        onPressed: ()async{
                        if (_formKey.currentState!.validate()) {
                          final controllersMap={
                            "name":name_controller.text,
                            "id":id_controller.text,
                            "dept":dept_controller.text,
                            "sem":sem_controller.text,
                            "sec":sec_controller.text,
                          };
                          await records!.add(controllersMap);  
                                      
                        }
                        } , 
                        child: Text("Register")
                        )                
                      ],
                        
                    ),
              ),
            ),
          ),
        ),
      ),
      
    );
  }
}
