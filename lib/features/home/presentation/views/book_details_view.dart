import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/manager/similler_books_cubit/similler_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetails extends StatefulWidget {
  const BookDetails({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  State<BookDetails> createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
  @override
  void initState() {
    BlocProvider.of<SimillerBooksCubit>(context).simillerBooks(
      category: widget.bookModel.volumeInfo.categories![0],
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BookDetailsBody(bookModel: widget.bookModel,),
    );
  }
}
