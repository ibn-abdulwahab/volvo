import 'package:flutter/material.dart';
import 'package:volvo/features/car%20details/components/car_details_view.dart';
import 'package:volvo/features/car%20details/components/header_side.dart';

class CarDetailsScreen extends StatefulWidget {
  const CarDetailsScreen({super.key});

  @override
  State<CarDetailsScreen> createState() => _CarDetailsScreenState();
}

class _CarDetailsScreenState extends State<CarDetailsScreen> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _scrollController.addListener(() {
      print(_scrollController.position);
    });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        controller: _scrollController,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            expandedHeight: MediaQuery.sizeOf(context).height / 4 * 3,
            backgroundColor: Colors.blueGrey.shade900,
            elevation: 0,
            collapsedHeight: 270,
            pinned: true,
            flexibleSpace: const CarDetailsHeaderSide(),
          ),
        ],
        body: const Column(
          children: [
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: CarDetailsView(),
                ),
              ),
            ),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
