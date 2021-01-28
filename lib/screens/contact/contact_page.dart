import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_app_resume/repository/Repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_app_resume/screens/contact/cubit/contact_cubit.dart';

class ContactPage extends StatefulWidget {
  @override
  _ConnectMeState createState() => _ConnectMeState();
}

class _ConnectMeState extends State<ContactPage> {
  var email = "", message = "", subject = "", name = "";
  final emailController = TextEditingController(text: "");
  final messageController = TextEditingController(text: "");
  final subjectController = TextEditingController(text: "");
  final nameController = TextEditingController(text: "");

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController.addListener(() {
      setState(() {});
    });
    messageController.addListener(() {
      setState(() {});
    });
    subjectController.addListener(() {
      setState(() {});
    });
    nameController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    messageController.dispose();
    subjectController.dispose();
    nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    String validate(String value) {
      if (!(value.length > 3) && value.isNotEmpty) {
        return "Please enter valid data";
      }
      return null;
    }

    String validateEmail(String value) {
      bool emailValid = RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(value);

      if (!(emailValid) && value.isNotEmpty) {
        return "Please enter valid data";
      }
      return null;
    }

    showAlertDialog(BuildContext context, isError) {
      // set up the button
      Widget okButton = FlatButton(
        child: Text("OK"),
        onPressed: () {
          Navigator.pop(context);
          if (!isError) {
            messageController.text = "";
            subjectController.text = "";
            nameController.text = "";
          }
        },
      );

      // set up the AlertDialog
      AlertDialog alert = AlertDialog(
        title: Text(isError ? "Invalid data" : "Success"),
        content: Text(isError
            ? "Please insert valid data"
            : "Your form has been submitted.  I will email back to you"),
        actions: [
          okButton,
        ],
      );

      // show the dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }

    return SingleChildScrollView(
      child: Container(
        child: BlocProvider(
            create: (_) => ContactCubit(repository: context.read<Repository>()),
            child: BlocBuilder<ContactCubit, ContactState>(
              builder: (context, state) {
                return Container(
                  color: Color(0xffFAF9FB),
                  height: screenSize.height * 0.9,
                  width: double.infinity,
                  padding: EdgeInsets.all(screenSize.height * 0.02),
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(screenSize.height * 0.1),
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/world_map.png"),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffFAF9FB).withOpacity(0.9),
                        ),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Contact Me",
                                        style: TextStyle(
                                            color: Color(0xff498CF4)
                                                .withAlpha(200),
                                            letterSpacing: 2,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "Get In Touch",
                                        style: TextStyle(
                                            color: Color(0xff498CF4),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: screenSize.width * 0.04,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(4),
                                          decoration: BoxDecoration(
                                            color: Color(0xff498CF4),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                          ),
                                          constraints: BoxConstraints(
                                              maxHeight: 20, maxWidth: 20),
                                          child: Center(
                                            child: Icon(
                                              Icons.call,
                                              color: Colors.white,
                                              size: 10,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Call Me",
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xff394562),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 4,
                                            ),
                                            Text(
                                              "9844724227",
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.normal,
                                                color: Color(0xff394562)
                                                    .withOpacity(0.7),
                                              ),
                                            ),
                                            Text(
                                              "9864837843",
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.normal,
                                                color: Color(0xff394562)
                                                    .withOpacity(0.7),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(4),
                                          decoration: BoxDecoration(
                                            color: Color(0xff498CF4),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                          ),
                                          constraints: BoxConstraints(
                                              maxHeight: 20, maxWidth: 20),
                                          child: Center(
                                            child: Icon(
                                              Icons.email,
                                              color: Colors.white,
                                              size: 10,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Email",
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xff394562),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 4,
                                            ),
                                            Text(
                                              "Kanxoramesh@gmail.com",
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.normal,
                                                color: Color(0xff394562)
                                                    .withOpacity(0.7),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(4),
                                          decoration: BoxDecoration(
                                            color: Color(0xff498CF4),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                          ),
                                          constraints: BoxConstraints(
                                              maxHeight: 20, maxWidth: 20),
                                          child: Center(
                                            child: Icon(
                                              Icons.location_on,
                                              color: Colors.white,
                                              size: 10,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Location",
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xff394562),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 4,
                                            ),
                                            Text(
                                              "Gongabu, Buspark",
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.normal,
                                                color: Color(0xff394562)
                                                    .withOpacity(0.7),
                                              ),
                                            ),
                                            Text(
                                              "Kathmandu",
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.normal,
                                                color: Color(0xff394562)
                                                    .withOpacity(0.7),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: screenSize.height * 0.06,
                              ),
                              Text(
                                "Send Message",
                                style: TextStyle(
                                    color: Color(0xff498CF4),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: screenSize.height * 0.04,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Flexible(
                                    flex: 6,
                                    child: Container(
                                      child: TextField(
                                        controller: nameController,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                            width: 1,
                                          )),
                                          hintText: 'Name',
                                          errorText:
                                              validate(nameController.text),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 1,
                                                color: Color(0xff498CF4)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Flexible(
                                    flex: 6,
                                    child: Container(
                                      child: TextField(
                                        controller: emailController,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                            width: 1,
                                          )),
                                          hintText: 'Email',
                                          errorText:
                                              validate(emailController.text),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 1,
                                                color: Color(0xff498CF4)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 16),
                                child: TextField(
                                  controller: subjectController,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                      width: 1,
                                    )),
                                    hintText: 'Subject',
                                    errorText: validate(subjectController.text),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Color(0xff498CF4)),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 16),
                                child: TextField(
                                  controller: messageController,
                                  maxLines: 5,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                      width: 1,
                                    )),
                                    hintText: 'Message',
                                    errorText: validate(messageController.text),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Color(0xff498CF4)),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 24),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        if (emailController.text.isEmpty ||
                                            nameController.text.isEmpty ||
                                            subjectController.text.isEmpty ||
                                            messageController.text.isEmpty) {
                                          showAlertDialog(context, true);
                                        } else {
                                          FirebaseFirestore.instance
                                              .collection('message')
                                              .doc()
                                              .set({
                                            'name': nameController.text,
                                            'email': emailController.text,
                                            'details': messageController.text,
                                            'subject': subjectController.text
                                          });

                                          showAlertDialog(context, false);
                                        }
                                      },
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 16),
                                        child: Text(
                                          "Send Message",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Color(0xff498CF4),
                                            borderRadius:
                                                BorderRadius.circular(80)),
                                      ),
                                    )
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            )),
      ),
    );
  }
}
