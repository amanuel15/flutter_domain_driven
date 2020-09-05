import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:finished_notes_firebase_ddd_course/application/product/product_form/product_form_bloc.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/image_properties.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/sub_product.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/misc/image_item_presentation_classes.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/misc/lables_item_presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/misc/build_context_x.dart';

class CreateSubproduct extends HookWidget {
  const CreateSubproduct({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    final subProductNameController = useTextEditingController();
    final subProductPriceController = useTextEditingController();
    final subProductAmountController = useTextEditingController();
    final labelFieldController = useTextEditingController();
    List<TextEditingController> labelControllers = [
      TextEditingController(),
      TextEditingController(),
      TextEditingController(),
      TextEditingController(),
      TextEditingController(),
      TextEditingController(),
    ];
    String currentSubProductNameErrorMessage;
    String currentSubProductAmountErrorMessage;
    String currentSubProductPriceErrorMessage;

    return BlocConsumer<ProductFormBloc, ProductFormState>(
      listenWhen: (p, c) =>
          p.subCatagoryEditing != c.subCatagoryEditing ||
          p.subProductPrimitive != c.subProductPrimitive,
      listener: (context, state) {
        subProductNameController.text = state.subProductPrimitive.name;
        subProductPriceController.text =
            state.subProductPrimitive.price.toString();
        subProductAmountController.text =
            state.subProductPrimitive.amount.toString();
        // makes a list of all the labels in the product from a map
        // context.formLabels = state.product.subProducts.value
        //     .fold((_) => <String>[], (subProductList) {
        //   List<String> a = [];
        //   subProductList[0].labels[0].forEach((key, value) {
        //     a += [key.toString()];
        //   });
        //   return a;
        // });
        // labelControllers = List.generate(
        //     context.formLabels.length, (i) => TextEditingController());
      },
      buildWhen: (p, c) =>
          p.subCatagoryEditing != c.subCatagoryEditing ||
          p.subProductPrimitive != c.subProductPrimitive,
      builder: (context, state) {
        return Consumer<FormLabels>(
          builder: (context, formLabels, child) {
            return AnimatedPositioned(
              height: ScreenUtil().setHeight(screenHeight * .9).toDouble(),
              left: ScreenUtil().setWidth(screenWidth * 0.03).toDouble(),
              width: ScreenUtil().setWidth(screenWidth * 0.94).toDouble(),
              top: state.subCatagoryEditing
                  ? screenHeight - (screenHeight * .9)
                  : screenHeight,
              duration: const Duration(milliseconds: 500),
              child: FocusScope(
                autofocus: true,
                //node: subProductPopUpNode,
                child: Material(
                  clipBehavior: Clip.hardEdge,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(
                        ScreenUtil().setWidth(20).toDouble(),
                      ),
                    ),
                  ),
                  shadowColor: Colors.black,
                  elevation: 10,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [
                          0,
                          0.25,
                          0.50,
                          0.75,
                        ],
                        colors: [
                          Color(0xFFCEF1E9),
                          Color(0xFFDFD1AA),
                          Color(0xFFADB9EC),
                          Color(0xFFECB6E1),
                        ],
                      ),
                    ),
                    child: Column(
                      //Column
                      //padding: const EdgeInsets.all(0),
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            context.bloc<ProductFormBloc>().add(
                                const ProductFormEvent
                                    .subProductEditingOrNot());
                          },
                          child: Card(
                            elevation: 10,
                            color: Colors.deepPurpleAccent,
                            shadowColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(
                                  ScreenUtil().setWidth(20).toDouble(),
                                ),
                              ),
                            ),
                            child: SizedBox(
                              height: ScreenUtil()
                                  .setHeight(screenHeight * 0.04)
                                  .toDouble(),
                              child: Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: ScreenUtil()
                                        .setWidth(screenWidth / 50)
                                        .toDouble(),
                                  ),
                                  Icon(
                                    Icons.arrow_downward,
                                    color: Colors.white,
                                    size: ScreenUtil()
                                        .setWidth(screenHeight / 30)
                                        .toDouble(),
                                  ),
                                  const AutoSizeText(
                                    "Slide Down",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                            ScreenUtil().setHeight(screenWidth / 25).toDouble(),
                            0,
                            ScreenUtil().setWidth(screenWidth / 25).toDouble(),
                            0,
                          ),
                          child: Form(
                            autovalidate: true,
                            child: ConstrainedBox(
                              constraints:
                                  BoxConstraints(maxHeight: 0.7.hp.toDouble()),
                              child: ListView(
                                shrinkWrap: true,
                                //mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: ScreenUtil()
                                        .setHeight(screenHeight * 0.03)
                                        .toDouble(),
                                    child: AutoSizeText(
                                      "Create a SubProduct",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.deepPurpleAccent,
                                        fontSize: 15.nsp.toDouble(),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    // height: ScreenUtil()
                                    //     .setHeight(screenHeight * 0.1)
                                    //     .toDouble(),
                                    child: TextFormField(
                                      controller: subProductNameController,
                                      onChanged: (value) {
                                        //onSubProductChange();
                                      },
                                      maxLength: 20,
                                      maxLengthEnforced: true,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: ScreenUtil()
                                            .setSp(20,
                                                allowFontScalingSelf: true)
                                            .toDouble(),
                                      ),
                                      decoration: InputDecoration(
                                        focusColor: Colors.yellow,
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(
                                              ScreenUtil()
                                                  .setWidth(10)
                                                  .toDouble(),
                                            ),
                                          ),
                                          borderSide: const BorderSide(
                                            color: Colors.deepPurpleAccent,
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(
                                              ScreenUtil()
                                                  .setWidth(5)
                                                  .toDouble(),
                                            ),
                                          ),
                                          borderSide: const BorderSide(
                                            style: BorderStyle.solid,
                                            color: Colors.blueGrey,
                                          ),
                                        ),
                                        prefixIcon: const Icon(
                                          Icons.edit,
                                          color: Colors.deepPurpleAccent,
                                        ),
                                        labelStyle: TextStyle(
                                          color: Colors.deepPurpleAccent,
                                          fontWeight: FontWeight.normal,
                                          fontSize: ScreenUtil()
                                              .setSp(14,
                                                  allowFontScalingSelf: true)
                                              .toDouble(),
                                        ),
                                        labelText: 'SubProduct Name',
                                      ),
                                      autocorrect: false,
                                      validator: (_) =>
                                          currentSubProductNameErrorMessage,
                                    ),
                                  ),
                                  SizedBox(
                                    height: .02.hp.toDouble(),
                                  ),
                                  SizedBox(
                                    // height: ScreenUtil()
                                    //     .setHeight(screenHeight * 0.1)
                                    //     .toDouble(),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        SizedBox(
                                          width: ScreenUtil()
                                              .setWidth(screenWidth * 0.35)
                                              .toDouble(),
                                          child: TextFormField(
                                            controller:
                                                subProductPriceController,
                                            onChanged: (value) {
                                              //onSubProductChange();
                                            },
                                            maxLength: 10,
                                            maxLengthEnforced: true,
                                            keyboardType: const TextInputType
                                                    .numberWithOptions(
                                                signed: true, decimal: true),
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: ScreenUtil()
                                                    .setSp(20,
                                                        allowFontScalingSelf:
                                                            true)
                                                    .toDouble()),
                                            decoration: InputDecoration(
                                              focusColor: Colors.yellow,
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                    ScreenUtil()
                                                        .setWidth(10)
                                                        .toDouble(),
                                                  ),
                                                ),
                                                borderSide: const BorderSide(
                                                  color:
                                                      Colors.deepPurpleAccent,
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                    ScreenUtil()
                                                        .setWidth(5)
                                                        .toDouble(),
                                                  ),
                                                ),
                                                borderSide: const BorderSide(
                                                  style: BorderStyle.solid,
                                                  color: Colors.blueGrey,
                                                ),
                                              ),
                                              prefixIcon: const Icon(
                                                Icons.attach_money,
                                                color: Colors.deepPurpleAccent,
                                              ),
                                              labelStyle: TextStyle(
                                                color: Colors.deepPurpleAccent,
                                                fontWeight: FontWeight.normal,
                                                fontSize: ScreenUtil()
                                                    .setSp(14)
                                                    .toDouble(),
                                              ),
                                              labelText: 'SubProduct Price',
                                            ),
                                            autocorrect: false,
                                            obscureText: false,
                                            validator: (_) =>
                                                currentSubProductPriceErrorMessage,
                                          ),
                                        ),
                                        // SizedBox(
                                        //   width: ScreenUtil()
                                        //       .setWidth(screenWidth * 0.08)
                                        //       .toDouble(),
                                        // ),
                                        SizedBox(
                                          width: ScreenUtil()
                                              .setWidth(screenWidth * 0.35)
                                              .toDouble(),
                                          child: TextFormField(
                                            controller:
                                                subProductAmountController,
                                            onChanged: (value) {
                                              //onSubProductChange();
                                            },
                                            maxLength: 10,
                                            maxLengthEnforced: true,
                                            keyboardType: const TextInputType
                                                    .numberWithOptions(
                                                signed: true),
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: ScreenUtil()
                                                  .setSp(20,
                                                      allowFontScalingSelf:
                                                          true)
                                                  .toDouble(),
                                            ),
                                            decoration: InputDecoration(
                                              focusColor: Colors.yellow,
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                    ScreenUtil()
                                                        .setWidth(10)
                                                        .toDouble(),
                                                  ),
                                                ),
                                                borderSide: const BorderSide(
                                                  color:
                                                      Colors.deepPurpleAccent,
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                    ScreenUtil()
                                                        .setWidth(5)
                                                        .toDouble(),
                                                  ),
                                                ),
                                                borderSide: const BorderSide(
                                                  color: Colors.blueGrey,
                                                ),
                                              ),
                                              prefixIcon: const Icon(
                                                Icons.add_shopping_cart,
                                                color: Colors.deepPurpleAccent,
                                              ),
                                              labelStyle: TextStyle(
                                                color: Colors.deepPurpleAccent,
                                                fontWeight: FontWeight.normal,
                                                fontSize: ScreenUtil()
                                                    .setSp(14)
                                                    .toDouble(),
                                              ),
                                              labelText: 'Amount',
                                            ),
                                            autocorrect: false,
                                            validator: (_) =>
                                                currentSubProductAmountErrorMessage,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // SizedBox(
                                  //   height: .02.hp.toDouble(),
                                  // ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(
                                      ScreenUtil().setWidth(5).toDouble(),
                                      ScreenUtil().setWidth(5).toDouble(),
                                      ScreenUtil().setWidth(5).toDouble(),
                                      ScreenUtil().setWidth(10).toDouble(),
                                    ),
                                    color: Colors.grey.withOpacity(0.2),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          'Labels',
                                          style: TextStyle(
                                            color: Colors.deepPurpleAccent,
                                          ),
                                        ),
                                        SizedBox(
                                          height: ScreenUtil()
                                              .setHeight(10)
                                              .toDouble(),
                                        ),
                                        GridView.count(
                                          crossAxisCount: 2,
                                          mainAxisSpacing: 10,
                                          crossAxisSpacing: 10,
                                          //padding: const EdgeInsets.all(20),
                                          primary: false,
                                          shrinkWrap: true,
                                          childAspectRatio: 2,
                                          children: context.formLabels.map(
                                            (label) {
                                              int index = context.formLabels
                                                  .indexOf(label);
                                              state.subProductPrimitive.labels
                                                      .isNotEmpty
                                                  ? labelControllers[index]
                                                          .text =
                                                      state.subProductPrimitive
                                                          .labels[0][label]
                                                          .toString()
                                                  : labelControllers
                                                      .forEach((e) {
                                                      e.text = '';
                                                    });
                                              return TextFormField(
                                                controller:
                                                    labelControllers[index],
                                                onChanged: (value) {
                                                  //onSubProductChange();
                                                },
                                                maxLength: 20,
                                                maxLengthEnforced: true,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: ScreenUtil()
                                                      .setSp(20,
                                                          allowFontScalingSelf:
                                                              true)
                                                      .toDouble(),
                                                ),
                                                decoration: InputDecoration(
                                                  focusColor: Colors.yellow,
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(
                                                        ScreenUtil()
                                                            .setWidth(10)
                                                            .toDouble(),
                                                      ),
                                                    ),
                                                    borderSide:
                                                        const BorderSide(
                                                      color: Colors
                                                          .deepPurpleAccent,
                                                    ),
                                                  ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(
                                                        ScreenUtil()
                                                            .setWidth(5)
                                                            .toDouble(),
                                                      ),
                                                    ),
                                                    borderSide:
                                                        const BorderSide(
                                                      style: BorderStyle.solid,
                                                      color: Colors.blueGrey,
                                                    ),
                                                  ),
                                                  prefixIcon: const Icon(
                                                    Icons.edit,
                                                    color:
                                                        Colors.deepPurpleAccent,
                                                  ),
                                                  labelStyle: TextStyle(
                                                    color:
                                                        Colors.deepPurpleAccent,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: ScreenUtil()
                                                        .setSp(14,
                                                            allowFontScalingSelf:
                                                                true)
                                                        .toDouble(),
                                                  ),
                                                  labelText: label,
                                                ),
                                                autocorrect: false,
                                                // validator: (_) =>
                                                //     currentSubProductNameErrorMessage,
                                              );
                                            },
                                          ).toList(),
                                        ),
                                        // Column(
                                        //   mainAxisSize: MainAxisSize.min,
                                        //   children: context.formLabels.map(
                                        //     (label) {
                                        //       int index = context.formLabels
                                        //           .indexOf(label);
                                        //       state.subProductPrimitive.labels
                                        //               .isNotEmpty
                                        //           ? labelControllers[index]
                                        //                   .text =
                                        //               state.subProductPrimitive
                                        //                   .labels[0][label]
                                        //                   .toString()
                                        //           : labelControllers = [
                                        //               TextEditingController(),
                                        //               TextEditingController(),
                                        //               TextEditingController(),
                                        //               TextEditingController(),
                                        //               TextEditingController(),
                                        //               TextEditingController(),
                                        //             ];
                                        //       return TextFormField(
                                        //         controller:
                                        //             labelControllers[index],
                                        //         onChanged: (value) {
                                        //           //onSubProductChange();
                                        //         },
                                        //         maxLength: 20,
                                        //         maxLengthEnforced: true,
                                        //         style: TextStyle(
                                        //           color: Colors.black,
                                        //           fontWeight: FontWeight.bold,
                                        //           fontSize: ScreenUtil()
                                        //               .setSp(20,
                                        //                   allowFontScalingSelf:
                                        //                       true)
                                        //               .toDouble(),
                                        //         ),
                                        //         decoration: InputDecoration(
                                        //           focusColor: Colors.yellow,
                                        //           focusedBorder:
                                        //               OutlineInputBorder(
                                        //             borderRadius:
                                        //                 BorderRadius.all(
                                        //               Radius.circular(
                                        //                 ScreenUtil()
                                        //                     .setWidth(10)
                                        //                     .toDouble(),
                                        //               ),
                                        //             ),
                                        //             borderSide:
                                        //                 const BorderSide(
                                        //               color: Colors
                                        //                   .deepPurpleAccent,
                                        //             ),
                                        //           ),
                                        //           enabledBorder:
                                        //               OutlineInputBorder(
                                        //             borderRadius:
                                        //                 BorderRadius.all(
                                        //               Radius.circular(
                                        //                 ScreenUtil()
                                        //                     .setWidth(5)
                                        //                     .toDouble(),
                                        //               ),
                                        //             ),
                                        //             borderSide:
                                        //                 const BorderSide(
                                        //               style: BorderStyle.solid,
                                        //               color: Colors.blueGrey,
                                        //             ),
                                        //           ),
                                        //           prefixIcon: const Icon(
                                        //             Icons.edit,
                                        //             color:
                                        //                 Colors.deepPurpleAccent,
                                        //           ),
                                        //           labelStyle: TextStyle(
                                        //             color:
                                        //                 Colors.deepPurpleAccent,
                                        //             fontWeight:
                                        //                 FontWeight.normal,
                                        //             fontSize: ScreenUtil()
                                        //                 .setSp(14,
                                        //                     allowFontScalingSelf:
                                        //                         true)
                                        //                 .toDouble(),
                                        //           ),
                                        //           labelText: label,
                                        //         ),
                                        //         autocorrect: false,
                                        //         // validator: (_) =>
                                        //         //     currentSubProductNameErrorMessage,
                                        //       );
                                        //     },
                                        //   ).toList(),
                                        // ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: ScreenUtil()
                                        .setHeight(screenHeight * 0.03)
                                        .toDouble(),
                                    child: Text(
                                      !context.formImages.isEmpty()
                                          ? !context.formImages.contains(
                                              ImageItemPrimitive(
                                                name: state.subProductPrimitive
                                                            .imageUrl !=
                                                        null
                                                    ? state.subProductPrimitive
                                                        .imageUrl
                                                    : '',
                                              ),
                                            )
                                              ? 'TAP IMAGE TO SELECT'
                                              : "TAP TRASH ICON TO DESELECT"
                                          : "SELECT IMAGES FROM THE IMAGES TAB",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontStyle: FontStyle.italic,
                                        color: Colors.deepPurpleAccent,
                                        fontSize: ScreenUtil()
                                            .setSp(15,
                                                allowFontScalingSelf: true)
                                            .toDouble(),
                                      ),
                                    ),
                                  ),
                                  !context.formImages.contains(
                                    ImageItemPrimitive(
                                      name: state.subProductPrimitive
                                                  .imageUrl !=
                                              null
                                          ? state.subProductPrimitive.imageUrl
                                          : '',
                                    ),
                                  )
                                      ? CarouselSlider(
                                          options: CarouselOptions(
                                            aspectRatio: 16 / 9,
                                            height: 0.25.hp.toDouble(),
                                            autoPlay: false,
                                            enlargeCenterPage: true,
                                          ),
                                          items: context.formImages
                                              .asList() //state.selectedImages
                                              .map(
                                                (item) => Ink(
                                                  child: InkWell(
                                                    onTap: () {
                                                      context
                                                          .bloc<
                                                              ProductFormBloc>()
                                                          .add(
                                                            ProductFormEvent
                                                                .subProductImage(
                                                              item.toImageProperties(),
                                                            ),
                                                          );
                                                      //addImageToSubProduct(item);
                                                    },
                                                    child: Stack(
                                                      overflow: Overflow.clip,
                                                      children: <Widget>[
                                                        CachedNetworkImage(
                                                          imageUrl: item.name,
                                                          width: ScreenUtil()
                                                                  .setHeight(
                                                                      screenHeight /
                                                                          4)
                                                                  .toDouble() *
                                                              (16 / 9),
                                                          fit: BoxFit.fitHeight,
                                                        ),
                                                        Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Padding(
                                                            padding: EdgeInsets
                                                                .fromLTRB(
                                                              0,
                                                              10.w.toDouble(),
                                                              0,
                                                              0,
                                                            ),
                                                            child: Icon(
                                                              Icons.check,
                                                              color:
                                                                  Colors.white,
                                                              size: ScreenUtil()
                                                                  .setHeight(
                                                                      screenHeight /
                                                                          25)
                                                                  .toDouble(),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              )
                                              .toList(),
                                        )
                                      : Stack(
                                          overflow: Overflow.clip,
                                          children: <Widget>[
                                            CachedNetworkImage(
                                              imageUrl: state
                                                  .subProductPrimitive.imageUrl,
                                              fit: BoxFit.fitHeight,
                                            ),
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Ink(
                                                padding: EdgeInsets.fromLTRB(0,
                                                    0, 0.04.wp.toDouble(), 0),
                                                child: InkWell(
                                                  onTap: () {
                                                    context
                                                        .bloc<ProductFormBloc>()
                                                        .add(
                                                          ProductFormEvent
                                                              .subProductImage(
                                                            ImageProperties
                                                                .empty(),
                                                          ),
                                                        );
                                                  },
                                                  child: Icon(
                                                    Icons.delete,
                                                    color: Colors.white,
                                                    size: ScreenUtil()
                                                        .setHeight(
                                                            screenHeight / 30)
                                                        .toDouble(),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                  SizedBox(
                                    height: .02.hp.toDouble(),
                                  ),
                                  SizedBox(
                                    height: 0.07.hp.toDouble(),
                                    child: Material(
                                      elevation: 10,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.vertical(
                                              bottom: Radius.circular(
                                                  ScreenUtil()
                                                      .setWidth(20)
                                                      .toDouble()))),
                                      clipBehavior: Clip.hardEdge,
                                      child: Ink(
                                        width: 0.9.wp.toDouble(),
                                        decoration: BoxDecoration(
                                            color: Colors.deepPurpleAccent
                                                .withOpacity(0.8),
                                            border: Border.all(
                                                color: Colors.transparent)),
                                        child: InkWell(
                                          onTap: () {
                                            //submitSubProduct();
                                          },
                                          child: Center(
                                            child: Icon(
                                              Icons.check,
                                              color: Colors.white,
                                              size: 0.05.hp.toDouble(),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
