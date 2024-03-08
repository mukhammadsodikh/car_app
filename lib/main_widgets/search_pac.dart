import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchPac extends StatelessWidget {
  const SearchPac({super.key,required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.black
          ),
            borderRadius: BorderRadius.circular(15),
            color: Colors.white
        ),
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            children: [
              const SizedBox(height: 15),
              Row(
                children: [
                  const Expanded(
                      child: SearchPac(text: 'Search services')
                  ),
                  const Gap(10),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.line_horizontal_3_decrease,
                            color: Colors.orange)),
                  ),
                ],
              )
            ],
          ),
        ),
    );
  }
}