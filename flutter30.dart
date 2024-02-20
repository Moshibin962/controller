// ignore_for_file: prefer_const_constructors, avoid_print, avoid_unnecessary_containers, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var a = TextEditingController();
  var b = TextEditingController();
  var ab;
  var ba;
  var c;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 40),
              child: SizedBox(
                height: 40,
                width: 350,
                child: TextFormField(
                  controller: a,
                  decoration:
                  InputDecoration(enabledBorder: OutlineInputBorder()),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 30),
              child: SizedBox(
                height: 40,
                width: 350,
                child: TextFormField(
                  controller: b,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: FloatingActionButton(
                onPressed: () {
                  ab = int.parse(a.text);
                  ba = int.parse(b.text);
                  setState(() {
                    c = ab + ba;
                  });

                  print(c);
                },
                child: Text('Add'),
              ),
            ),
            c != null ? Text(c.toString()) : Text('Add values')
          ],
        ),
      ),
    );
  }
}