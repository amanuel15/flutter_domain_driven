import 'package:finished_notes_firebase_ddd_course/application/product/product_form/product_form_bloc.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/misc/lables_item_presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/misc/build_context_x.dart';

class LabelsFormWidget extends HookWidget {
  const LabelsFormWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    List<TextEditingController> labelControllers = [
      TextEditingController(),
      TextEditingController(),
      TextEditingController(),
      TextEditingController(),
      TextEditingController(),
      TextEditingController(),
    ];
    return BlocBuilder<ProductFormBloc, ProductFormState>(
      condition: (p, c) =>
          p.selectedLabels != c.selectedLabels ||
          p.labelsChanged != c.labelsChanged,
      builder: (context, state) {
        return Consumer<FormLabels>(
          builder: (context, formLabels, child) {
            return Form(
              autovalidate: true,
              child: context.formLabels.isEmpty
                  ? Container()
                  : Container(
                      padding: EdgeInsets.fromLTRB(
                        ScreenUtil().setWidth(15).toDouble(),
                        ScreenUtil().setWidth(5).toDouble(),
                        ScreenUtil().setWidth(15).toDouble(),
                        ScreenUtil().setWidth(10).toDouble(),
                      ),
                      color: Colors.grey.withOpacity(0.2),
                      child: Column(
                        children: <Widget>[
                          const Text(
                            'Labels',
                            style: TextStyle(
                              color: Colors.deepPurpleAccent,
                            ),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(10).toDouble(),
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
                                final int index =
                                    context.formLabels.indexOf(label);
                                return TextFormField(
                                  controller: labelControllers[index],
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
                                        .toDouble(),
                                  ),
                                  decoration: InputDecoration(
                                    focusColor: Colors.yellow,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          ScreenUtil().setWidth(10).toDouble(),
                                        ),
                                      ),
                                      borderSide: const BorderSide(
                                        color: Colors.deepPurpleAccent,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          ScreenUtil().setWidth(5).toDouble(),
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
                                          .setSp(14, allowFontScalingSelf: true)
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
                        ],
                      ),
                    ),
            );
          },
        );
      },
    );
  }
}
