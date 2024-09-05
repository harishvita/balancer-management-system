import 'package:balancer_management_system/app/core/Appconfigurations/Appcolors.dart';
import 'package:balancer_management_system/app/core/Appconfigurations/Appsizes.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/wallet_controller.dart';

class WalletView extends GetView<WalletController> {
  final list = [
    {
      'title': 'Premnath',
      'subtitle': '29 Jul 2024,10:00PM ',
      'trailing1': '+100',
      'trailing2': '+91 72XXXXXX82',
      'trailing3': 'Reference ID:3012371',
      'color': Appcolors.indigo
    },
    {
      'title': 'withdrawel',
      'subtitle': '29 Jul 2024,10:00PM ',
      'trailing1': '-100',
      'trailing2': 'UPI:Premanath123@ybl',
      'trailing3': 'Transction ID:TXN67890',
      'color': Colors.black
    },
    {
      'title': 'Varma',
      'subtitle': '29 Jul 2024,10:00PM ',
      'trailing1': '+100',
      'trailing2': '+91 72XXXXXX82',
      'trailing3': 'Reference ID:3012371',
      'color': Appcolors.indigo
    },
    {
      'title': 'Subbrao',
      'subtitle': '29 Jul 2024,10:00PM ',
      'trailing1': '+100',
      'trailing2': '+91 72XXXXXX82',
      'trailing3': 'Reference ID:3012371',
      'color': Appcolors.indigo
    },
    {
      'title': 'withdrawel',
      'subtitle': '29 Jul 2024,10:00PM ',
      'trailing1': '-100',
      'trailing2': '+91 72XXXXXX82',
      'trailing3': 'Reference ID:3012371',
      'color': Appcolors.black
    },
  ];
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: Appsizes.x2_50,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.only(left: Appsizes.x1_25),
          child: Icon(
            Icons.chevron_left,size: 30,
            color: Appcolors.black,
          ),
        ),
        title: Text(
          'Wallet',
          style: textTheme.titleSmall!
              .copyWith(color: Appcolors.black, fontSize: Appsizes.x2_50),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Appcolors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              decoration: const BoxDecoration(),
              child: Image.asset("assets/Frame 1000003263 1.png"),
            ),
          ),
          const SizedBox(
            height: Appsizes.x1_87,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              "Current Acitivity",
              style: textTheme.titleSmall!.copyWith(
                color: Appcolors.black,
                fontSize: Appsizes.x2_50,
              ),
            ),
          ),
          const SizedBox(
            height: Appsizes.x1_87,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: SizedBox(
                  height: Appsizes.x5_00,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: "Search item",
                          border: OutlineInputBorder()),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: Appsizes.x5_00),
                child: Container(
                  height: MediaQuery.of(context).size.height / 22,
                  decoration:
                      BoxDecoration(border: Border.all(color: Appcolors.grey)),
                  child: Image.asset(
                    "assets/Filter.png",
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                final transction = list[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Appsizes.x1_87),
                        color: Appcolors.lightblue),
                    child: ListTile(
                      title: Text(
                        transction['title'].toString(),
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: transction['color'] as Color),
                      ),
                      subtitle: Text(transction['subtitle'].toString(),
                          style: const TextStyle(
                              fontSize: Appsizes.x1_25, color: Appcolors.grey)),
                      trailing: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(transction['trailing1'].toString(),
                              style: TextStyle(
                                fontSize: 18,
                                color: transction['trailing1']
                                        .toString()
                                        .startsWith('-')
                                    ? Appcolors.red
                                    : Appcolors.green,
                              )),
                          Text(transction['trailing2'].toString(),
                              style: const TextStyle(
                                  fontSize: 10, color: Appcolors.grey)),
                          Text(transction['trailing3'].toString(),
                              style: const TextStyle(
                                  fontSize: Appsizes.x1_25,
                                  color: Appcolors.grey)),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
