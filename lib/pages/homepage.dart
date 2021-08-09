import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const gColor = Color(0xfff2f2f2);

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person,
                color: Colors.white,
                size: 30,
              ))
        ],
      ),
      body: Column(
        children: [
          TitleSection(),
          Container(
            height: 40,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
            ),
          ),
          Expanded(
            child: ProjectSection(),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) {
                return Scaffold();
              },
            ),
          );
        },
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  final List menuItems = ["Projects", "Pending", "Completed"];

  TitleSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 100,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: menuItems.map((item) {
              return Container(
                margin: const EdgeInsets.only(right: 55),
                child: Text(
                  item,
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 29,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class ProjectSection extends StatelessWidget {
  ProjectSection({Key? key}) : super(key: key);

  final List projects = [
    {'title': 'School Management', 'createdAt': '01-08-21'},
    {'title': 'Stock management', 'createdAt': '21-05-21'},
    {'title': 'e-commerce website', 'createdAt': '10-02-21'},
    {'title': 'e-commerce website', 'createdAt': '10-02-21'},
    {'title': 'e-commerce website', 'createdAt': '10-02-21'},
    {'title': 'e-commerce website', 'createdAt': '10-02-21'},
    {'title': 'e-commerce website', 'createdAt': '10-02-21'},
    {'title': 'e-commerce website', 'createdAt': '10-02-21'},
    {'title': 'e-commerce website', 'createdAt': '10-02-21'},
    {'title': 'e-commerce website', 'createdAt': '10-02-21'},
    {'title': 'e-commerce website', 'createdAt': '10-02-21'},
    {'title': 'e-commerce website', 'createdAt': '10-02-21'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            children: projects.map((item) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return Scaffold(
                          appBar: AppBar(),
                        );
                      },
                    ),
                  );
                },
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(left: 30, right: 10, top: 15),
                  child: Row(
                    children: [
                      Container(
                        width: 62,
                        height: 62,
                        margin: EdgeInsets.only(right: 23),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/programming.png'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      item['title'],
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [Text(item['createdAt'])],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
