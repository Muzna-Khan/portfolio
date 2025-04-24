import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          //  height: MediaQuery.sizeOf(context).height,
          color: Colors.white,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 200,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.red, Color(0xFFC1222C)]),
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(65),
                        )),
                  ),
                  Positioned(
                    top: 140,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(60), // Outer circle border
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(
                            10), // Padding to create space for the inner circle
                        child: Container(
                          width: 80, // Inner circle size
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                                50), // Inner circle border
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg?t=st=1739703355~exp=1739706955~hmac=c3ab5a1121b66624c3150373361960185bff3a8735b8d983afc71ced0fab38af&w=740"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 50),
              Text("Muhammad Ali",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold)),
              Text("Product Design",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  )),
              SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        "Projects",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                            decoration: TextDecoration.none),
                      ),
                      Text(
                        "18",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Following",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                            decoration: TextDecoration.none),
                      ),
                      Text(
                        "169",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Followers",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                            decoration: TextDecoration.none),
                      ),
                      Text(
                        "200",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const Divider(
                color: Color(0xFFC1222C),
                thickness: 3,
                indent: 30,
                endIndent: 30,
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "I am here to design the UI/UX of the app. \n I love solving visual problems using \n UI/UX design",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                      decoration: TextDecoration.none),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/icons/instagram.png"),
                      iconSize: 20),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/icons/twitter.png"),
                      iconSize: 20),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/icons/fb.png"),
                      iconSize: 20)
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: Color(0xFFC1222C),
                    minimumSize:
                        Size(MediaQuery.sizeOf(context).width * 0.75, 50),
                  ),
                  onPressed: () {},
                  child: Text("View Profile")),
              const Padding(
                padding: EdgeInsets.only(top: 16, left: 16),
                child: Row(
                  children: [
                    Text(
                      "Skills",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),
                      height: 120,
                      width: MediaQuery.sizeOf(context).width / 1.7,
                      decoration: BoxDecoration(
                        color: Colors.pink.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Image.asset("assets/images/skills_img1.png"),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),
                      height: 120,
                      width: MediaQuery.sizeOf(context).width / 1.7,
                      decoration: BoxDecoration(
                        color: Colors.pink.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Image.asset("assets/images/skills_img2.png"),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),
                      height: 120,
                      width: MediaQuery.sizeOf(context).width / 1.7,
                      decoration: BoxDecoration(
                        color: Colors.pink.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Image.asset("assets/images/skills_img3.png"),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),
                      height: 120,
                      width: MediaQuery.sizeOf(context).width / 1.7,
                      decoration: BoxDecoration(
                        color: Colors.pink.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Image.asset("assets/images/skills_img4.png"),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 16),
                child: Row(
                  children: [
                    Text(
                      "My Projects",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          decoration: TextDecoration.none),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          height: 220,
                          width: MediaQuery.sizeOf(context).width / 1.7,
                          decoration: BoxDecoration(
                            color: Colors.pink.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(16.0),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/project1.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 2, right: 50),
                              child: Text("Project Title",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 20)),
                            ),
                            const SizedBox(width: 20),
                            Container(
                                margin:
                                    const EdgeInsets.only(left: 8, bottom: 2),
                                decoration: BoxDecoration(
                                  color: Colors.pink,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                padding: const EdgeInsets.all(5),
                                child: const Icon(Icons.arrow_forward,
                                    size: 20, color: Colors.white))
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          height: 220,
                          width: MediaQuery.sizeOf(context).width / 1.7,
                          decoration: BoxDecoration(
                            color: Colors.pink.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(16.0),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/project2.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 2, right: 50),
                              child: Text("Project Title",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 20)),
                            ),
                            const SizedBox(width: 20),
                            Container(
                                margin:
                                    const EdgeInsets.only(left: 8, bottom: 2),
                                decoration: BoxDecoration(
                                  color: Colors.pink,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                padding: const EdgeInsets.all(5),
                                child: const Icon(Icons.arrow_forward,
                                    size: 20, color: Colors.white))
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          height: 220,
                          width: MediaQuery.sizeOf(context).width / 1.7,
                          decoration: BoxDecoration(
                            color: Colors.pink.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(16.0),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/project3.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 2, right: 50),
                              child: Text("Project Title",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 20)),
                            ),
                            const SizedBox(width: 20),
                            Container(
                                margin:
                                    const EdgeInsets.only(left: 8, bottom: 2),
                                decoration: BoxDecoration(
                                  color: Colors.pink,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                padding: const EdgeInsets.all(5),
                                child: const Icon(Icons.arrow_forward,
                                    size: 20, color: Colors.white))
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          height: 220,
                          width: MediaQuery.sizeOf(context).width / 1.7,
                          decoration: BoxDecoration(
                            color: Colors.pink.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(16.0),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/project4.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 2, right: 50),
                              child: Text("Project Title",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 20)),
                            ),
                            const SizedBox(width: 20),
                            Container(
                                margin:
                                    const EdgeInsets.only(left: 8, bottom: 2),
                                decoration: BoxDecoration(
                                  color: Colors.pink,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                padding: const EdgeInsets.all(5),
                                child: const Icon(Icons.arrow_forward,
                                    size: 20, color: Colors.white))
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
