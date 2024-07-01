import 'package:flutter/material.dart';
import 'components/buttons/orange_lg.dart';
import 'components/buttons/ghost_xl.dart';
import 'components/buttons/ghost_md.dart';
import 'components/buttons/secondary_lg.dart';
import 'styles/constants.dart';

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
        GestureDetector(
            child: const TextMarkXL(),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/',
              );
            }),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ButtonGhostXL(
                label: "Contact us",
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/contact',
                  );
                }),
            const SizedBox(width: 48),
            ButtonOrangeLG(
                label: "Download now",
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/download',
                  );
                }),
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
          child: Container(
              constraints: const BoxConstraints(maxWidth: 1750),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    desktopHeader(context),
                    //body
                    const Expanded(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                          Text("contact us.", style: AppTextStyles.heading2),
                          SizedBox(height: 8),
                          Text("email us at hello@orange.me",
                              style: AppTextStyles.textLG),
                        ]))
                  ]))));
}

Widget privacyPolicyDesktop(BuildContext context) {
  return Scaffold(
    body: Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 24),
        constraints: const BoxConstraints(maxWidth: 1750),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            desktopHeader(context),
            //body
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("Our Privacy Policy.",
                        style: AppTextStyles.heading2),
                    const SizedBox(height: 48),
                    Container(
                      alignment: Alignment.center,
                      constraints: const BoxConstraints(maxWidth: 300),
                      child: const Column(
                        children: [
                          Text(
                              "The orange me app does not collect or share any information with anyone.",
                              style: AppTextStyles.textLG),
                          SizedBox(height: 24),
                          Text(
                              "Orange me LLC does not operate any services or servers to support the orange me app.",
                              style: AppTextStyles.textLG),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget downloadDesktop(BuildContext context) {
  return Scaffold(
    body: Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Container(
        constraints: const BoxConstraints(maxWidth: 1750),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            desktopHeader(context),
            //body
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("coming soon.", style: AppTextStyles.heading2),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget blogDesktop(BuildContext context) {
  return Scaffold(
    body: Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Container(
        constraints: const BoxConstraints(maxWidth: 1750),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            desktopHeader(context),
            //body
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("coming soon.", style: AppTextStyles.heading1),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget landingDesktop(BuildContext context) {
  return Scaffold(
    body: Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Container(
        constraints: const BoxConstraints(maxWidth: 1550),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            desktopHeader(context),
            //body
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 96, vertical: 48),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          //Orange Me
                          SizedBox(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Container(
                                    constraints: const BoxConstraints(
                                        minWidth: 650, maxWidth: 700),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "orange me",
                                          style: AppTextStyles.title.copyWith(
                                            color: AppColors.bitcoin,
                                          ),
                                        ),
                                        const SizedBox(height: 24),
                                        const Flexible(
                                            child: Text(
                                                "friends and money no one can take away",
                                                style: AppTextStyles.subtitle)),
                                        const SizedBox(height: 24),
                                        SizedBox(
                                          width: 400,
                                          child: ButtonSecondaryLG(
                                              label: "Download now",
                                              onTap: () {
                                                Navigator.pushNamed(
                                                  context,
                                                  '/download',
                                                );
                                              }),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Container(
                                    constraints: const BoxConstraints(
                                        minWidth: 300, maxWidth: 550),
                                    child: Image.asset(Mockups.wallet),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 196),
                          //Messages
                          SizedBox(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Container(
                                    constraints: const BoxConstraints(
                                        minWidth: 300, maxWidth: 550),
                                    child: Image.asset(Mockups.message),
                                  ),
                                ),
                                Flexible(
                                  child: Container(
                                    constraints: const BoxConstraints(
                                        minWidth: 650, maxWidth: 700),
                                    child: const Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text("messages.",
                                            style: AppTextStyles.title),
                                        SizedBox(height: 24),
                                        Flexible(
                                            child: Text(
                                          "talk to your friends without the snooping",
                                          style: AppTextStyles.subtitle,
                                          textAlign: TextAlign.right,
                                        )),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 196),
                          //Social
                          SizedBox(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Container(
                                    constraints: const BoxConstraints(
                                        minWidth: 650, maxWidth: 700),
                                    child: const Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("social.",
                                            style: AppTextStyles.title),
                                        SizedBox(height: 24),
                                        Flexible(
                                            child: Text(
                                                "share your ideas and learn with the world",
                                                style: AppTextStyles.subtitle)),
                                      ],
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Container(
                                    constraints: const BoxConstraints(
                                        minWidth: 300, maxWidth: 550),
                                    child: Image.asset(Mockups.social),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 196),
                          //Bitcoin
                          SizedBox(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Container(
                                    constraints: const BoxConstraints(
                                        minWidth: 300, maxWidth: 550),
                                    child: Image.asset(Mockups.send),
                                  ),
                                ),
                                Flexible(
                                  child: Container(
                                    constraints: const BoxConstraints(
                                        minWidth: 650, maxWidth: 700),
                                    child: const Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text("bitcoin.",
                                            textAlign: TextAlign.end,
                                            style: AppTextStyles.title),
                                        SizedBox(height: 24),
                                        Flexible(
                                            child: Text(
                                                "money that is easy to own and fun to share",
                                                textAlign: TextAlign.end,
                                                style: AppTextStyles.subtitle)),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 128),
                    //footer
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ButtonGhostXL(
                            label: "Contact us",
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                '/contact',
                              );
                            },
                          ),
                          const SizedBox(width: 46),
                          ButtonOrangeLG(
                            label: "Download now",
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                '/download',
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: ButtonGhostMD(
                        label: "Privacy Policy",
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            '/privacy-policy',
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 48),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
