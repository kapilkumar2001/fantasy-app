import 'package:create11/views/screens/others/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({Key? key}) : super(key: key);

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {

  TextEditingController nameController = TextEditingController();
  TextEditingController teamNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
 // TextEditingController changePasswordController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController pincodeController = TextEditingController();
  TextEditingController stateController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;

    return Scaffold(
      appBar: AppBar(
        title: Text("Update Profile"),
        backgroundColor: Colors.red,
        elevation: 0,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(height: deviceHeight*1,),
          Padding(
                padding: EdgeInsets.symmetric(horizontal: deviceWidth * 5, vertical: deviceHeight*1),
                child: TextFormField(
                  cursorColor: Colors.black,
                  controller: nameController,
                  autocorrect: true,
                  style: TextStyle(
                   // fontWeight: FontWeight.w800,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    hintText: "Enter your Full name",
                    labelText: "Name",
                    filled: false,
                    // fillColor: violet,
                    labelStyle: TextStyle(
                       fontWeight: FontWeight.w500,
                        fontSize: 14,
                     color: Colors.black,
                     ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                      color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                      color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your name";
                    }
                    return null;
                  },
                ),
              ),

              
              Padding(
                padding: EdgeInsets.symmetric(horizontal: deviceWidth * 5, vertical: deviceHeight*1),
                child: TextFormField(
                  cursorColor: Colors.black,
                  controller: emailController,
                  autocorrect: true,
                  style: TextStyle(
                   // fontWeight: FontWeight.w800,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    hintText: "Enter your email",
                    labelText: "Email",
                    filled: false,
                    // fillColor: violet,
                    labelStyle: TextStyle(
                       fontWeight: FontWeight.w500,
                        fontSize: 14,
                     color: Colors.black,
                     ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                      color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                      color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your email";
                    }
                    return null;
                  },
                ),
              ),


              Padding(
                padding: EdgeInsets.symmetric(horizontal: deviceWidth * 5, vertical: deviceHeight*1),
                child: TextFormField(
                  cursorColor: Colors.black,
                  controller: mobileController,
                  autocorrect: true,
                  style: TextStyle(
                   // fontWeight: FontWeight.w800,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    hintText: "Enter your Mobile Number",
                    labelText: "Mobile Number",
                    filled: false,
                    // fillColor: violet,
                    labelStyle: TextStyle(
                       fontWeight: FontWeight.w500,
                        fontSize: 14,
                     color: Colors.black,
                     ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                      color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                      color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your mobile number";
                    }
                    return null;
                  },
                ),
              ),


              Padding(
                padding: EdgeInsets.symmetric(horizontal: deviceWidth * 5, vertical: deviceHeight*1),
                child: TextFormField(
                  cursorColor: Colors.black,
                  controller: dobController,
                  autocorrect: true,
                  style: TextStyle(
                   // fontWeight: FontWeight.w800,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    hintText: "Enter your Date of Birth",
                    labelText: "Date of Birth",
                    filled: false,
                    // fillColor: violet,
                    labelStyle: TextStyle(
                       fontWeight: FontWeight.w500,
                        fontSize: 14,
                     color: Colors.black,
                     ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                      color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                      color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your date of birth";
                    }
                    return null;
                  },
                ),
              ),


              Padding(
                padding: EdgeInsets.symmetric(horizontal: deviceWidth * 5, vertical: deviceHeight*1),
                child: TextFormField(
                  cursorColor: Colors.black,
                  controller: cityController,
                  autocorrect: true,
                  style: TextStyle(
                   // fontWeight: FontWeight.w800,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    hintText: "Enter your city",
                    labelText: "City",
                    filled: false,
                    // fillColor: violet,
                    labelStyle: TextStyle(
                       fontWeight: FontWeight.w500,
                        fontSize: 14,
                     color: Colors.black,
                     ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                      color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                      color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your city";
                    }
                    return null;
                  },
                ),
              ),



              Padding(
                padding: EdgeInsets.symmetric(horizontal: deviceWidth * 5, vertical: deviceHeight*1),
                child: TextFormField(
                  cursorColor: Colors.black,
                  controller: nameController,
                  autocorrect: true,
                  style: TextStyle(
                   // fontWeight: FontWeight.w800,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    hintText: "Enter your pincdoe",
                    labelText: "Pincode",
                    filled: false,
                    // fillColor: violet,
                    labelStyle: TextStyle(
                       fontWeight: FontWeight.w500,
                        fontSize: 14,
                     color: Colors.black,
                     ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                      color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                      color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your pinocde";
                    }
                    return null;
                  },
                ),
              ),



              Padding(
                padding: EdgeInsets.symmetric(horizontal: deviceWidth * 5, vertical: deviceHeight*1),
                child: TextFormField(
                  cursorColor: Colors.black,
                  controller: nameController,
                  autocorrect: true,
                  style: TextStyle(
                   // fontWeight: FontWeight.w800,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    hintText: "Enter your state",
                    labelText: "State",
                    filled: false,
                    // fillColor: violet,
                    labelStyle: TextStyle(
                       fontWeight: FontWeight.w500,
                        fontSize: 14,
                     color: Colors.black,
                     ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                      color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                      color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your state name";
                    }
                    return null;
                  },
                ),
              ),
              
               SizedBox(height: deviceHeight*3,),

              GestureDetector(
                onTap: (){
                  Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DashBoard()),
                            );
                },
                child: Container(
                            width: deviceWidth * 80,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                // border: Border.all(),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(deviceWidth * 5))),
                            child: Padding(
                              padding: EdgeInsets.all(deviceWidth * 5),
                              child: Text(
                                "Update Profile",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: deviceWidth * 4,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
              ),
             

        ],
      ),
    );
  }
}