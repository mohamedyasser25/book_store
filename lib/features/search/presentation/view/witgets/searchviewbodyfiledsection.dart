import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utliz/stayles.dart';
import '../../manger/searchbook_cubit.dart';

class SearchViewBodyFiledSection extends StatelessWidget {
  SearchViewBodyFiledSection({super.key, required this.blocobject});
  final SearchbookCubit blocobject;
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: TextField(
            controller: controller,
            autocorrect: true,
            autofocus: true,
            decoration: InputDecoration(
                suffixIcon: IconButton(
                    onPressed: () {
                      blocobject.featurecustombook(text: controller.text);
                    },
                    icon: const Icon(FontAwesomeIcons.magnifyingGlass)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.white)),
                hintText: "Search"),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
            "Search Result :",
            style: Styles.textStyle20,
          ),
        ),
        const SizedBox(
          height: 18,
        ),
      ],
    );
  }
}
