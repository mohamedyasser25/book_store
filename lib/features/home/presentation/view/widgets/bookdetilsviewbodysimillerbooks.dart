import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/witgets/customerrorimage.dart';
import '../../../../../core/witgets/customloadingimage.dart';
import '../../manger/similerbooks/similer_books_cubit.dart';
import 'customimagebuilder.dart';

class SimillerBookView extends StatelessWidget {
  const SimillerBookView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilerBooksCubit, SimilerBooksState>(
      builder: (context, state) {
        if (state is SimilerBooksSuccerss) {
  return SizedBox(
    height: MediaQuery.sizeOf(context).height * 0.15,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      itemCount: state.books.length,
      itemBuilder: (context, index) {
        return  CustomImageBuilder(
            imageurl:  state.books[index].volumeInfo.imageLinks?.thumbnail??"");
      },
    ),
  );
}else if (state is SimilerBooksError) {
          return CustomErrorImage(errormesage: state.errormessage);
        } else {
          return const CustomLoadingImage();
        }
      },
    );
  }
}
