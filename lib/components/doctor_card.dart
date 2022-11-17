import 'package:emedical/Teleconsultation/discussion.dart';
import 'package:emedical/components/custom_button.dart';
import 'package:emedical/helpers/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class DoctorCard extends StatefulWidget {
  final String fullName;
  final String specialite;
  final String hopital;
  const DoctorCard(
      {super.key,
      required this.fullName,
      required this.specialite,
      required this.hopital});

  @override
  State<DoctorCard> createState() => _DoctorCardState();
}

class _DoctorCardState extends State<DoctorCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                    ),
                    Gap(10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.fullName,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: montserratFamily,
                          ),
                        ),
                        Text(
                          widget.specialite,
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: montserratFamily,
                          ),
                        ),
                        Text(
                          widget.hopital,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: montserratFamily,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Gap(8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 150.0,
                      child: Align(
                        alignment: Alignment.topRight,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(Discussion.routeName);
                            },
                            child: Row(
                              children: [
                                Text(
                                  "Discutez",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                  ),
                                ),
                                Icon(FontAwesomeIcons.arrowRight),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 56, 125, 245),
                                elevation: 15,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)))),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
