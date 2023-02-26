import 'package:dietosurelabs/app_config.dart';
import 'package:dietosurelabs/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var homeCtrl = Get.put(HomeController());
  Widget personCard() {
    return InkWell(
      onTap: () {
        homeCtrl.userDetails();
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: appScreenUtil.size(15),
            horizontal: appScreenUtil.size(20)),
        child: Container(
          height: 350,
          padding: EdgeInsets.symmetric(vertical: appScreenUtil.size(5)),
          decoration: BoxDecoration(
            color: appColor.offWhiteColor,
            border: Border.all(width: 1, color: appColor.offWhiteColor),
            borderRadius: BorderRadius.circular(
              appScreenUtil.size(25),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: appScreenUtil.size(25),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: appScreenUtil.size(10),
                  ),
                  child: Center(
                    child: Container(
                      width: appScreenUtil.size(90),
                      height: appScreenUtil.size(90),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(imageAssets.profile),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Text(
                        "Hira Riaz",
                        style: appCss.h1.copyWith(color: appColor.primaryColor),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "UI/UX Designer",
                        style: appCss.bodyStyle7
                            .copyWith(color: appColor.textSecondaryColor),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: <Widget>[
                            Text(
                              "\$8900",
                              style: appCss.h4
                                  .copyWith(color: appColor.primaryColor),
                            ),
                            const SizedBox(height: 15),
                            Text(
                              "Income",
                              style: appCss.bodyStyle7
                                  .copyWith(color: appColor.textPrimaryColor),
                            ),
                          ],
                        ),
                        // const SizedBox(height: 10),
                        VerticalDivider(
                          color: appColor.offWhiteColor1,
                          thickness: 1,
                          endIndent: 20,
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "\$5500",
                              style: appCss.h4
                                  .copyWith(color: appColor.primaryColor),
                            ),
                            const SizedBox(height: 15),
                            Text(
                              "Expenses",
                              style: appCss.bodyStyle7
                                  .copyWith(color: appColor.textPrimaryColor),
                            ),
                          ],
                        ),
                        // const SizedBox(height: 10),
                        VerticalDivider(
                          color: appColor.offWhiteColor1,
                          thickness: 1,
                          endIndent: 20,
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "\$890",
                              style: appCss.h4
                                  .copyWith(color: appColor.primaryColor),
                            ),
                            const SizedBox(height: 15),
                            Text(
                              "Loan",
                              style: appCss.bodyStyle7
                                  .copyWith(color: appColor.textPrimaryColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget overviewList({
    IconData? iconData,
    String? title,
    String? subTitle,
    String? price,
    int? index,
    BuildContext? rootContext,
  }) {
    // String key = Generator.randomString(10);
    return InkWell(
      onTap: () {
        homeCtrl.userDetails();
      },
      child: Container(
        decoration: BoxDecoration(
          color: appColor.offWhiteColor,
          border: Border.all(width: 1, color: appColor.offWhiteColor),
          borderRadius: BorderRadius.circular(
            appScreenUtil.size(25),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: appColor.secondaryColor,
                  border: Border.all(width: 1, color: appColor.offWhiteColor),
                  borderRadius: BorderRadius.circular(
                    appScreenUtil.size(15),
                  ),
                ),
                child: Icon(
                  iconData,
                  color: appColor.textPrimaryColor,
                  size: 35,
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      title!,
                      style:
                          appCss.h5.copyWith(color: appColor.textPrimaryColor),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      subTitle!,
                      textAlign: TextAlign.left,
                      style: appCss.h7
                          .copyWith(color: appColor.textSecondaryColor),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 15),
              Text(
                price!,
                style: appCss.h6.copyWith(color: appColor.textPrimaryColor),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appColor.bgColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              personCard(),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Overview',
                      style: appCss.h1.copyWith(color: appColor.primaryColor),
                    ),
                    Row(
                      children: [
                        Text(
                          'Sept 13, 2020',
                          style: appCss.bodyStyle5
                              .copyWith(color: appColor.primaryColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: overviewList(
                          iconData: MdiIcons.arrowUpThin,
                          title: "Sent",
                          subTitle: "Sending Payment to Clients",
                          price: "\$150",
                          rootContext: context,
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        child: overviewList(
                          iconData: MdiIcons.arrowDownThin,
                          title: "Receive",
                          subTitle: "Receive Salary from company",
                          price: "\$250",
                          rootContext: context,
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        child: overviewList(
                          iconData: MdiIcons.currencyUsd,
                          title: "Loan",
                          subTitle: "Loan for the car",
                          price: "\$400",
                          rootContext: context,
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
}
