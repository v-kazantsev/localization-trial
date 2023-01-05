import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../components/menu_item.dart';
import '../components/codes_screen_item.dart';
import '../localization/app_localization_context.dart';
import '../models/codes_model.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int selectedIndex = 0;
  bool isLoading = true;
  late List<CodesModel> itemsList = [];

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/data/mockData.json');
    Iterable data = await json.decode(response);
    Timer(const Duration(seconds: 2), () {
      setState(() {
        itemsList = data.map((item) => CodesModel.fromJson(item)).toList();
        isLoading = false;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    readJson();
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
    ? const Center(child:CircularProgressIndicator())
    : Column(
      children: [
        Expanded(
          flex: 1,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              const SizedBox(width: 18),
              ListMenuItem(
                isSelected: selectedIndex == 0,
                label: context.loc.allCodes,
                onTap: () { setState(() => selectedIndex = 0);}
              ),
              const SizedBox(width: 8),
              ListMenuItem(
                isSelected: selectedIndex == 1,
                label: context.loc.favorites,
                onTap: () { setState(() => selectedIndex = 1);}
              ),
              const SizedBox(width: 8),
              ListMenuItem(
                isSelected: selectedIndex == 2,
                label: context.loc.car,
                onTap: () { setState(() => selectedIndex = 2);}
              ),
              const SizedBox(width: 8),
              ListMenuItem(
                isSelected: selectedIndex == 3,
                label: context.loc.add,
                onTap: () { setState(() => selectedIndex = 3);}
              ),
            ],
          ),
        ),
        Expanded(
          flex: 9,
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              children: [
                CodesScreenItem(
                  label: itemsList[0].title!,
                  color: const Color(0x334385F6),
                  iconColor: const Color(0xFF4D8EFF),
                ),
                CodesScreenItem(
                  label: itemsList[1].title!,
                  color: const Color(0x33CDC1FF),
                  iconColor: const Color(0xFFCDC1FF),
                ),
                CodesScreenItem(
                  label: itemsList[2].title!,
                  color: const Color(0xFFE4F9E4),
                  iconColor: const Color(0xFF7AE582),
                ),
                CodesScreenItem(
                  label: itemsList[3].title!,
                  color: const Color(0x3371BBFF),
                  iconColor: const Color(0xFF81CCF2),
                ),
                CodesScreenItem(
                  label: itemsList[4].title!,
                  color: const Color(0x3377EDD9),
                  iconColor: const Color(0xFF77EDD9),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}