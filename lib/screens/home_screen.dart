import 'package:flames_task/screens/widgets/story_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  // List <Widgets>
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Find Flames',
            style: GoogleFonts.nunito(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Color(0xFFFF5F8F),
            )),
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/1.jpg'),
        ),
        actions: [
          Image.asset('assets/filter.png'),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 200,
                child: Row(
                  children: [
                    StoryWidget(
                      image: 'assets/2.jpg',
                      text: 'Likes',
                      isFirstCard: true,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    StoryWidget(
                      image: 'assets/3.jpg',
                      text: 'Tony',
                      isFirstCard: false,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    StoryWidget(
                      image: 'assets/4.jpg',
                      text: 'James',
                      isFirstCard: false,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    StoryWidget(
                      image: 'assets/5.jpg',
                      text: 'Jordan',
                      isFirstCard: false,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Stack(
                clipBehavior: Clip.none,
                fit: StackFit.passthrough,
                children: [
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: ListView(
                      padding: EdgeInsets.only(
                          left: 5, right: 20, top: 20, bottom: 20),
                      children: [
                        ListTile(
                          leading: Container(
                            height: 70,
                            width: 70,
                            child: CircleAvatar(
                                backgroundImage: AssetImage('assets/3.jpg')),
                          ),
                          title: Row(
                            children: [
                              Text('Tony'),
                              SizedBox(
                                width: 4,
                              ),
                              Image.asset(
                                'assets/blue.png',
                              ),
                            ],
                          ),
                          subtitle: Text('Hiii!'),
                          trailing: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('13:10'),
                              Container(
                                padding: EdgeInsets.all(2),
                                height: 17,
                                width: 17,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Color(0xffFF5F8F),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Divider(thickness: 1),
                        ListTile(
                          leading: Container(
                            height: 70,
                            width: 70,
                            child: CircleAvatar(
                                backgroundImage: AssetImage('assets/4.jpg')),
                          ),
                          title: Row(
                            children: [
                              Text('James'),
                              SizedBox(
                                width: 4,
                              ),
                              Image.asset(
                                'assets/blue.png',
                              ),
                            ],
                          ),
                          subtitle: Text('Hiii!'),
                          trailing: Text('13:10'),
                        ),
                        Divider(thickness: 1),
                        ListTile(
                          leading: Container(
                            height: 70,
                            width: 70,
                            child: CircleAvatar(
                                backgroundImage: AssetImage('assets/5.jpg')),
                          ),
                          title: Text('Jordan'),
                          subtitle: Text(
                            'Typing',
                            style: TextStyle(
                              color: Color(0xffFF5F8F),
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          trailing: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('13:10'),
                              Container(
                                padding: EdgeInsets.all(2),
                                height: 17,
                                width: 17,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Color(0xffFF5F8F),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Text(
                                  '9+',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Divider(thickness: 1),
                      ],
                    ),
                  ),
                  Positioned(
                      top: -35,
                      left: 1,
                      right: 1,
                      child: Container(
                        height: 50,
                        width: 150,
                        padding: EdgeInsets.only(left: 20, right: 20),
                        margin: EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Image.asset('assets/search.png'),
                            border: InputBorder.none,
                            hintText: 'Search',
                          ),
                        ),
                      )),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/home.png'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/global.png'),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/calen.png'),
            label: 'calender',
          ),
          BottomNavigationBarItem(
            icon: MaterialButton(
              child: Image.asset('assets/message.png'),
              onPressed: () {},
            ),
            label: 'message',
          ),
        ],
        onTap: (value) {},
        currentIndex: 3,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
