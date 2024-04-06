import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gishackathon/components/my_button.dart';
import 'package:gishackathon/components/my_textfield.dart';

class LoginScreen extends StatefulWidget {
  final Function()? onTap;
  LoginScreen({super.key, required this.onTap});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() async{
    showDialog(context: context,builder: (context){
      return const Center(
        child: CircularProgressIndicator(),
        );
    },);
    try{
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text, 
      password: passwordController.text,
    );
    Navigator.pop(context);
    } on FirebaseAuthException catch (e) {

    Navigator.pop(context);
      showErrorMessage(e.code);
    }

  }
  void showErrorMessage(String message){
    showDialog(
      context: context,
      builder: (context){
        return  AlertDialog(
          title: Center(
            child: Text(
              message
              ),
            ),
          );
        },
      );
    }
    

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 221, 221),
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(height: 90),

                    Image.asset("assets/LoginLogo.png", width:70),

                    const SizedBox(height: 50),

                    Text(
                      "Авторизуйтесь",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
                    ),
                    const SizedBox(height: 25),

                    //email
                    MyTextField(
                      controller: emailController,
                      hintText: "Почта",
                      obscureText: false,
                    ),

                    const SizedBox(height: 10),

                    //password
                    MyTextField(
                      controller: passwordController,
                      hintText: "Пароль",
                      obscureText: true,
                    ),
                    const SizedBox(height: 50),

                    MyButton(
                      text: "Войти",
                      onTap:signUserIn ,
                    ),
                    const SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: widget.onTap,
                          child: const Text(
                            "Регистрация",
                            style: TextStyle(color: Color.fromARGB(255, 0, 151, 116)),))
                      ],
                    )
                  ],
                )
                
              ),
            ),
            Expanded(
              flex: 8,
              child: Image.asset("assets/BGlogin.png"),
            ),
            
          ],
        ),
      ),
    );
  }
}