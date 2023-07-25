import 'dart:convert';

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'Login/login.dart';
import 'components.dart';

class SignupScreen extends StatefulWidget {
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    final adduserformfield = GlobalKey<FormState>();

    var firstNameController = TextEditingController();
    var lastNameController = TextEditingController();
    var usernameController = TextEditingController();
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    Future<void> addUser(
      String firstName,
      String lastName,
      String username,
      String email,
      String password,
    ) async {
      var headers = {'Content-Type': 'application/json'};
      var request = http.Request(
          'POST',
          Uri.parse(
              'http://mosalah22-001-site1.btempurl.com/api/Auth/Register'));
      request.body = json.encode({
        "firstName": firstName,
        "lastName": lastName,
        "username": username,
        "email": email,
        "password": password,
      });
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        print(await response.stream.bytesToString());
      } else {
        print(response.reasonPhrase);
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 252, 248, 248),
        elevation: 0,
        foregroundColor: Color.fromARGB(255, 7, 7, 7),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: adduserformfield,
            child: Column(children: [
              Text(
                "Enter your Data",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: firstNameController,

                keyboardType: TextInputType.text,
                //make the @ sign visible in the keyboard during writing the email
                onFieldSubmitted: (String value) {},
                validator: (value) {
                  // bool emailvalid = RegExp(
                  //         r"^[a-zA-Z0-9.a-zA-z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\/[a-zA-Z]+")
                  //     .hasMatch(value!);
                  if (value!.isEmpty) {
                    return "please enter your First name";
                  }
                  // else if (!emailvalid) {
                  //   return "enter valid email";
                  // }
                },
                decoration: InputDecoration(
                  labelText: 'firstNameController',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: lastNameController,

                keyboardType: TextInputType.text,
                //make the @ sign visible in the keyboard during writing the email
                onFieldSubmitted: (String value) {},
                validator: (value) {
                  // bool emailvalid = RegExp(
                  //         r"^[a-zA-Z0-9.a-zA-z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\/[a-zA-Z]+")
                  //     .hasMatch(value!);
                  if (value!.isEmpty) {
                    return "please enter your LastName";
                  }
                  // else if (!emailvalid) {
                  //   return "enter valid email";
                  // }
                },
                decoration: InputDecoration(
                  labelText: 'lastNameController',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: usernameController,

                keyboardType: TextInputType.text,
                //make the @ sign visible in the keyboard during writing the email
                onFieldSubmitted: (String value) {},
                validator: (value) {
                  // bool emailvalid = RegExp(
                  //         r"^[a-zA-Z0-9.a-zA-z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\/[a-zA-Z]+")
                  //     .hasMatch(value!);
                  if (value!.isEmpty) {
                    return "please enter your username";
                  }
                  // else if (!emailvalid) {
                  //   return "enter valid email";
                  // }
                },
                decoration: InputDecoration(
                  labelText: 'usernameController',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: emailController,

                keyboardType: TextInputType.text,
                //make the @ sign visible in the keyboard during writing the email
                onFieldSubmitted: (String value) {},
                validator: (value) {
                  // bool emailvalid = RegExp(
                  //         r"^[a-zA-Z0-9.a-zA-z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\/[a-zA-Z]+")
                  //     .hasMatch(value!);
                  if (value!.isEmpty) {
                    return "please enter your emailController";
                  }
                  // else if (!emailvalid) {
                  //   return "enter valid email";
                  // }
                },
                decoration: InputDecoration(
                  labelText: 'emailController',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: passwordController,

                keyboardType: TextInputType.text,
                //make the @ sign visible in the keyboard during writing the email
                onFieldSubmitted: (String value) {},
                validator: (value) {
                  // bool emailvalid = RegExp(
                  //         r"^[a-zA-Z0-9.a-zA-z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\/[a-zA-Z]+")
                  //     .hasMatch(value!);
                  if (value!.isEmpty) {
                    return "please enter your password";
                  }
                  // else if (!emailvalid) {
                  //   return "enter valid email";
                  // }
                },
                decoration: InputDecoration(
                  labelText: 'passwordController',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ConditionalBuilder(
                condition: true,
                //state is! CartaLoginLoadingState,
                builder: (context) => ElevatedButton(
                    onPressed: () {
                      if (adduserformfield.currentState!.validate()) {
                        addUser(
                          firstNameController.text,
                          lastNameController.text,
                          usernameController.text,
                          emailController.text,
                          passwordController.text,
                        );
                        navigateTo(context, LoginScreen());
                      }
                    },
                    child: Text(
                      "Login",
                    )),

                fallback: (context) =>
                    Center(child: CircularProgressIndicator()),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
