import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_x3/confession_making.dart';

class Confess extends StatefulWidget {
  @override
  _ConfessState createState() => _ConfessState();
}

class _ConfessState extends State<Confess> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: FloatingActionButton(
            child: Icon(Icons.mode_edit,color: Colors.white,),
            backgroundColor: Colors.red,
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => confessionMaking()));
            },
          ),
        ),
//      appBar: AppBar(
//        centerTitle: true,
//        title: Text('Confess',style: GoogleFonts.montserrat(fontSize: 20,fontWeight: FontWeight.bold),),
//        backgroundColor: Colors.red,
//      ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: AutoSizeText('Write Anonymous, Stay Anonymous.',
                        style: GoogleFonts.anonymousPro(),minFontSize: 18,),
                    )
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}