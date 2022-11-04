import 'package:carousel_slider/carousel_slider.dart';
import 'package:emedical/helpers/constant.dart';
import 'package:flutter/material.dart';
import 'package:emedical/views/home_medical.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class ContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      child: Services(),
    )
        // child: Text("Contacts Page"),

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
}
