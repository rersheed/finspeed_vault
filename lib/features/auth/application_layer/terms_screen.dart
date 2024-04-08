import 'package:finspeed_vault/core/utils/colors.dart';
import 'package:finspeed_vault/features/auth/application_layer/widgets/background.dart';
import 'package:flutter/material.dart';

import 'widgets/button.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});
  static const String routePath = "terms-conditions";
  static const String routeName = "terms-conditions";

  @override
  Widget build(BuildContext context) {
    String term = '''

1. Acceptance of Terms

By accessing or using our platform, you agree to these terms and conditions in full. If you disagree with any part of these terms and conditions, you must not use our platform.

2. Eligibility

You must be at least 18 years old and legally capable of entering into binding contracts to use our platform. By using our platform, you represent and warrant that you meet these eligibility requirements.

3. Account Registration

To access certain features of our platform, you may be required to register for an account. You agree to provide accurate and complete information during the registration process and to keep your account information updated.

4. Privacy Policy

Your privacy is important to us. Our Privacy Policy explains how we collect, use, and disclose your personal information. By using our platform, you consent to the collection, use, and disclosure of your personal information as described in our Privacy Policy.

5. Use of Our Platform

You agree to use our platform for lawful purposes only and in compliance with all applicable laws and regulations. You may not use our platform in any way that violates the rights of others or that interferes with the operation of our platform.

6. Financial Services

Our platform provides access to various financial services, including but not limited to, payments, transfers, investments, and lending. The availability of these services may be subject to additional terms and conditions.

7. Fees and Charges

Certain financial services provided through our platform may be subject to fees and charges. You agree to pay all applicable fees and charges associated with your use of these services.

8. Security

You are responsible for maintaining the security of your account and any passwords or access credentials associated with it. You agree not to share your account credentials with any third party and to notify us immediately of any unauthorized use of your account.

9. Intellectual Property

All content and materials available on our platform, including but not limited to, text, graphics, logos, images, and software, are the property of [Fintech Platform Name] or its licensors and are protected by copyright and other intellectual property laws.

10. Disclaimer of Warranties

Our platform is provided on an "as is" and "as available" basis, without any warranties of any kind, express or implied. We do not warrant that our platform will be uninterrupted, error-free, or free from harmful components.

11. Limitation of Liability

In no event shall [Fintech Platform Name] or its affiliates be liable for any indirect, incidental, special, or consequential damages arising out of or in connection with your use of our platform, whether based on warranty, contract, tort (including negligence), or any other legal theory.

12. Governing Law

These terms and conditions shall be governed by and construed in accordance with the laws of [Jurisdiction], without regard to its conflict of law provisions.

13. Changes to Terms

We reserve the right to update or modify these terms and conditions at any time without prior notice. Your continued use of our platform following any such changes constitutes your acceptance of the revised terms and conditions.

14. Contact Us

If you have any questions or concerns about these terms and conditions, please contact us at [Contact Email].
''';
    Widget formContent = Column(
      children: [
        const Text(
          'Terms and Conditions',
          style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: AppColors.whiteColor),
        ),
        const SizedBox(height: 16.0),
        Text(
          term,
          style: const TextStyle(
            color: AppColors.whiteColor,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        CustomButton(
          onPressed: () => Navigator.of(context).pop(),
          buttonText: "Done",
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    );
    return Background(
      allowBackButton: true,
      form: formContent,
    );
  }
}
