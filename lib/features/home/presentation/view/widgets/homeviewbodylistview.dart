
import '../../../../../core/witgets/customerrorimage.dart';
import '../../../../../core/witgets/customloadingimage.dart';
import '../../manger/newstbooks/newsetbooks_cubit.dart';
import 'customimagebuilder.dart';
import 'homeviewbodylistviewtests.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utliz/routers.dart';
import 'homeviewbodyrating.dart';

class HomeViewBodyListView extends StatelessWidget {
  const HomeViewBodyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetbooksCubit, NewsetbooksState>(
      builder: (context, state) {
        if (state is NewsetbooksSuccess) {
          return ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                 
                    GoRouter.of(context).push(
                      AppRouter.kBookDetailsPath,extra: state.books[index]
                    );
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, bottom: 20),
                        child: SizedBox(
                            height: 100,
                            child: CustomImageBuilder(
                                imageurl: state.books[index].volumeInfo
                                    .imageLinks?.thumbnail??"")),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BookTexts(auther: state.books[index].volumeInfo.authors!,title: state.books[index].volumeInfo.title!),
                            const SizedBox(
                              height: 3,
                            ),
                             HomeViewBodyRating(count: state.books[index].volumeInfo.ratingcount??0,rating: state.books[index].volumeInfo.rating ?? 0,)
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              });
        } else if (state is NewsetbooksError) {
          return CustomErrorImage(errormesage: state.errormessage);
        } else {
          return const CustomLoadingImage();
        }
      },
    );
  }
}
