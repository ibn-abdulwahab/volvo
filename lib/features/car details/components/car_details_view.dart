import 'package:flutter/material.dart';
import 'package:volvo/components/label_and_text.dart';
import 'package:volvo/features/car%20details/components/car_menu_view.dart';
import 'package:volvo/features/car%20details/components/service_item_view.dart';

class CarDetailsView extends StatelessWidget {
  const CarDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> services = [
      'Tire pressuer too low',
      'Air conditioning & filter',
      'Battery replacement.',
      'Brake work.',
      'Replace air filter',
    ];

    final Map<String, IconData> menuOptions = {
      'Travel log': Icons.double_arrow_rounded,
      'Statistics': Icons.insights_rounded,
      'User manual': Icons.auto_stories_outlined,
      'Settings': Icons.tune_rounded
    };

    return Column(
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const LabelAndText(
                  label: 'DRIVE RANGE',
                  text: '443 km',
                  centerText: true,
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Icon(
                      Icons.local_gas_station_outlined,
                      color: Colors.green,
                    ),
                    SizedBox(width: 5),
                    LabelAndText(
                      label: 'FUEL range',
                      text: '156 km',
                    ),
                    Spacer(),
                    Icon(
                      Icons.electric_car_outlined,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 5),
                    LabelAndText(
                      label: 'Electric range',
                      text: '284 km',
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Stack(
                  children: [
                    const LinearProgressIndicator(
                      value: 0.75,
                      color: Colors.blue,
                      // backgroundColor: Colors.grey,
                    ),
                    LinearProgressIndicator(
                      value: 0.25,
                      color: Colors.green,
                      backgroundColor: Colors.white.withOpacity(.0),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 5),
        const Card(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: [
                Icon(
                  Icons.bar_chart_rounded,
                  color: Colors.grey,
                ),
                SizedBox(width: 5),
                LabelAndText(
                  label: 'Statistic',
                  text: '9.3',
                  secondaryText: '1/1000 km',
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.grey,
                  size: 18,
                ),
                SizedBox(width: 5),
              ],
            ),
          ),
        ),
        const SizedBox(height: 5),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.home_repair_service_outlined,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 5),
                    const LabelAndText(
                      label: 'Service',
                      text: 'Required',
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                        color: Colors.orange,
                        shape: BoxShape.circle,
                      ),
                      child: Text(services.length.toString()),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.grey,
                      size: 18,
                    ),
                    const SizedBox(width: 5),
                  ],
                ),
                for (String item in services)
                  ServiceItemView(
                    itemTitle: item,
                  ),
              ],
            ),
          ),
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20,
              top: 5,
              bottom: 20,
            ),
            child: Column(
              children: [
                for (String key in menuOptions.keys)
                  CarMenuView(icon: menuOptions[key]!, title: key),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: double.infinity,
          height: 55,
          child:
              ElevatedButton(onPressed: () {}, child: const Text('Call care')),
        )
      ],
    );
  }
}
