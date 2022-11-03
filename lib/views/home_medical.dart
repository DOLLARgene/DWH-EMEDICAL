import 'package:emedical/helpers/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:carousel_slider/carousel_slider.dart';

import "package:emedical/menu/privacy_policy.dart";
import "package:emedical/menu/send_feedback.dart";
import "package:emedical/menu/settings.dart";
import 'package:emedical/menu/contacts.dart';
import 'package:emedical/menu/dashboard.dart';
import 'package:emedical/views/my_drawer_header.dart';
import 'package:emedical/menu/notes.dart';
import 'package:emedical/menu/notifications.dart';

class HomeMedical extends StatefulWidget {
  static String routeName = "/home-medical";
  const HomeMedical({Key? key}) : super(key: key);

  @override
  State<HomeMedical> createState() => _HomeMedicalState();
}

class _HomeMedicalState extends State<HomeMedical> {
  var currentPage = DrawerSections.dashboard;
  Icon customIcon = Icon(Icons.search);
  Widget customSeachBar = Text("appbar");
  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.dashboard) {
      container = DashboardPage();
    } else if (currentPage == DrawerSections.contacts) {
      container = ContactsPage();
    } else if (currentPage == DrawerSections.notes) {
      container = NotesPage();
    } else if (currentPage == DrawerSections.settings) {
      container = SettingsPage();
    } else if (currentPage == DrawerSections.notifications) {
      container = NotificationsPage();
    } else if (currentPage == DrawerSections.privacy_policy) {
      container = PrivacyPolicyPage();
    } else if (currentPage == DrawerSections.send_feedback) {
      container = SendFeedbackPage();
    }
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[700],
          title: customSeachBar,
          actions: [
            IconButton(
              icon: customIcon,
              onPressed: () {
                setState(() {
                  if (this.customIcon.icon == Icons.search) {
                    this.customIcon = Icon(Icons.cancel);
                    this.customSeachBar = TextField(
                      textInputAction: TextInputAction.go,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search Term",
                      ),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.0,
                      ),
                    );
                  } else {
                    this.customIcon = Icon(Icons.search);
                    this.customSeachBar = Text("AppBar");
                  }
                });
              },
            ),
          ],
          /*leading: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ,
              /* Icon(
                FontAwesomeIcons.bars,
                color: Colors.blue,
                //fontweight: FontWeight.bold,
              ),*/
            ],
          ),*/
          /*actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            Gap(10),
          ],
          toolbarHeight: 70.0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,*/
        ),
        /*body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Gap(20),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 200.0,
                    autoPlay: true,
                  ),
                  items: contentSlidersItems.map((slider) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Stack(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    slider.urlImage,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 20,
                              bottom: 10,
                              child: Text(
                                slider.textContent,
                                style: const TextStyle(
                                  fontFamily: montserratFamily,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24.0,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  }).toList(),
                ),
                Gap(20),
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: gridCardItem.length,
                  primary: false,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 4.0,
                  ),
                  itemBuilder: (context, index) => Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 130,
                          child: SvgPicture.asset(
                            gridCardItem[index].urlImage,
                          ),
                        ),
                        Text(
                          gridCardItem[index].textContent,
                          style: TextStyle(
                            fontFamily: montserratFamily,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w900,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Gap(20.0),
              ],
            ),
          ),
        ),*/
        body: container,
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  MyHeaderDrawer(),
                  MyDrawerList(),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.blue,
          unselectedLabelStyle:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.house),
              label: 'Accueil',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.bell),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.user),
              label: 'Profil',
            ),
          ],
        ),
      ),
    );
  }

  Widget Services() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Gap(20),
            CarouselSlider(
              options: CarouselOptions(
                height: 250.0,
                autoPlay: true,
              ),
              items: contentSlidersItems.map((slider) {
                return Builder(
                  builder: (BuildContext context) {
                    return Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                slider.urlImage,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20,
                          bottom: 10,
                          child: Text(
                            slider.textContent,
                            style: const TextStyle(
                              fontFamily: montserratFamily,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              }).toList(),
            ),
            Gap(20),
            GridView.builder(
              shrinkWrap: true,
              itemCount: gridCardItem.length,
              primary: false,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
              ),
              itemBuilder: (context, index) => Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 130,
                      child: SvgPicture.asset(
                        gridCardItem[index].urlImage,
                      ),
                    ),
                    Text(
                      gridCardItem[index].textContent,
                      style: TextStyle(
                        fontFamily: montserratFamily,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Gap(20.0),
          ],
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // shows the list of menu drawer
        children: [
          menuItem(1, "Dashboard", Icons.dashboard_outlined,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(2, "Contacts", Icons.people_alt_outlined,
              currentPage == DrawerSections.contacts ? true : false),
          menuItem(3, "Notes", Icons.notes,
              currentPage == DrawerSections.notes ? true : false),
          Divider(),
          menuItem(4, "Settings", Icons.settings_outlined,
              currentPage == DrawerSections.settings ? true : false),
          menuItem(5, "Notifications", Icons.notifications_outlined,
              currentPage == DrawerSections.notifications ? true : false),
          Divider(),
          menuItem(6, "Privacy policy", Icons.privacy_tip_outlined,
              currentPage == DrawerSections.privacy_policy ? true : false),
          menuItem(7, "Send feedback", Icons.feedback_outlined,
              currentPage == DrawerSections.send_feedback ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dashboard;
            } else if (id == 2) {
              currentPage = DrawerSections.contacts;
            } else if (id == 3) {
              currentPage = DrawerSections.notes;
            } else if (id == 4) {
              currentPage = DrawerSections.settings;
            } else if (id == 5) {
              currentPage = DrawerSections.notifications;
            } else if (id == 6) {
              currentPage = DrawerSections.privacy_policy;
            } else if (id == 7) {
              currentPage = DrawerSections.send_feedback;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  dashboard,
  contacts,
  notes,
  settings,
  notifications,
  privacy_policy,
  send_feedback,
}
