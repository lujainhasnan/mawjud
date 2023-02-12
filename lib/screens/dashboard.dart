import 'package:mawjudapp/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  _LoginScreenState createState() => _LoginScreenState();}
class _LoginScreenState extends State<LoginScreen> {
  // form key
  //final _formKey = GlobalKey<FormState>();
  // editing controller  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passController = new TextEditingController();
  // firebase  FirebaseAuth _auth = FirebaseAuth.instance;
  // string for displaying the error Message
  String? errorMessage;
  @override  Widget build(BuildContext context) {
    return Scaffold(      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFFAFAFA),      body: GestureDetector(
        child: Column(          mainAxisSize: MainAxisSize.max,
          children: [            Expanded(
              child: Stack(                children: [
                  Container(
                    width: MediaQuery                        .of(context)
                        .size                        .width,
                    height: 189.2,                    decoration: const BoxDecoration(
                      gradient: LinearGradient(                        colors: [Color(0xFF004146), Color(0xFF3D9CA3)],
                        stops: [0, 1],                        begin: AlignmentDirectional(0, -1),
                        end: AlignmentDirectional(0, 1),                      ),
                    ),                  ),
                  Align(                    alignment: const AlignmentDirectional(0, 0),
                    child: Padding(                      padding:
                      const EdgeInsetsDirectional.fromSTEB(0, 99, 0, 0),                      child: Container(
                        width: double.infinity,
                        height: 720,                        decoration: const BoxDecoration(
                          color: Color(0xFFFAFAFA),                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0),                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(60),                            topRight: Radius.circular(60),
                          ),                        ),
                        child: Padding(                          padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),                          child: Column(
                            mainAxisSize: MainAxisSize.max,                            children: [
                              Padding(                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 9, 0, 25),                                child: Image.asset(
                                  'assets/images/profile.png',                                  width:
                                  MediaQuery                                      .of(context)
                                      .size                                      .width * 0.60,
                                  height:                                  MediaQuery
                                      .of(context)                                      .size
                                      .height * 0.30,                                  fit: BoxFit.cover,
                                ),                              ),
                              Padding(                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 0, 10),                                child: Container(
                                  width:                                  MediaQuery
                                      .of(context)                                      .size