import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utliz/routers.dart';
import '../../../../home/data/model/book_model/book_model.dart';
import '../../../../home/presentation/view/widgets/customimagebuilder.dart';
import '../../../../home/presentation/view/widgets/homeviewbodylistviewtests.dart';
import '../../../../home/presentation/view/widgets/homeviewbodyrating.dart';

class SearchListBody extends StatelessWidget {
  const SearchListBody({super.key, required this.books});
  final List<BookModel> books;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: books.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              GoRouter.of(context).push(
                AppRouter.kBookDetailsPath,extra: books[index]
              );
            },
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, bottom: 20),
                  child: SizedBox(
                      height: 100,
                      child: CustomImageBuilder(
                          imageurl:
                              books[index].volumeInfo.imageLinks?.thumbnail! ??
                                  "")),
                ),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BookTexts(
                          auther: books[index].volumeInfo.authors!,
                          title: books[index].volumeInfo.title!),
                      const SizedBox(
                        height: 3,
                      ),
                      HomeViewBodyRating(
                        count: books[index].volumeInfo.ratingcount ?? 0,
                        rating: books[index].volumeInfo.rating ?? 0,
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
