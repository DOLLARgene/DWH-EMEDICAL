import 'package:emedical/components/custom_textformfield.dart';
import 'package:emedical/components/message_card.dart';
import 'package:emedical/models/discuss.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class Discussion extends StatefulWidget {
  static String routeName = "discussion";
  const Discussion({super.key});

  @override
  State<Discussion> createState() => _DiscussionState();
}

class _DiscussionState extends State<Discussion> {
  final TextEditingController messageToSend = TextEditingController();
  List<Discuss> messages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Icon(
            FontAwesomeIcons.chevronLeft,
            color: Colors.black,
          ),
          actions: []),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            if (messages.length > 0)
              Align(
                alignment: Alignment.bottomRight,
                child: Column(
                    children: List.generate(
                        messages.length,
                        (index) =>
                            MessageCard(content: messages[index].message))),
              ),
            Row(
              children: [
                Expanded(
                  child: CustomTextFormField(
                    htinText: "Envoyez un message",
                    controller: messageToSend,
                  ),
                ),
                Gap(10),
                GestureDetector(
                  onTap: () {
                    String messageContent = messageToSend.text;
                    if (messageContent.isNotEmpty) {
                      setState(() {
                        messages.add(Discuss(
                            id: 1,
                            idRecever: "laurande",
                            idSender: "maman",
                            message: messageContent));
                      });
                    }
                  },
                  child: CircleAvatar(
                    radius: 20.0,
                    child: Icon(
                      FontAwesomeIcons.paperPlane,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            Gap(12),
          ],
        ),
      ),
    );
  }
}
