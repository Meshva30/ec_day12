import 'package:flutter/material.dart';

class CalcScreen extends StatefulWidget {
  const CalcScreen({super.key});

  @override
  State<CalcScreen> createState() => _CalcScreenState();
}

class _CalcScreenState extends State<CalcScreen> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text('Calc'),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$num',
                style: TextStyle(fontSize: 100, color: Colors.grey),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        num=num-2;
                      });
                    },
                    child: Text(
                      '   -2   ',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        num=num+2;
                      });
                    },
                    child: Text(
                      '   +2   ',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                  ],
              ),

                  SizedBox(
                    height: 30,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        num=num-4;
                      });
                    },
                    child: Text(
                      '   -4   ',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                   ElevatedButton(
                    onPressed: () {
                      setState(() {
                        num=num+4;
                      });
                    },
                    child: Text(
                      '   +4   ',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    )),
          ],
                  ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                 num=0;
                });
              },
              child: Text(
                ' Clear ',
                style: TextStyle(color: Colors.white, fontSize: 25),
              )),
          ],


              ),

          ),


    ),
    );
  }
}
