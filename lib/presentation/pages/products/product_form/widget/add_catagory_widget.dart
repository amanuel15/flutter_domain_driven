import 'package:auto_size_text/auto_size_text.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/misc/catagory_item_presentation_classes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:finished_notes_firebase_ddd_course/application/product/product_form/product_form_bloc.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/misc/build_context_x.dart';
import 'package:kt_dart/collection.dart';
import 'package:provider/provider.dart';

class AddCatagoryWidget extends HookWidget {
  const AddCatagoryWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.width;
    final double screenWidth = MediaQuery.of(context).size.width;

    return BlocListener<ProductFormBloc, ProductFormState>(
      condition: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        context.formCatagories = state.product.catagories.value.fold(
          (_) => mutableListOf<CatagoryItemPrimitive>(),
          (catagoryList) => catagoryList
              .map((_) => CatagoryItemPrimitive.fromDomain(_))
              .toMutableList(),
        );
      },
      child: Consumer<FormCatagories>(
        builder: (context, formCatagories, child) {
          final catagories = context.formCatagories.asList();
          return Container(
              clipBehavior: Clip.hardEdge,
              height: 0.29.hp.toDouble(),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(25, 25, 25, 0.2),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    ScreenUtil().setWidth(20).toDouble(),
                  ),
                ),
                border: Border.all(color: Colors.grey),
              ),
              child: catagories.length == 3
                  ? Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: catagories
                              .map(
                                (category) => Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        ScreenUtil()
                                            .setWidth(screenWidth * 0.04)
                                            .toDouble(),
                                        0.02.hp.toDouble(),
                                        0,
                                        0),
                                    child: SizedBox(
                                      height: 0.05.hp.toDouble(),
                                      child: Row(
                                        children: <Widget>[
                                          SizedBox(
                                            width: ScreenUtil()
                                                .setWidth(screenWidth * 0.3)
                                                .toDouble(),
                                            child: AutoSizeText(
                                              category.name,
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontStyle: FontStyle.italic,
                                                color: Colors.deepPurpleAccent,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                              width: ScreenUtil()
                                                  .setWidth(screenWidth * 0.55)
                                                  .toDouble(),
                                              height: 0.05.hp.toDouble(),
                                              child: Material(
                                                elevation: 5,
                                                type: MaterialType.card,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      gradient: LinearGradient(
                                                          colors: [
                                                        Colors.grey,
                                                        const Color.fromRGBO(
                                                            0, 0, 0, 0.2),
                                                        Colors.grey,
                                                        Colors.deepPurpleAccent,
                                                      ])),
                                                  child: Padding(
                                                    padding: EdgeInsets.fromLTRB(
                                                        ScreenUtil()
                                                            .setWidth(
                                                                screenWidth *
                                                                    0.02)
                                                            .toDouble(),
                                                        0.01.hp.toDouble(),
                                                        0,
                                                        0),
                                                    child: AutoSizeText(
                                                      category.name,
                                                      maxLines: 1,
                                                      textAlign: TextAlign.left,
                                                      style: const TextStyle(
                                                        fontSize: 18,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              )),
                                        ],
                                      ),
                                    )),
                              )
                              .toList(),
                        ),
                        SizedBox(
                          height: 0.07.hp.toDouble(),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(
                                ScreenUtil()
                                    .setWidth(screenWidth * 0.01)
                                    .toDouble(),
                                0.02.hp.toDouble(),
                                ScreenUtil()
                                    .setWidth(screenWidth * 0.01)
                                    .toDouble(),
                                0),
                            child: MaterialButton(
                                clipBehavior: Clip.hardEdge,
                                onPressed: () {
                                  //deleteSelectedCategory();
                                  context.bloc<ProductFormBloc>().add(
                                        const ProductFormEvent
                                            .catagoriesDeleted(),
                                      );
                                  context.formCatagories = emptyList();
                                  print('cats!! ${context.formCatagories}');
                                },
                                color: Colors.deepPurpleAccent.withOpacity(0.8),
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        bottom: Radius.circular(ScreenUtil()
                                            .setWidth(20)
                                            .toDouble()))),
                                child: SizedBox(
                                  height: 0.06.hp.toDouble(),
                                  width: ScreenUtil()
                                      .setWidth(screenWidth * 0.8)
                                      .toDouble(),
                                  child: Icon(
                                    Icons.delete,
                                    color: Colors.white,
                                    size: 0.04.hp.toDouble(),
                                  ),
                                )),
                          ),
                        )
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            tooltip: 'Select Categories',
                            icon: Icon(Icons.add),
                            iconSize: ScreenUtil()
                                .setHeight(screenHeight / 14)
                                .toDouble(),
                            color: const Color.fromRGBO(25, 25, 25, 0.9),
                            onPressed: () {
                              context
                                  .bloc<ProductFormBloc>()
                                  .add(const ProductFormEvent.catagoryAdded());
                              // print('editing: ${stateF.catagoryEditing}');
                              // print('editing: ${stateF.product}');
                              // addCategory();
                              // print('pressed $screenHeight, $screenWidth, $device');
                            },
                          ),
                        ),
                        Text(
                          'SELECT CATEGORIES',
                          style: TextStyle(
                              fontSize: ScreenUtil().setSp(13).toDouble(),
                              color: const Color.fromRGBO(25, 25, 25, 0.9)),
                        )
                      ],
                    ));
        },
      ),
    );
  }
}
