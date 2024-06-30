import 'package:flutter/material.dart';
import 'components/buttons/ghost_md.dart';
import 'components/buttons/orange_md.dart';
import 'styles/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'components/infocard.dart';

Widget mobileHeader(BuildContext context) {
  //header
  return Container(
    constraints: const BoxConstraints(maxWidth: 450),
    padding: const EdgeInsets.symmetric(horizontal: 24),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Builder(
          builder: (context) => Row(
            children: [
              IconButton(
                  icon: SizedBox(
                    height: 48,
                    width: 48,
                    child: SvgPicture.asset(
                      AppIcons.menu,
                    ),
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  }),
              const SizedBox(width: 12),
              IconButton(
                  icon: const TextMarkXL(),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/',
                    );
                  }),
            ],
          ),
        ),
        const Spacer(),
        ButtonOrangeMD(
            label: "Download Now",
            onTap: () {
              Navigator.pushNamed(
                context,
                '/download',
              );
            }),
      ],
    ),
  );
}

Widget menu(BuildContext context) {
  return Container(
      color: AppColors.black,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 48),
        children: [
          ButtonOrangeMD(
              label: "Download Now",
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/download',
                );
              }),
          const SizedBox(height: 24),
          ButtonGhostMD(
              label: "Contact Us",
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/contact',
                );
              }),
          const SizedBox(height: 24),
          ButtonGhostMD(
              label: "Privacy Policy",
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/privacy-policy',
                );
              }),
        ],
      ));
}

Widget contactMobile(BuildContext context) {
  return Scaffold(
      drawer: Drawer(child: menu(context)),
      body: Container(
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          child: Container(
              constraints: const BoxConstraints(maxWidth: 700),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    mobileHeader(context),
                    //body
                    Expanded(
                        child: Container(
                            alignment: Alignment.center,
                            child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("contact us.",
                                      style: AppTextStyles.heading2),
                                  SizedBox(height: 8),
                                  Text("email us at hello@orange.me",
                                      style: AppTextStyles.textLG),
                                ])))
                  ]))));
}

Widget privacyPolicyMobile(BuildContext context) {
  return Scaffold(
      drawer: Drawer(child: menu(context)),
      body: Container(
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          child: Container(
              constraints: const BoxConstraints(maxWidth: 700),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    mobileHeader(context),
                    //body
                    Expanded(
                        child: Container(
                            alignment: Alignment.center,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text("Our Privacy Policy.",
                                      style: AppTextStyles.heading3),
                                  const SizedBox(height: 24),
                                  Container(
                                      constraints:
                                          const BoxConstraints(maxWidth: 400),
                                      child: const Column(children: [
                                        Text(
                                            "The orange me app does not collect or share any information with anyone.",
                                            style: AppTextStyles.textMD),
                                        SizedBox(height: 24),
                                        Text(
                                            "Orange me LLC does not operate any services or servers to support the orange me app.",
                                            style: AppTextStyles.textMD),
                                      ]))
                                ])))
                  ]))));
}

Widget downloadMobile(BuildContext context) {
  return Scaffold(
      drawer: Drawer(child: menu(context)),
      body: Container(
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          child: Container(
              constraints: const BoxConstraints(maxWidth: 700),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    mobileHeader(context),
                    //body
                    Expanded(
                        child: Container(
                      alignment: Alignment.center,
                      child: const Text("coming soon.",
                          style: AppTextStyles.heading3),
                    ))
                  ]))));
}

Widget landingMobile(BuildContext context) {
  return Scaffold(
      drawer: Drawer(child: menu(context)),
      body: Container(
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          child: Container(
              constraints: const BoxConstraints(maxWidth: 700),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    mobileHeader(context),
                    //body
                    Expanded(
                        child: SingleChildScrollView(
                            child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 24),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      // Title
                                      const SizedBox(height: 24),
                                      Container(
                                        constraints:
                                            const BoxConstraints(maxWidth: 345),
                                        child: const Text(
                                            "friends and money no one can take away",
                                            textAlign: TextAlign.center,
                                            style: AppTextStyles.heading1),
                                      ),
                                      const SizedBox(height: 24),
                                      SizedBox(
                                        child: Text(
                                            "Your favorite place to\nconnect and explore",
                                            textAlign: TextAlign.center,
                                            style:
                                                AppTextStyles.textLG.copyWith(
                                              color: AppColors.textSecondary,
                                            )),
                                      ),
                                      const SizedBox(height: 48),
                                      Container(
                                        constraints:
                                            const BoxConstraints(maxWidth: 280),
                                        child: Image.asset(Mockups.home),
                                      ),
                                      const SizedBox(height: 48),
                                      const InfoCard(
                                          icon: AppIcons.chat,
                                          title: "Messages.",
                                          subtext:
                                              "talk to your friends without the snooping"),
                                      const SizedBox(height: 24),
                                      const InfoCard(
                                          icon: AppIcons.plane,
                                          title: "Social.",
                                          subtext:
                                              "share your ideas and learn with the world"),
                                      const SizedBox(height: 24),
                                      const InfoCard(
                                          icon: AppIcons.bitcoinFilled,
                                          title: "Bitcoin.",
                                          subtext:
                                              "money that's easy to own and fun to share"),
                                      const SizedBox(height: 24),
                                      Container(
                                          constraints: const BoxConstraints(
                                              maxWidth: 345),
                                          alignment: Alignment.center,
                                          child: Wrap(
                                            alignment: WrapAlignment.center,
                                            spacing: 12,
                                            runSpacing: 12,
                                            direction: Axis.horizontal,
                                            children: [
                                              ButtonOrangeMD(
                                                  label: "Download Now",
                                                  onTap: () {
                                                    Navigator.pushNamed(
                                                      context,
                                                      '/download',
                                                    );
                                                  }),
                                              ButtonGhostMD(
                                                  label: "Contact Us",
                                                  onTap: () {
                                                    Navigator.pushNamed(
                                                      context,
                                                      '/contact',
                                                    );
                                                  }),
                                              ButtonGhostMD(
                                                  label: "Privacy Policy",
                                                  onTap: () {
                                                    Navigator.pushNamed(
                                                      context,
                                                      '/privacy-policy',
                                                    );
                                                  }),
                                            ],
                                          ))
                                    ]))))
                  ]))));
}
