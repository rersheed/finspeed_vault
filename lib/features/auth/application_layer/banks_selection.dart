import 'package:finspeed_vault/core/utils/colors.dart';
import 'package:finspeed_vault/core/utils/show_dialog.dart';
import 'package:finspeed_vault/features/auth/application_layer/widgets/background.dart';
import 'package:finspeed_vault/features/auth/data_layer/models/bank_data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'pin_screen.dart';
import 'widgets/button.dart';

class BanksSelectionScreen extends StatefulWidget {
  const BanksSelectionScreen({super.key});
  static const String routePath = "banks-selection";
  static const String routeName = "banks-selection";

  @override
  State<BanksSelectionScreen> createState() => _BanksSelectionScreenState();
}

class _BanksSelectionScreenState extends State<BanksSelectionScreen> {
  List<BankDataModel> banks = [
    const BankDataModel(
      bankName: "GT Bank",
      accountNumber: "123456789",
      accountName: "Masum Jibril",
      logo:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/GTBank_logo.svg/120px-GTBank_logo.svg.png",
      isSelected: false,
    ),
    const BankDataModel(
      bankName: "Access Bank",
      accountNumber: "123456789",
      accountName: "Masum Jibril",
      logo:
          "https://static-00.iconduck.com/assets.00/access-bank-plc-icon-512x128-r5rvcuv8.png",
      isSelected: true,
    ),
    const BankDataModel(
      bankName: "UBA Bank",
      accountNumber: "123456789",
      accountName: "Masum Jibril",
      logo:
          "https://seeklogo.com/images/U/uba-logo-1CFD25002D-seeklogo.com.png",
      isSelected: true,
    ),
  ];

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget formContent = Column(
      children: [
        Text(
          "Select Bank Accounts you want to Link with Finspeed",
          style: TextStyle(
            color: AppColors.whiteColor,
            fontWeight: FontWeight.bold,
            fontSize: 20.sp,
          ),
        ),
        SizedBox(
          height: 40.h,
        ),
        Container(
          width: 0.8.sw,
          constraints: BoxConstraints(minHeight: 0.5.sh),
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(18.r),
          ),
          child: ListView.builder(
            itemCount: banks.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Image.network(
                  banks[index].logo,
                  width: 50.w,
                  height: 30.h,
                ),
                title: Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: Text(
                    banks[index].accountNumber,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: Text(
                    banks[index].accountName,
                  ),
                ),
                trailing: Switch(
                  value: banks[index].isSelected,
                  onChanged: (value) {
                    if (value) {
                      DialogManager.showAlertDialog(
                        title: "Info",
                        content:
                            "Send N50 to the following account to show that you authorize this activity",
                        context: context,
                      );
                    }
                    setState(() {
                      banks[index] = banks[index].copyWith(isSelected: value);
                    });
                  },
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 100.h,
        ),
        CustomButton(
          onPressed: next,
          buttonText: "Next",
        ),
        SizedBox(
          height: 30.h,
        ),
      ],
    );
    return Background(
      allowBackButton: true,
      form: formContent,
    );
  }

  void next() {
    context.goNamed(PinScreen.routeName);
  }
}
