import 'package:flutter/material.dart';
import 'package:vehicanich_shop/utils/app_colors.dart';

class BodyMaintainceDescription extends StatelessWidget {
  const BodyMaintainceDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Welcome to the Body Maintenance and Repairing Services!',
          style: TextStyle(fontSize: 19.0, color: Appallcolor().colorwhite),
        ),
    const    SizedBox(
          height: 20,
        ),
        Text(
          'This page is your gateway to showcasing the expertise of your car workshop. As a shop owner, you understand the importance of providing comprehensive services to your valued customers. Here, you have the opportunity to list and detail every service your workshop offers, ensuring that your customers are fully informed and confident in your capabilities.',
          style: TextStyle(fontSize: 19.0, color: Appallcolor().colorwhite),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "Adding your services here allows you to paint a complete picture of your workshop's offerings. From routine maintenance to complex repairs, every service you provide plays a crucial role in keeping your customers' vehicles in top condition. By meticulously detailing each service, you're not just listing tasks – you're highlighting the dedication and skill that sets your workshop apart.",
          style: TextStyle(fontSize: 19.0, color: Appallcolor().colorwhite),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "By adding your services here, you're not only expanding your online presence but also strengthening your reputation as a trusted and reliable workshop in the automotive industry. So, don't hesitate to showcase your services and let your workshop's excellence speak for itself!",
          style: TextStyle(fontSize: 19.0, color: Appallcolor().colorwhite),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          "Powered by   VEHICANICH🤍",
          style: TextStyle(fontSize: 19.0, color: Appallcolor().colorwhite),
        ),
      ],
    );
  }
}
