import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/witgets/customerrorimage.dart';
import '../../../../../core/witgets/customloadingimage.dart';

import '../../manger/searchbook_cubit.dart';
import 'searchviewbodydescreption.dart';
import 'searchviewbodyfiledsection.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchbookCubit, SearchbookState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchViewBodyFiledSection(
              blocobject: BlocProvider.of<SearchbookCubit>(context),
            ),
            if (state is SearchbookSuccers)
              Expanded(child: SearchListBody(books: state.book)),
            if (state is SearchbookError)
              CustomErrorImage(errormesage: state.errormessage),
            if (state is SearchbookInitial || state is SearchbookLoading)
              const CustomLoadingImage(),
          ],
        );
      },
    );
  }
}

