import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ID Card',
      home: IDCardHead(),
    );
  }
}

class IDCardHead extends StatelessWidget {
  const IDCardHead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: const Text('ID Card'),
        backgroundColor: Colors.black,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: const Color(0xff04360e),
                    child: const Column(
                      children: [
                        SizedBox(
                          height: 70.0,
                        ),
                        SizedBox(
                          height: 80,
                          width: 80,
                          child: Image(
                            image: AssetImage('images/logo.png'),
                          ),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        SizedBox(
                          child: Text(
                            'ISLAMIC UNIVERSITY OF TECHNOLOGY',
                            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 80.0,
                        ),
                      ],
                    ),
                  ),
                  const Positioned(
                      bottom: -60,
                      child: SizedBox(
                        height: 120,
                        width: 120,
                        child: Image(
                          image: AssetImage('images/avatar.png'),
                        ),
                      ),
                  ),
                ],
              ),
              const Spacer(flex: 1),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  Container(
                    padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 1 / 3, 0, 0, 0),
                    child: const Row(
                      children: <Widget>[
                        Row(
                          children: [
                            Icon(Icons.key),
                            Text('Student ID '),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 1 / 3, 0, 0, 0),
                    child: Container(
                      padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        color: const Color(0xff04360e),
                        borderRadius: BorderRadius.circular(20.0),
                      ),

                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.circle, color: Colors.blue,),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                              '190041106',
                              style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  const SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 1 / 3, 0, 0, 0),
                    child: const Row(
                      children: <Widget>[
                        Row(
                          children: [
                            Icon(Icons.person),
                            Text('Student Name '),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 2 / 5, 0, 0, 0),
                    child: const Text(
                        'Nur Nasrum',
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5.0,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 1 / 3, 0, 0, 0),
                child: const Row(
                  children: <Widget>[
                    Row(
                      children: [
                        Icon(Icons.school_rounded),
                        Text(' Program '),
                        Text('BSc in CSE',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 1 / 3, 0, 0, 0),
                child: const Row(
                  children: <Widget>[
                    Row(
                      children: [
                        Icon(Icons.group),
                        Text(' Department '),
                        Text('CSE',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 1 / 3, 0, 0, 0),
                child: const Row(
                  children: <Widget>[
                    Row(
                      children: [
                        Icon(Icons.location_on_sharp),
                        Text(' Bangladesh',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const Spacer(flex: 1,),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color(0xff04360e),
                ),
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'A subsidiary organ of OIC',
                  style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
            ]),
      ),
    );
  }
}
