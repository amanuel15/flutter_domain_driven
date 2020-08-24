import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:finished_notes_firebase_ddd_course/application/product/product_form/product_form_bloc.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/image_properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget createSubproduct(BuildContext context, ProductFormState stateF) {
  final double screenHeight = MediaQuery.of(context).size.height;
  final double screenWidth = MediaQuery.of(context).size.width;

  TextEditingController subProductNameController = TextEditingController();
  TextEditingController subProductPriceController = TextEditingController();
  TextEditingController subProductAmountController = TextEditingController();
  String currentSubProductNameErrorMessage;
  String currentSubProductAmountErrorMessage;
  String currentSubProductPriceErrorMessage;

  return AnimatedPositioned(
    height: ScreenUtil().setHeight(screenHeight * .9).toDouble(),
    left: ScreenUtil().setWidth(screenWidth * 0.03).toDouble(),
    width: ScreenUtil().setWidth(screenWidth * 0.94).toDouble(),
    top: stateF.subCatagoryEditing
        ? screenHeight - (screenHeight * .9)
        : screenHeight,
    duration: const Duration(milliseconds: 500),
    child: FocusScope(
      autofocus: true,
      node: subProductPopUpNode,
      child: Material(
          clipBehavior: Clip.hardEdge,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                  top: Radius.circular(ScreenUtil().setWidth(20).toDouble()))),
          shadowColor: Colors.black,
          elevation: 10,
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    // ignore: prefer_const_literals_to_create_immutables
                    stops: [
                  0,
                  0.25,
                  0.50,
                  0.75
                ],
                    colors: [
                  Color(0xFFCEF1E9),
                  Color(0xFFDFD1AA),
                  Color(0xFFADB9EC),
                  Color(0xFFECB6E1)
                ])),
            child: ListView(
              padding: const EdgeInsets.all(0),
              children: <Widget>[
                InkWell(
                  onTap: () {
                    //cancelSubProductSelection();
                  },
                  child: Card(
                      elevation: 10,
                      color: Colors.deepPurpleAccent,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                        top: Radius.circular(
                            ScreenUtil().setWidth(20).toDouble()),
                      )),
                      child: SizedBox(
                        height: ScreenUtil()
                            .setHeight(screenHeight * 0.06)
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
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            )
                          ],
                        ),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      ScreenUtil().setHeight(screenWidth / 25).toDouble(),
                      0,
                      ScreenUtil().setWidth(screenWidth / 25).toDouble(),
                      0),
                  child: Form(
                    autovalidate: true,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                          height: ScreenUtil()
                              .setHeight(screenHeight * 0.1)
                              .toDouble(),
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
                                    .setSp(20, allowFontScalingSelf: true)
                                    .toDouble()),
                            decoration: InputDecoration(
                                focusColor: Colors.yellow,
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(ScreenUtil()
                                            .setWidth(10)
                                            .toDouble())),
                                    borderSide: const BorderSide(
                                        color: Colors.deepPurpleAccent)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(ScreenUtil()
                                            .setWidth(5)
                                            .toDouble())),
                                    borderSide: const BorderSide(
                                        style: BorderStyle.solid,
                                        color: Colors.blueGrey)),
                                prefixIcon: const Icon(
                                  Icons.edit,
                                  color: Colors.deepPurpleAccent,
                                ),
                                labelStyle: TextStyle(
                                    color: Colors.deepPurpleAccent,
                                    fontWeight: FontWeight.normal,
                                    fontSize: ScreenUtil()
                                        .setSp(14, allowFontScalingSelf: true)
                                        .toDouble()),
                                labelText: 'SubProduct Name'),
                            autocorrect: false,
                            validator: (_) => currentSubProductNameErrorMessage,
                          ),
                        ),
                        SizedBox(
                          height: .02.hp.toDouble(),
                        ),
                        SizedBox(
                          height: ScreenUtil()
                              .setHeight(screenHeight * 0.1)
                              .toDouble(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                width: ScreenUtil()
                                    .setWidth(screenWidth * 0.35)
                                    .toDouble(),
                                child: TextFormField(
                                  controller: subProductPriceController,
                                  onChanged: (value) {
                                    //onSubProductChange();
                                  },
                                  maxLength: 10,
                                  maxLengthEnforced: true,
                                  keyboardType:
                                      const TextInputType.numberWithOptions(
                                          signed: true, decimal: true),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: ScreenUtil()
                                          .setSp(20, allowFontScalingSelf: true)
                                          .toDouble()),
                                  decoration: InputDecoration(
                                      focusColor: Colors.yellow,
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(ScreenUtil()
                                                  .setWidth(10)
                                                  .toDouble())),
                                          borderSide: const BorderSide(
                                              color: Colors.deepPurpleAccent)),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(ScreenUtil()
                                                  .setWidth(5)
                                                  .toDouble())),
                                          borderSide: const BorderSide(
                                              style: BorderStyle.solid,
                                              color: Colors.blueGrey)),
                                      prefixIcon: const Icon(
                                        Icons.attach_money,
                                        color: Colors.deepPurpleAccent,
                                      ),
                                      labelStyle: TextStyle(
                                          color: Colors.deepPurpleAccent,
                                          fontWeight: FontWeight.normal,
                                          fontSize: ScreenUtil()
                                              .setSp(14)
                                              .toDouble()),
                                      labelText: 'SubProduct Price'),
                                  autocorrect: false,
                                  obscureText: false,
                                  validator: (_) =>
                                      currentSubProductPriceErrorMessage,
                                ),
                              ),
                              SizedBox(
                                width: ScreenUtil()
                                    .setWidth(screenWidth * 0.16)
                                    .toDouble(),
                              ),
                              SizedBox(
                                width: ScreenUtil()
                                    .setWidth(screenWidth * 0.35)
                                    .toDouble(),
                                child: TextFormField(
                                  controller: subProductAmountController,
                                  onChanged: (value) {
                                    //onSubProductChange();
                                  },
                                  maxLength: 10,
                                  maxLengthEnforced: true,
                                  keyboardType:
                                      const TextInputType.numberWithOptions(
                                          signed: true),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: ScreenUtil()
                                          .setSp(20, allowFontScalingSelf: true)
                                          .toDouble()),
                                  decoration: InputDecoration(
                                      focusColor: Colors.yellow,
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(ScreenUtil()
                                                  .setWidth(10)
                                                  .toDouble())),
                                          borderSide: const BorderSide(
                                              color: Colors.deepPurpleAccent)),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(ScreenUtil()
                                                  .setWidth(5)
                                                  .toDouble())),
                                          borderSide: const BorderSide(
                                              color: Colors.blueGrey)),
                                      prefixIcon: const Icon(
                                        Icons.add_shopping_cart,
                                        color: Colors.deepPurpleAccent,
                                      ),
                                      labelStyle: TextStyle(
                                          color: Colors.deepPurpleAccent,
                                          fontWeight: FontWeight.normal,
                                          fontSize: ScreenUtil()
                                              .setSp(14)
                                              .toDouble()),
                                      labelText: 'Amount'),
                                  autocorrect: false,
                                  validator: (_) =>
                                      currentSubProductAmountErrorMessage,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: .02.hp.toDouble(),
                        ),
                        SizedBox(
                          height: ScreenUtil()
                              .setHeight(screenHeight * 0.03)
                              .toDouble(),
                          child: Text(
                            selectedImages.isNotEmpty
                                ? !selectedImages
                                        .contains(selectedSubProductImage)
                                    ? 'TAP IMAGE TO SELECT'
                                    : "TAP TRASH ICON TO DESELECT"
                                : "SELECT IMAGES FROM THE IMAGES TAB",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.deepPurpleAccent,
                              fontSize: ScreenUtil()
                                  .setSp(15, allowFontScalingSelf: true)
                                  .toDouble(),
                            ),
                          ),
                        ),
                        !selectedImages.contains(currentSubProductImage
                                .getOrElse(() => ImageProperties(
                                    downloadUrl: "",
                                    image: File.fromUri(Uri(path: "")),
                                    path: "")))
                            ? CarouselSlider(
                                options: CarouselOptions(
                                  aspectRatio: 16 / 9,
                                  height: 0.25.hp.toDouble(),
                                  autoPlay: false,
                                  enlargeCenterPage: true,
                                ),
                                items: selectedImages
                                    .map((item) => Ink(
                                          child: InkWell(
                                            onTap: () {
                                              addImageToSubProduct(item);
                                            },
                                            child: Stack(
                                              overflow: Overflow.clip,
                                              children: <Widget>[
                                                CachedNetworkImage(
                                                  imageUrl: item.downloadUrl,
                                                  width: ScreenUtil()
                                                          .setHeight(
                                                              screenHeight / 4)
                                                          .toDouble() *
                                                      (16 / 9),
                                                  fit: BoxFit.fitHeight,
                                                ),
                                                Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              0, 10.w, 0, 0),
                                                      child: Icon(
                                                        Icons.check,
                                                        color: Colors.white,
                                                        size: ScreenUtil()
                                                            .setHeight(
                                                                screenHeight /
                                                                    25)
                                                            .toDouble(),
                                                      ),
                                                    )),
                                              ],
                                            ),
                                          ),
                                        ))
                                    .toList(),
                              )
                            : Stack(
                                overflow: Overflow.clip,
                                children: <Widget>[
                                  CachedNetworkImage(
                                    imageUrl: currentSubProductImage.fold(
                                        () => "null", (a) => a.downloadUrl),
                                    fit: BoxFit.fitHeight,
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Ink(
                                      padding: EdgeInsets.fromLTRB(
                                          0, 0, 0.04.wp.toDouble(), 0),
                                      child: InkWell(
                                        onTap: () {
                                          //clearSelectedSubProductImage();
                                        },
                                        child: Icon(
                                          Icons.delete,
                                          color: Colors.white,
                                          size: ScreenUtil()
                                              .setHeight(screenHeight / 30)
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
                                        ScreenUtil().setWidth(20).toDouble()))),
                            clipBehavior: Clip.hardEdge,
                            child: Ink(
                                width: 0.9.wp.toDouble(),
                                decoration: BoxDecoration(
                                    color: Colors.deepPurpleAccent
                                        .withOpacity(0.8),
//                          borderRadius: BorderRadius.all(
//                              Radius.circular(ScreenUtil().setWidth(20))),

                                    border:
                                        Border.all(color: Colors.transparent)),
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
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    ),
  );
}
