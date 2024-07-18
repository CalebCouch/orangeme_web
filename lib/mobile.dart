import 'package:flutter/material.dart';
import 'components/buttons/ghost_md.dart';
import 'components/buttons/orange_md.dart';
import 'styles/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'components/infocard.dart';

Widget mobileHeader(BuildContext context) {
  //header
  double screenWidth = MediaQuery.of(context).size.width;
  return Container(
    constraints: const BoxConstraints(maxWidth: 600),
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
              IconButton(
                  icon: screenWidth > 400
                      ? const TextMarkXL()
                      : SizedBox(
                          height: 36,
                          width: 36,
                          child: SvgPicture.asset(
                            AppIcons.brandmarkLG,
                          )),
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
          },
        ),
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
        IconButton(
            icon: const TextMarkXL(),
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/',
              );
            }),
        const SizedBox(height: 24),
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
          },
        ),
      ],
    ),
  );
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
                    Text("contact us.", style: AppTextStyles.heading3),
                    SizedBox(height: 8),
                    Text("email us at hello@orange.me",
                        style: AppTextStyles.textMD),
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
                      alignment: Alignment.center,
                      constraints: const BoxConstraints(maxWidth: 300),
                      child: const Column(
                        children: [
                          Text(
                              "The orange me app does not collect or share any information with anyone.",
                              style: AppTextStyles.textMD),
                          SizedBox(height: 24),
                          Text(
                              "Orange me LLC does not operate any services or servers to support the orange me app.",
                              style: AppTextStyles.textMD),
                        ],
                      ),
                    ),
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
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("download now.", style: AppTextStyles.heading3),
                    SizedBox(height: 8),
                    Text(
                      "for early access send us an email at hello@orange.me",
                      style: AppTextStyles.textMD,
                      textAlign: TextAlign.center,
                    ),
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

Widget landingMobile(BuildContext context) {
  return Scaffold(
    drawer: Drawer(child: menu(context)),
    body: Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
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
                width: MediaQuery.of(context).size.width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Title
                    const SizedBox(height: 24),
                    Container(
                      constraints: const BoxConstraints(maxWidth: 345),
                      child: const Text(
                          "friends and money no one can take away",
                          textAlign: TextAlign.center,
                          style: AppTextStyles.heading1),
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      child: Text("Your favorite place to\nconnect and explore",
                          textAlign: TextAlign.center,
                          style: AppTextStyles.textLG.copyWith(
                            color: AppColors.textSecondary,
                          )),
                    ),
                    const SizedBox(height: 48),
                    Container(
                      constraints: const BoxConstraints(maxWidth: 280),
                      child: Image.asset(Mockups.home),
                    ),
                    const SizedBox(height: 48),
                    const InfoCard(
                        icon: AppIcons.chat,
                        title: "messages.",
                        subtext: "talk to your friends without the snooping"),
                    const SizedBox(height: 24),
                    const InfoCard(
                        icon: AppIcons.plane,
                        title: "social.",
                        subtext: "share your ideas and learn with the world"),
                    const SizedBox(height: 24),
                    const InfoCard(
                        icon: AppIcons.bitcoinFilled,
                        title: "bitcoin.",
                        subtext: "money that's easy to own and fun to share"),
                    const SizedBox(height: 24),
                    Container(
                        constraints: const BoxConstraints(maxWidth: 345),
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
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
