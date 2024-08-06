import 'package:flutter/material.dart';
import 'package:land_interiors/features/main_view/benefits/widgets/custom_icon.dart';

class BenefitsView extends StatelessWidget {
  const BenefitsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Text(
        'Why LAND interiors',
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.1,
      ),
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomIcon(image: 'assets/calendar.svg', subtitle: '50 days or we \npay your rent'),
          CustomIcon(
              image: 'assets/home.svg', subtitle: '1500+happy \ncustomers'),
          CustomIcon(
              image: 'assets/certificate.svg',
              subtitle: '300+ design \nexpertise')
        ],
      )
    ]);
  }
}
