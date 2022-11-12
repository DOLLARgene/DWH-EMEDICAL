import 'package:emedical/Diagnostic/consultation.dart';
import 'package:emedical/helpers/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:carousel_slider/carousel_slider.dart';

import "package:emedical/menu/privacy_policy.dart";
import 'package:emedical/menu/parametres.dart';
import 'package:emedical/views/accueil.dart';
import 'package:emedical/menu/abonnement.dart';
import 'package:emedical/menu/profil.dart';
import 'package:emedical/views/my_drawer_header.dart';
import 'package:emedical/menu/helps.dart';
import 'package:emedical/menu/notifications.dart';

class HomeMedical extends StatefulWidget {
  static String routeName = "/home-medical";
  const HomeMedical({Key? key}) : super(key: key);

  @override
  State<HomeMedical> createState() => _HomeMedicalState();
}

class _HomeMedicalState extends State<HomeMedical> {
  var currentPage = DrawerSections.profil;
  Icon customIcon = Icon(Icons.search);
  Widget customSeachBar = Text("appbar");
  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.profil) {
      container = EditProfilPage();
    } else if (currentPage == DrawerSections.abonnement) {
      container = AccueilPage();
    } else if (currentPage == DrawerSections.helps) {
      container = HelpPage();
    } else if (currentPage == DrawerSections.parametres) {
      container = SettingsPage();
    } /* else if (currentPage == DrawerSections.notifications) {
      container = NotificationsPage();
    } */
    else if (currentPage == DrawerSections.privacy_policy) {
      container = PrivacyPolicyPage();
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
        body: Padding(
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
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(gridCardItem[index].path);
                    },
                    child: Card(
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
                ),
                Gap(20.0),
              ],
            ),
          ),
        ),
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
          MenuItemCompenent(
            id: 1,
            title: "Profile",
            icon: Icons.supervised_user_circle_sharp,
            selected: currentPage == DrawerSections.profil ? true : false,
            path: "/profil",
          ),
          MenuItemCompenent(
            id: 2,
            title: "Abonnements",
            icon: Icons.subscript_outlined,
            selected: currentPage == DrawerSections.abonnement ? true : false,
            path: "/abonnement",
          ),
          MenuItemCompenent(
            id: 3,
            title: "Helps",
            icon: Icons.help_sharp,
            selected: currentPage == DrawerSections.helps ? true : false,
            path: "/helps",
          ),
          Divider(),
          MenuItemCompenent(
            id: 4,
            title: "Paramètres",
            icon: Icons.settings_outlined,
            selected: currentPage == DrawerSections.parametres ? true : false,
            path: "/parametres",
          ),
          /* MenuItemCompenent(
            id: 5,
            title: "Notifications",
            icon: Icons.notifications_outlined,
            selected:
                currentPage == DrawerSections.notifications ? true : false,
            path: "/notifications",
          ),*/
          Divider(),
          MenuItemCompenent(
            id: 6,
            title: "Termes et confidentialités",
            icon: Icons.privacy_tip_outlined,
            selected:
                currentPage == DrawerSections.privacy_policy ? true : false,
            path: "/privacy_policy",
          ),
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
              currentPage = DrawerSections.profil;
            } else if (id == 2) {
              currentPage = DrawerSections.abonnement;
            } else if (id == 3) {
              currentPage = DrawerSections.helps;
            } else if (id == 4) {
              currentPage = DrawerSections.parametres;
            } /* else if (id == 5) {
              currentPage = DrawerSections.notifications;
            }*/
            else if (id == 6) {
              currentPage = DrawerSections.privacy_policy;
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

class MenuItemCompenent extends StatelessWidget {
  final int id;
  final String title;
  final IconData icon;
  final bool selected;
  final String path;
  const MenuItemCompenent(
      {super.key,
      required this.id,
      required this.title,
      required this.icon,
      required this.selected,
      required this.path});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(path);
        },
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
    );
  }
}

enum DrawerSections {
  profil,
  abonnement,
  helps,
  parametres,
  notifications,
  privacy_policy,
}
