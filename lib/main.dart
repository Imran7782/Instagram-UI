import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

List imags = [
  'pluse',
  'imran',
  'imran2',
  'imran3'
];
List name = [
  'New',
  'HighLits',
  'Imran',
  'Mohammed',
];

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Practice(),
    );
  }
}

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Row(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 55, left: 10),
                  child: Container(
                    child: const Center(
                      child: Text(
                        "Imran_Mohammed_",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 55),
                child: Icon(Icons.keyboard_arrow_down),
              ),
              const SizedBox(width: 20),
              Padding(
                padding: const EdgeInsets.only(top: 55, left: 160),
                child: Container(
                  height: 20,
                  width: 40,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/ThreeLine.png.png"),
                          fit: BoxFit.cover)),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Container(
                width: 170,
                height: 120,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("assets/images/Dog.jpg"),
                      fit: BoxFit.cover),
                ),
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(),
                      child: Container(
                        height: 30,
                        width: 80,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/Screenshot 2024-10-17 211837.png"))),
                      ),
                    )),
              ),
              const SizedBox(width: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: const Center(
                      child: Text(
                        "   24\nPosts",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    child: const Center(
                      child: Text(
                        "    24,000\nFollowers",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    child: const Center(
                      child: Text(
                        "    244\nFollowing",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Container(
                child: const Text(
                  "Software Engineer",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                child: const Text(
                  "Student At Salahaddin",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                child: const Text(
                  "www.Imran.org",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(width: 1),
              ),
              child: const Center(
                child: Text(
                  "Edit Profile",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 120, 
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: imags.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/${imags[index]}.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      name[index],
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             Padding(
              padding:const EdgeInsets.only(left:1),
              child: Container(
                height: 35,
                width: 55,
              decoration: const BoxDecoration(
                image: DecorationImage(image: 
                AssetImage('assets/images/Grid.png')
                )
              ),
             ),),
             const SizedBox(width: 10,),
              Padding(
              padding:const EdgeInsets.only(left:1),
              child: Container(
                height: 35,
                width: 55,
              decoration: const BoxDecoration(
                image: DecorationImage(image: 
                AssetImage('assets/images/Grid.png')
                )
              ),
             ),),
            ],
          ),
          Container(
            height: 200,
            child: GridView.count(
                crossAxisCount: 3,
                physics:const ScrollPhysics(),
                children: [
                  
                  for(int i=0;i<imags.length;i++)
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:AssetImage('assets/images/${imags[i]}.jpg'),
                          fit: BoxFit.cover )
                      ),
                    )
                  
                ],
                
                
                ), 
               
               
          )
        ],
      ),
    );
  }
}
