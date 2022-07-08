import 'package:delivery_app/Delivery/register.dart';
import 'package:delivery_app/employee_datail.dart';
import 'package:delivery_app/register_employee.dart';
import 'package:delivery_app/utils/constant.dart';
import 'package:flutter/material.dart';

class Login_Employee extends StatefulWidget {
  const Login_Employee({Key? key}) : super(key: key);

  @override
  State<Login_Employee> createState() => _Login_EmployeeState();
}

class _Login_EmployeeState extends State<Login_Employee> {
  final formKey = GlobalKey<FormState>();
  String name = "";

  bool isChecked = false;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   name = UserSimplePrefernce.getUserName() ?? "";
  // }

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.grey;
      }
      return Colors.grey;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Center(child: Image.asset('asset/Images/logo.png')),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 30),
              child: Text(
                'Employee',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.only(left: 30, top: 50, right: 30),
            child: SizedBox(
              height: 50,
              child: TextFormField(
                onChanged: (name) => setState(() {
                  this.name = name;
                }),
                initialValue: name,
                decoration: const InputDecoration(
                    fillColor: Color.fromARGB(255, 238, 235, 235),
                    filled: true,
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 20)),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 29, top: 15, right: 29),
            child: SizedBox(
              height: 50,
              child: TextFormField(
                decoration: const InputDecoration(
                    fillColor: Color.fromARGB(255, 238, 235, 235),
                    filled: true,
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 20)),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  child: Checkbox(
                checkColor: Colors.white,
                fillColor: MaterialStateProperty.resolveWith(getColor),
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              )),
              // Text('I agree with Terms of Service and Privacy Policy',style: TextStyle(color: Color),)
              RichText(
                  text: TextSpan(
                      text: 'I agree with ',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                      children: const <TextSpan>[
                    TextSpan(
                        text: 'Terms of Services and Privacy Policy',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold))
                  ])),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => Employee_detail()));
                },
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 80, vertical: 20),
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: white),
                    primary: button,
                    //   onPrimary: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40))),
                child: const Text(
                  'Next',
                  // style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Have an account? ',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => Register_Employee()));
                },
                child: Text('Register',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold)),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
