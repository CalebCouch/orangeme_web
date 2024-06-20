import 'package:flutter/material.dart';
import 'components/buttons/ghost_xl.dart';
import 'components/buttons/secondary_lg.dart';
import 'components/buttons/ghost_md.dart';
import 'components/buttons/secondary_md.dart';
import 'components/buttons/orange_md.dart';
import 'styles/constants.dart';
import 'styles/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'main.dart';

Widget mobileHeader(BuildContext context) {
  //header
   return Container(
    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    width: double.infinity,
    child: Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector (
          child: Container (
            height: 32,
            width: 32,
            child: SvgPicture.asset(
              AppIcons.brandmarkMD,
            ),
          ),
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
            ButtonGhostMD(
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
            const SizedBox(width: 6),
            ButtonOrangeMD(
              label: "Download",
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

Widget contactMobile(BuildContext context) {
  return Scaffold(
    body: Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Container (
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 24),
        constraints: BoxConstraints(maxWidth: 700),
        child: Column (
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            mobileHeader(context),
            //body
            Expanded (
              child: Container (
                alignment: Alignment.center,
                child: Column (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "contact us.",
                      style: AppTextStyles.heading2
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "email us at hello@orange.me",
                      style: AppTextStyles.textLG
                    ),
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

Widget downloadMobile(BuildContext context) {
  return Scaffold(
    body: Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Container (
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 24),
        constraints: BoxConstraints(maxWidth: 700),
        child: Column (
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            mobileHeader(context),
            //body
            Expanded (
              child: Container (
                alignment: Alignment.center,
                child: Text(
                  "coming soon.",
                  style: AppTextStyles.heading2
                ),
              )
            )
          ]
        )
      )
    )
  );
}

Widget landingMobile(BuildContext context) {
  return Scaffold(
    body: Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Container (
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 24),
        constraints: BoxConstraints(maxWidth: 700),
        child: Column (
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            mobileHeader(context),
            //body
            Expanded (
              child: SingleChildScrollView (
                child: Column (
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container (
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "orange me",
                            style: AppTextStyles.heading2.copyWith(
                              color: AppColors.bitcoin,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            "friends and money no\none can take away",
                            style: AppTextStyles.textLG
                          ),
                          const SizedBox(height: 12),
                          SizedBox(
                            width: 288,
                            child: ButtonSecondaryMD(
                              label: "Download now",
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    Container (
                      alignment: Alignment.center,
                      width: double.infinity,
                      child: Container(
                        constraints: BoxConstraints(maxWidth: 450),
                        child: Image.asset('assets/wallet-mockup.png'),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Container (
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "messages.",
                            style: AppTextStyles.heading2
                          ),
                          const SizedBox(height: 12),
                          Text(
                            "talk to your friends\nwithout the snooping",
                            style: AppTextStyles.textLG
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    Container (
                      alignment: Alignment.center,
                      width: double.infinity,
                      child: Container(
                        constraints: BoxConstraints(maxWidth: 450),
                        child: Image.asset('assets/messages-mockup.png'),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Container (
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "social.",
                            style: AppTextStyles.heading2
                          ),
                          const SizedBox(height: 12),
                          Text(
                            "share your ideas and\nlearn with the world",
                            style: AppTextStyles.textLG
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    Container (
                      alignment: Alignment.center,
                      width: double.infinity,
                      child: Container(
                        constraints: BoxConstraints(maxWidth: 450),
                        child: Image.asset('assets/wallet-mockup.png'),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Container (
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "bitcoin.",
                            style: AppTextStyles.heading2
                          ),
                          const SizedBox(height: 12),
                          Text(
                            "bitcoin that's easy to own\nand fun to share",
                            style: AppTextStyles.textLG
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    Container (
                      alignment: Alignment.center,
                      width: double.infinity,
                      child: Container(
                        constraints: BoxConstraints(maxWidth: 450),
                        child: Image.asset('assets/bitcoin-mockup.png'),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Container (
                      width: double.infinity,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ButtonGhostMD(
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
                          const SizedBox(width: 6),
                          ButtonOrangeMD(
                            label: "Download",
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
                    ),
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
