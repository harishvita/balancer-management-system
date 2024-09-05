import 'package:balancer_management_system/app/core/Appconfigurations/Appcolors.dart';
import 'package:balancer_management_system/app/core/Appconfigurations/Appsizes.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/userprofile_controller.dart';

class UserprofileView extends GetView<UserprofileController> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Appcolors.blue,
      appBar: AppBar(
        backgroundColor: Appcolors.blue,
        leadingWidth: Appsizes.x1_87,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.only(left: Appsizes.x1_25),
          child: Icon(
            Icons.chevron_left,
            color: Appcolors.white,
          ),
        ),
        title: Text(
          'Your Profile',
          style: textTheme.titleSmall!
              .copyWith(color: Appcolors.white, fontSize: Appsizes.x2_50),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Appcolors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Appcolors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Appsizes.x3_75),
              topRight: Radius.circular(Appsizes.x3_75)),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                        top: Appsizes.x2_50, left: Appsizes.x1_87),
                    child: Stack(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/adminphoto.jpg"),
                          minRadius: 60,
                        ),
                        Positioned(
                          bottom: Appsizes.x1_25,
                          top: 80,
                          right: Appsizes.x2_50,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              'assets/mdi_prize.png',
                            ),
                            backgroundColor: Appcolors.white,
                            radius: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: Appsizes.x1_25),
                        child: Row(
                          children: [
                            Text(
                              "Kareem Abdul",
                              style: textTheme.titleSmall!.copyWith(
                                  color: Appcolors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              width: width / 6,
                            ),
                            Image.asset("assets/akar-icons_edit.png")
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 110),
                        child: Text(
                          "Vehicle Maintainer",
                          style: textTheme.titleSmall!.copyWith(
                              color: Appcolors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 150, top: 10),
                        child: SizedBox(
                          height: 25,
                          // width: 60,
                          child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: Appcolors.blue1),
                              shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                            ),
                            child: Text(
                              "My ID",
                              style: textTheme.titleSmall!.copyWith(
                                color: Appcolors.blue1,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: Appsizes.x2_50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        "233",
                        style: textTheme.titleSmall!.copyWith(
                            color: Appcolors.black,
                            fontSize: Appsizes.x2_50,
                            fontWeight: FontWeight.w900),
                      ),
                      Text(
                        "Jobs Done",
                        style: textTheme.titleSmall!
                            .copyWith(color: Appcolors.grey),
                      ),
                    ],
                  ),
                  Container(
                    height: 33,
                    color: Appcolors.grey,
                    width: 2,
                  ),
                  Column(
                    children: [
                      const Icon(
                        Icons.calendar_month_outlined,
                        color: Appcolors.black,
                        size: 30,
                      ),
                      Text("Calendar",
                          style: textTheme.titleSmall!
                              .copyWith(color: Appcolors.grey))
                    ],
                  ),
                  Container(
                    height: 33,
                    color: Appcolors.grey,
                    width: 2,
                  ),
                  Column(
                    children: [
                      Text(
                        "4.3",
                        style: textTheme.titleSmall!.copyWith(
                            color: Appcolors.black,
                            fontSize: Appsizes.x2_50,
                            fontWeight: FontWeight.w900),
                      ),
                      Text("Rating",
                          style: textTheme.titleSmall!
                              .copyWith(color: Appcolors.grey))
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Card.outlined(
                  child: ListTile(
                    title: Row(
                      children: [
                        const Icon(
                          Icons.currency_rupee,
                          size: 23,
                        ),
                        Text(
                          "300",
                          style: textTheme.titleSmall!.copyWith(
                              color: Appcolors.black,
                              fontSize: Appsizes.x2_50,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                    subtitle: Text(
                      "Total Earnings this week",
                      style: textTheme.titleSmall!.copyWith(
                        color: Appcolors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: Appsizes.x1_87),
                child: Text(
                  "My work",
                  style: textTheme.titleSmall!.copyWith(
                    color: Appcolors.black,
                    fontSize: Appsizes.x2_50,
                  ),
                ),
              ),
              ListTile(
                leading: Text("Job History",
                    style: textTheme.titleSmall!.copyWith(
                        color: Appcolors.ash, fontSize: Appsizes.x2_00)),
                trailing: const Icon(Icons.keyboard_arrow_right),
              ),
              const Divider(
                indent: 10,
                endIndent: 10,
                thickness: 1,
              ),
              ListTile(
                leading: Text("Product Request",
                    style: textTheme.titleSmall!.copyWith(
                        color: Appcolors.ash, fontSize: Appsizes.x2_00)),
                trailing: const Icon(Icons.keyboard_arrow_right),
              ),
              const Divider(
                indent: 10,
                endIndent: 10,
                thickness: 1,
              ),
              ListTile(
                leading: Text("Training",
                    style: textTheme.titleSmall!.copyWith(
                        color: Appcolors.ash, fontSize: Appsizes.x2_00)),
                trailing: const Icon(Icons.keyboard_arrow_right),
              ),
              const Divider(
                indent: 10,
                endIndent: 10,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: Appsizes.x1_87),
                child: Text(
                  "More",
                  style: textTheme.titleSmall!.copyWith(
                    color: Appcolors.black,
                    fontSize: Appsizes.x2_50,
                  ),
                ),
              ),
              ListTile(
                leading: Text("Invite to balancer partner",
                    style: textTheme.titleSmall!.copyWith(
                        color: Appcolors.ash, fontSize: Appsizes.x2_00)),
                trailing: const Icon(Icons.keyboard_arrow_right),
              ),
              const Divider(
                indent: 10,
                endIndent: 10,
                thickness: 1,
              ),
              ListTile(
                leading: Text("Help and support",
                    style: textTheme.titleSmall!.copyWith(
                        color: Appcolors.ash, fontSize: Appsizes.x2_00)),
                trailing: const Icon(Icons.keyboard_arrow_right),
              ),
              const Divider(
                indent: 10,
                endIndent: 10,
                thickness: 1,
              ),
              ListTile(
                leading: Text("chat with customercare",
                    style: textTheme.titleSmall!.copyWith(
                        color: Appcolors.ash, fontSize: Appsizes.x2_00)),
                trailing: const Icon(Icons.keyboard_arrow_right),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
