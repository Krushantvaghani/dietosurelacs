import 'package:dietosurelabs/widgets/common/custom_button.dart';
import 'package:flutter/material.dart';

import '../app_config.dart';

class UserDetailsScreen extends StatefulWidget {
  const UserDetailsScreen({Key? key}) : super(key: key);

  @override
  State<UserDetailsScreen> createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends State<UserDetailsScreen> {
  int? selectedCategory = 0;

  var userDetailsCtrl = Get.put(UserDetailsScreen());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor.bgColor,
      appBar: AppBar(
        backgroundColor: appColor.bgColor,
        elevation: 0,
        centerTitle: false,
        automaticallyImplyLeading: false,
        leading: Center(
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: Padding(
              padding: EdgeInsets.only(left: appScreenUtil.size(10)),
              child: Icon(
                MdiIcons.chevronLeft,
                color: appColor.primaryColor,
                size: appScreenUtil.size(25),
              ),
            ),
          ),
        ),
        actions: [
          Center(
            child: InkWell(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(right: appScreenUtil.size(20)),
                child: Icon(
                  MdiIcons.magnify,
                  color: appColor.primaryColor,
                  size: appScreenUtil.size(25),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: appScreenUtil.size(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recent Transactions',
                      style: appCss.h2.copyWith(color: appColor.primaryColor),
                    ),
                    Row(
                      children: [
                        Text(
                          'See all',
                          style: appCss.bodyStyle5
                              .copyWith(color: appColor.primaryColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Today',
                style: appCss.h2.copyWith(color: appColor.primaryColor),
              ),
              SizedBox(height: 30),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    categoryWidget(
                      actionText: "All",
                      index: 0,
                    ),
                    const SizedBox(width: 10),
                    categoryWidget(
                      actionText: "Income",
                      index: 1,
                    ),
                    const SizedBox(width: 10),
                    categoryWidget(
                      actionText: "Expense",
                      index: 2,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: appColor.whiteColor,
                    border: Border.all(width: 1, color: appColor.whiteColor),
                    borderRadius: BorderRadius.circular(
                      appScreenUtil.size(25),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          MdiIcons.email,
                          color: appColor.textPrimaryColor,
                          size: 35,
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Payment",
                                style: appCss.h5
                                    .copyWith(color: appColor.textPrimaryColor),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "Payment from Andrea",
                                textAlign: TextAlign.left,
                                style: appCss.h7.copyWith(
                                    color: appColor.textSecondaryColor),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          "\$30.00",
                          style:
                              appCss.h6.copyWith(color: appColor.primaryColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Spacer(),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(imageAssets.member),
                    ),
                  ),
                ),
              ),
              CustomButton(
                padding: 22,
                radius: 50,
                title: 'See Details',
                style: appCss.h5.copyWith(color: appColor.whiteColor),
                onTap: () {
                  // settingCtrl.logout();
                },
              ),
              SizedBox(height: appScreenUtil.size(15)),
            ],
          ),
        ),
      ),
    );
  }

  Widget categoryWidget({
    required String actionText,
    int? index,
  }) {
    bool isSelected = (selectedCategory == index);
    return Column(
      children: <Widget>[
        InkWell(
          onTap: () {
            if (!isSelected) {
              setState(() {
                selectedCategory = index;
              });
            }
          },
          child: Container(
            decoration: BoxDecoration(
              boxShadow: isSelected
                  ? [
                      BoxShadow(
                          color: appColor.primaryColor.withAlpha(80),
                          blurRadius: 6,
                          spreadRadius: 1,
                          offset: const Offset(0, 2))
                    ]
                  : [],
              color: isSelected ? appColor.primaryColor : appColor.whiteColor,
              borderRadius: BorderRadius.circular(
                appScreenUtil.size(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 5),
              child: Container(
                alignment: Alignment.center,
                width: 90,
                child: Text(
                  actionText,
                  style: appCss.h7.copyWith(
                      color: isSelected
                          ? appColor.whiteColor
                          : appColor.textSecondaryColor),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
