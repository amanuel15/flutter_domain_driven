import 'package:finished_notes_firebase_ddd_course/application/product/product_form/product_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tags/flutter_tags.dart';

class LableWidget extends StatefulWidget {
  LableWidget({Key key}) : super(key: key);

  @override
  _LableWidgetState createState() => _LableWidgetState();
}

class _LableWidgetState extends State<LableWidget> {
  final List<String> _items = [
    'and',
    'is',
    'are',
    'but',
    'where',
    'resolution',
    'refresh rate',
    'color',
    'size'
  ];
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return BlocConsumer<ProductFormBloc, ProductFormState>(
      listener: (context, state) {
        //
      },
      builder: (context, state) {
        return Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(
                  0.01.hp.toDouble(), 0, 0.01.hp.toDouble(), 0),
              child: Tags(
                key: _tagStateKey,
                // textField: TagsTextField(
                //   textStyle: TextStyle(fontSize: 14),
                //   constraintSuggestion: true,
                //   suggestions: ['aman', 'deathrow', 'sibhat', 'xerzere'],
                //   onSubmitted: (String str) {
                //     setState(() {
                //       _items.add(str);
                //     });
                //   },
                // ),
                itemCount: _items.length,
                itemBuilder: (index) {
                  final item = _items[index];
                  return ItemTags(
                    key: Key(index.toString()),
                    index: index,
                    title: item,
                    activeColor: Colors.red,
                    color: Colors.red,
                    highlightColor: Colors.blue,
                    textColor: Colors.amber,
                    combine: ItemTagsCombine.withTextBefore,
                    removeButton: ItemTagsRemoveButton(
                      onRemoved: () {
                        setState(() {
                          _items.removeAt(index);
                        });
                        return true;
                      },
                    ),
                    onPressed: (item) => print(item),
                    onLongPressed: (item) => print(item),
                  );
                },
              ),
            ),
            SizedBox(
              height: 0.02.hp.toDouble(),
            ),
            Material(
              elevation: 15,
              type: MaterialType.card,
              color: const Color(0xFFF10F43),
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    child: Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 0.0,
                      //backgroundColor: Colors.transparent,
                      child: dialogTags(context),
                    ),
                  );
                },
                child: SizedBox(
                    width: 0.92.wp.toDouble(),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 0.05.hp.toDouble(),
                    )),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget dialogTags(BuildContext context) {
    print('dialog!!!');
    return Container(
      height: 400,
      width: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Tags(
              key: _dialogTagStateKey,
              itemCount: _items.length,
              columns: 3,
              itemBuilder: (index) {
                final item = _items[index];
                return ItemTags(
                  key: Key(index.toString()),
                  index: index,
                  title: item,
                  combine: ItemTagsCombine.withTextBefore,
                  onPressed: (item) => print(item),
                  onLongPressed: (item) => print(item),
                );
              },
            ),
          ),
          Spacer(),
          FlatButton(
            child: Text('OK!'),
            onPressed: () {
              Navigator.pop(context, true);
            },
          )
        ],
      ),
    );
  }
}

// class LableWidget extends HookWidget {
//   const LableWidget({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<ProductFormBloc, ProductFormState>(
//       listener: (context, state) {
//         //
//       },
//       builder: (context, state) {
//         Container();
//         return Row(
//           children: <Widget>[
//             Container(
//               child: Tags(
//                 key: key,
//                 textField: TagsTextField(
//                   textStyle: TextStyle(fontSize: 14),
//                   constraintSuggestion: true,
//                   suggestions: ['aman', 'deathrow', 'sibhat', 'xerzere'],
//                   onSubmitted: (String str) {},
//                 ),
//                 itemCount: ,
//                 itemBuilder: (index) {
//                   return ItemTags(
//                     key: Key(index.toString()),
//                     index: index,
//                     title: null,
//                     combine: ItemTagsCombine.withTextBefore,
//                     icon: ItemTagsIcon(
//                       icon: Icons.add,
//                     ),
//                     removeButton: ItemTagsRemoveButton(
//                       onRemoved: (){
//                           // Remove the item from the data source.
//                           setState(() {
//                               // required
//                               _items.removeAt(index);
//                           });
//                           //required
//                           return true;
//                       },
//                     ), // OR null,
//                     onPressed: (item) => print(item),
//                     onLongPressed: (item) => print(item),
//                   );
//                 },
//               ),
//             ),
//             Material(
//               elevation: 15,
//               type: MaterialType.card,
//               color: const Color(0xFFF10F43),
//               child: InkWell(
//                 onTap: () {},
//                 child: SizedBox(
//                   width: 0.92.wp.toDouble(),
//                   child: Icon(
//                     Icons.add,
//                     color: Colors.white,
//                     size: 0.05.hp.toDouble(),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }

final GlobalKey<TagsState> _tagStateKey = GlobalKey<TagsState>();
// Allows you to get a list of all the ItemTags
_getAllItem() {
  List<Item> lst = _tagStateKey.currentState?.getAllItem;
  if (lst != null)
    lst.where((a) => a.active == true).forEach((a) => print(a.title));
}

final GlobalKey<TagsState> _dialogTagStateKey = GlobalKey<TagsState>();
