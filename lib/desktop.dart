import 'package:flutter/material.dart';
import 'components/buttons/orange_lg.dart';
import 'components/buttons/ghost_xl.dart';
import 'components/buttons/secondary_lg.dart';
import 'styles/constants.dart';
import 'styles/theme.dart';
import 'main.dart';



Widget desktopHeader(BuildContext context) {
  return Container(
    height: 144,
    padding: const EdgeInsets.symmetric(horizontal: 96, vertical: 48),
    width: double.infinity,
    child: Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector (
          child: TextMarkXL(),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => Landing(),
                transitionDuration: Duration.zero,
              ),
            );
          }
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ButtonGhostXL(
              label: "Contact us",
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => Contact(),
                    transitionDuration: Duration.zero,
                  ),
                );
              }
            ),
            const SizedBox(width: 48),
            ButtonOrangeLG(
              label: "Download now",
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => Download(),
                    transitionDuration: Duration.zero,
                  ),
                );
              }
            ),
          ],
        ),
      ],
    ),
  );
}

Widget contactDesktop(BuildContext context) {
  return Scaffold(
    body: Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Container (
        constraints: BoxConstraints(maxWidth: 1750),
        child: Column (
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            desktopHeader(context),
            //body
            Expanded (
              child: Column (
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "contact us.",
                    style: AppTextStyles.title
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "email us at hello@orange.me",
                    style: AppTextStyles.subtitle
                  ),
                ]
              )
            )
          ]   
        )
      )
    )
  );
}

Widget downloadDesktop(BuildContext context) {
  return Scaffold(
    body: Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Container (
        constraints: BoxConstraints(maxWidth: 1750),
        child: Column (
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            desktopHeader(context),
            //body
            Expanded (
              child: Column (
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "coming soon.",
                    style: AppTextStyles.title
                  ),
                ]
              )
            )
          ]   
        )
      )
    )
  );
}

Widget landingDesktop(BuildContext context) {
  return Scaffold(
    body: Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Container (
        constraints: BoxConstraints(maxWidth: 1750),
        child: Column (
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            desktopHeader(context),
            //body
            Expanded (
              child: SingleChildScrollView (
                child: Column (
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 96, vertical: 48),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          //Orange Me
                          Container(
                            width: double.infinity,
                            child: Row (
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Container (
                                    constraints: BoxConstraints(minWidth: 650, maxWidth: 700),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "orange me",
                                          style: AppTextStyles.title.copyWith(
                                            color: AppColors.bitcoin,
                                          ),
                                        ),
                                        const SizedBox(height: 24),
                                        Flexible (
                                          child: Text(
                                            "friends and money no one can take away",
                                            style: AppTextStyles.subtitle
                                          )
                                        ),
                                        const SizedBox(height: 24),
                                        SizedBox(
                                          width: 400,
                                          child: ButtonSecondaryLG(
                                            label: "Download now",
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Flexible (
                                  child: Container(
                                    constraints: BoxConstraints(minWidth: 300, maxWidth: 550),
                                    child: Image.asset('assets/wallet-mockup.png'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 196),
                          //Messages
                          Container(
                            width: double.infinity,
                            child: Row (
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible (
                                  child: Container(
                                    constraints: BoxConstraints(minWidth: 300, maxWidth: 550),
                                    child: Image.asset('assets/messages-mockup.png'),
                                  ),
                                ),
                                Flexible(
                                  child: Container (
                                    constraints: BoxConstraints(minWidth: 650, maxWidth: 700),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "messages.",
                                          style: AppTextStyles.title
                                        ),
                                        const SizedBox(height: 24),
                                        Flexible (
                                          child: Text(
                                            "talk to your friends without the snooping",
                                            style: AppTextStyles.subtitle,
                                            textAlign: TextAlign.right,
                                          )
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 196),
                          //Social
                          Container(
                            width: double.infinity,
                            child: Row (
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Container (
                                    constraints: BoxConstraints(minWidth: 650, maxWidth: 700),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "social.",
                                          style: AppTextStyles.title
                                        ),
                                        const SizedBox(height: 24),
                                        Flexible (
                                          child: Text(
                                            "share your ideas and learn with the world",
                                            style: AppTextStyles.subtitle
                                          )
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Flexible (
                                  child: Container(
                                    constraints: BoxConstraints(minWidth: 300, maxWidth: 550),
                                    child: Image.asset('assets/wallet-mockup.png'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 196),
                          //Bitcoin
                          Container(
                            child: Column (
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "bitcoin.",
                                        style: AppTextStyles.title
                                      ),
                                      const SizedBox(height: 24),
                                      Text(
                                        "money that is easy to own\nand fun to share",
                                        textAlign: TextAlign.right,
                                        style: AppTextStyles.subtitle
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 28),
                                Container(
                                  width: 850,
                                  child: Image.asset('assets/send-mockup.png'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 128),
                    //footer
                    Container(
                      height: 144,
                      padding: const EdgeInsets.symmetric(horizontal: 96, vertical: 48),
                      width: double.infinity,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ButtonGhostXL(
                            label: "Contact us",
                          ),
                          const SizedBox(width: 46),
                          ButtonOrangeLG(
                            label: "Download now",

                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 128),
                  ]
                )
              )
            )
          ]
        )
      )
    )
  );
}
