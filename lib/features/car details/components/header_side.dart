import 'package:flutter/material.dart';

import '../../../components/volvo_text.dart';
import 'fancy_circular_progress.dart';

class CarDetailsHeaderSide extends StatelessWidget {
  const CarDetailsHeaderSide({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.cyan.withOpacity(.05),
          Colors.cyan.withOpacity(.5),
          Colors.cyan.withOpacity(.05),
          Colors.cyan.withOpacity(.0),
        ], begin: Alignment.topRight, end: Alignment.centerLeft),
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            right: -50,
            bottom: 70,
            child: Container(
              width: screenWidth,
              height: screenWidth,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black54.withOpacity(.1),
              ),
            ),
          ),
          Positioned(
            right: -10,
            bottom: 110,
            child: Container(
              width: screenWidth - 80,
              height: screenWidth - 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black54.withOpacity(.1),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: screenWidth / 3.8,
              top: 100,
              bottom: 30,
            ),
            child: Image.asset(
              'assets/images/upper_view.png',
              // height: screenWidth * 1.3,
            ),
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.menu_outlined),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const VolvoText(),
                            Text(
                              'S-90',
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                          ],
                        ),
                        const Spacer(),
                        const FancyCircularProgress(),
                      ],
                    ),
                    const SizedBox(height: 20),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.lock_open_rounded,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.alt_route_rounded,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.location_on_outlined,
                      ),
                    ),
                    const SizedBox(height: 40)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
    // Row(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: [
    //     IconButton(
    //       onPressed: () {},
    //       icon: const Icon(Icons.menu_outlined),
    //     ),
    //     const SizedBox(width: 10),
    //     Column(
    //       mainAxisSize: MainAxisSize.min,
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         const VolvoText(),
    //         Text(
    //           'S-90',
    //           style: Theme.of(context).textTheme.headlineMedium,
    //         ),
    //       ],
    //     ),
    //     const Spacer(),
    //     const FancyCircularProgress(),
    //   ],
    // ),
    // )
    // Positioned(
    //   right: -30,
    //   bottom: 10,
    //   child: Stack(
    //     alignment: Alignment.center,
    //     children: [
    //       Container(
    //         width: screenWidth,
    //         height: screenWidth,
    //         decoration: BoxDecoration(
    //           shape: BoxShape.circle,
    //           color: Colors.black54.withOpacity(.1),
    //         ),
    //       ),
    //       Container(
    //         width: screenWidth - 80,
    //         height: screenWidth - 80,
    //         decoration: BoxDecoration(
    //           shape: BoxShape.circle,
    //           color: Colors.black54.withOpacity(.1),
    //         ),
    //       ),
    //       Image.asset(
    //         'assets/images/upper_view.png',
    //         height: screenWidth * 1.3,
    //       ),
    //     ],
    //   ),
    // ),
    // Row(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: [
    //     IconButton(
    //       onPressed: () {},
    //       icon: const Icon(Icons.menu_outlined),
    //     ),
    //     const SizedBox(width: 10),
    //     Column(
    //       mainAxisSize: MainAxisSize.min,
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         const VolvoText(),
    //         Text(
    //           'S-90',
    //           style: Theme.of(context).textTheme.headlineMedium,
    //         ),
    //       ],
    //     ),
    //     const Spacer(),
    //     const FancyCircularProgress(),
    //   ],
    // ),
    // Padding(
    //   padding: const EdgeInsets.symmetric(
    //     horizontal: 20,
    //     vertical: 5,
    //   ),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     mainAxisSize: MainAxisSize.min,
    //     children: [
    //       const SizedBox(height: 20),
    //       IconButton(
    //         onPressed: () {},
    //         icon: const Icon(
    //           Icons.lock_open_rounded,
    //         ),
    //       ),
    //       IconButton(
    //         onPressed: () {},
    //         icon: const Icon(
    //           Icons.alt_route_rounded,
    //         ),
    //       ),
    //       SizedBox(height: MediaQuery.sizeOf(context).width / 2),
    //       IconButton(
    //         onPressed: () {},
    //         icon: const Icon(
    //           Icons.location_on_outlined,
    //         ),
    //       ),
    //     ],
    //   ),
    // )
  }
}
