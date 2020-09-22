import 'package:cloud_firestore/cloud_firestore.dart';

Query queryBuilder({
  // Imagine conditions as list of lists with 3 elements ['price', '==', '45']
  List<List<String>> conditions,
  List<String> orderBys,
  int limit = 7,
}) {
  final CollectionReference productRef =
      Firestore.instance.collection('products');
  final List<String> wheres = [
    'isEqualTo',
    'isLessThan',
    'isLessThanOrEqualTo',
    'isGreaterThan',
    'isGreaterThanOrEqualTo',
    'arrayContains',
    'arrayContainsAny',
    'whereIn',
    'isNull',
  ];
  int condLength = conditions == null ? 0 : conditions.length;
  int ordeLength = orderBys == null ? 0 : orderBys.length;
  switch (condLength) {
    case 0: // no conditions requested
      {
        switch (ordeLength) {
          case 0:
            {
              return productRef.limit(limit);
            }
            break;
          case 1:
            {
              return productRef.orderBy(orderBys[0]).limit(limit);
            }
            break;
          case 2:
            {
              return productRef
                  .orderBy(orderBys[0])
                  .orderBy(orderBys[1])
                  .limit(limit);
            }
            break;
        }
      }
      break;
    case 1: // one condition requested
      {
        switch (conditions[0][1]) {
          case 'isEqualTo':
            {
              switch (ordeLength) {
                case 0:
                  {
                    return productRef
                        .where(conditions[0][0], isEqualTo: conditions[0][2])
                        .limit(limit);
                  }
                  break;
                case 1:
                  {
                    return productRef
                        .where(conditions[0][0], isEqualTo: conditions[0][2])
                        .orderBy(orderBys[0])
                        .limit(limit);
                  }
                  break;
                case 2:
                  {
                    return productRef
                        .where(conditions[0][0], isEqualTo: conditions[0][2])
                        .orderBy(orderBys[0])
                        .orderBy(orderBys[1])
                        .limit(limit);
                  }
                  break;
              }
            }
            break;
          case 'isLessThan':
            {
              switch (ordeLength) {
                case 0:
                  {
                    return productRef
                        .where(conditions[0][0], isLessThan: conditions[0][2])
                        .limit(limit);
                  }
                  break;
                case 1:
                  {
                    return productRef
                        .where(conditions[0][0], isLessThan: conditions[0][2])
                        .orderBy(orderBys[0])
                        .limit(limit);
                  }
                  break;
                case 2:
                  {
                    return productRef
                        .where(conditions[0][0], isLessThan: conditions[0][2])
                        .orderBy(orderBys[0])
                        .orderBy(orderBys[1])
                        .limit(limit);
                  }
                  break;
              }
            }
            break;
          case 'isLessThanOrEqualTo':
            {
              switch (ordeLength) {
                case 0:
                  {
                    return productRef
                        .where(conditions[0][0],
                            isLessThanOrEqualTo: conditions[0][2])
                        .limit(limit);
                  }
                  break;
                case 1:
                  {
                    return productRef
                        .where(conditions[0][0],
                            isLessThanOrEqualTo: conditions[0][2])
                        .orderBy(orderBys[0])
                        .limit(limit);
                  }
                  break;
                case 2:
                  {
                    return productRef
                        .where(conditions[0][0],
                            isLessThanOrEqualTo: conditions[0][2])
                        .orderBy(orderBys[0])
                        .orderBy(orderBys[1])
                        .limit(limit);
                  }
                  break;
              }
            }
            break;
          case 'isGreaterThan':
            {
              switch (ordeLength) {
                case 0:
                  {
                    return productRef
                        .where(conditions[0][0],
                            isGreaterThan: conditions[0][2])
                        .limit(limit);
                  }
                  break;
                case 1:
                  {
                    return productRef
                        .where(conditions[0][0],
                            isGreaterThan: conditions[0][2])
                        .orderBy(orderBys[0])
                        .limit(limit);
                  }
                  break;
                case 2:
                  {
                    return productRef
                        .where(conditions[0][0],
                            isGreaterThan: conditions[0][2])
                        .orderBy(orderBys[0])
                        .orderBy(orderBys[1])
                        .limit(limit);
                  }
                  break;
              }
            }
            break;
          case 'isGreaterThanOrEqualTo':
            {
              //
            }
            break;
          case 'arrayContains':
            {
              //
            }
            break;
          case 'arrayContainsAny':
            {
              //
            }
            break;
          case 'whereIn':
            {
              //
            }
            break;
          case 'isNull':
            {
              //
            }
            break;
        }
      }
      break;
    case 2: // two conditions requested
      {
        switch (conditions[0][1]) {
          case 'isEqualTo':
            {
              switch (conditions[1][1]) {
                case 'isEqualTo':
                  {
                    switch (ordeLength) {
                      case 0:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isEqualTo: conditions[0][2])
                              .where(conditions[1][0],
                                  isEqualTo: conditions[1][2])
                              .limit(limit);
                        }
                        break;
                      case 1:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isEqualTo: conditions[0][2])
                              .where(conditions[1][0],
                                  isEqualTo: conditions[1][2])
                              .orderBy(orderBys[0])
                              .limit(limit);
                        }
                        break;
                      case 2:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isEqualTo: conditions[0][2])
                              .where(conditions[1][0],
                                  isEqualTo: conditions[1][2])
                              .orderBy(orderBys[0])
                              .orderBy(orderBys[1])
                              .limit(limit);
                        }
                        break;
                    }
                  }
                  break;
                case 'isLessThan':
                  {
                    switch (ordeLength) {
                      case 0:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isEqualTo: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThan: conditions[1][2])
                              .limit(limit);
                        }
                        break;
                      case 1:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isEqualTo: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThan: conditions[1][2])
                              .orderBy(orderBys[0])
                              .limit(limit);
                        }
                        break;
                      case 2:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isEqualTo: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThan: conditions[1][2])
                              .orderBy(orderBys[0])
                              .orderBy(orderBys[1])
                              .limit(limit);
                        }
                        break;
                    }
                  }
                  break;
                case 'isLessThanOrEqualTo':
                  {
                    switch (ordeLength) {
                      case 0:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isEqualTo: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThanOrEqualTo: conditions[1][2])
                              .limit(limit);
                        }
                        break;
                      case 1:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isEqualTo: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThanOrEqualTo: conditions[1][2])
                              .orderBy(orderBys[0])
                              .limit(limit);
                        }
                        break;
                      case 2:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isEqualTo: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThanOrEqualTo: conditions[1][2])
                              .orderBy(orderBys[0])
                              .orderBy(orderBys[1])
                              .limit(limit);
                        }
                        break;
                    }
                  }
                  break;
                case 'isGreaterThan':
                  {
                    switch (ordeLength) {
                      case 0:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isEqualTo: conditions[0][2])
                              .where(conditions[1][0],
                                  isGreaterThan: conditions[1][2])
                              .limit(limit);
                        }
                        break;
                      case 1:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isEqualTo: conditions[0][2])
                              .where(conditions[1][0],
                                  isGreaterThan: conditions[1][2])
                              .orderBy(orderBys[0])
                              .limit(limit);
                        }
                        break;
                      case 2:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isEqualTo: conditions[0][2])
                              .where(conditions[1][0],
                                  isGreaterThan: conditions[1][2])
                              .orderBy(orderBys[0])
                              .orderBy(orderBys[1])
                              .limit(limit);
                        }
                        break;
                    }
                  }
                  break;
                case 'isGreaterThanOrEqualTo':
                  {
                    //
                  }
                  break;
                case 'arrayContains':
                  {
                    //
                  }
                  break;
                case 'arrayContainsAny':
                  {
                    //
                  }
                  break;
                case 'whereIn':
                  {
                    //
                  }
                  break;
                case 'isNull':
                  {
                    //
                  }
                  break;
              }
            }
            break;
          case 'isLessThan':
            {
              switch (conditions[1][1]) {
                case 'isEqualTo':
                  {
                    switch (ordeLength) {
                      case 0:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isEqualTo: conditions[1][2])
                              .limit(limit);
                        }
                        break;
                      case 1:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isEqualTo: conditions[1][2])
                              .orderBy(orderBys[0])
                              .limit(limit);
                        }
                        break;
                      case 2:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isEqualTo: conditions[1][2])
                              .orderBy(orderBys[0])
                              .orderBy(orderBys[1])
                              .limit(limit);
                        }
                        break;
                    }
                  }
                  break;
                case 'isLessThan':
                  {
                    switch (ordeLength) {
                      case 0:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThan: conditions[1][2])
                              .limit(limit);
                        }
                        break;
                      case 1:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThan: conditions[1][2])
                              .orderBy(orderBys[0])
                              .limit(limit);
                        }
                        break;
                      case 2:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThan: conditions[1][2])
                              .orderBy(orderBys[0])
                              .orderBy(orderBys[1])
                              .limit(limit);
                        }
                        break;
                    }
                  }
                  break;
                case 'isLessThanOrEqualTo':
                  {
                    switch (ordeLength) {
                      case 0:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThanOrEqualTo: conditions[1][2])
                              .limit(limit);
                        }
                        break;
                      case 1:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThanOrEqualTo: conditions[1][2])
                              .orderBy(orderBys[0])
                              .limit(limit);
                        }
                        break;
                      case 2:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThanOrEqualTo: conditions[1][2])
                              .orderBy(orderBys[0])
                              .orderBy(orderBys[1])
                              .limit(limit);
                        }
                        break;
                    }
                  }
                  break;
                case 'isGreaterThan':
                  {
                    switch (ordeLength) {
                      case 0:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isGreaterThan: conditions[1][2])
                              .limit(limit);
                        }
                        break;
                      case 1:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isGreaterThan: conditions[1][2])
                              .orderBy(orderBys[0])
                              .limit(limit);
                        }
                        break;
                      case 2:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isGreaterThan: conditions[1][2])
                              .orderBy(orderBys[0])
                              .orderBy(orderBys[1])
                              .limit(limit);
                        }
                        break;
                    }
                  }
                  break;
                case 'isGreaterThanOrEqualTo':
                  {
                    //
                  }
                  break;
                case 'arrayContains':
                  {
                    //
                  }
                  break;
                case 'arrayContainsAny':
                  {
                    //
                  }
                  break;
                case 'whereIn':
                  {
                    //
                  }
                  break;
                case 'isNull':
                  {
                    //
                  }
                  break;
              }
            }
            break;
          case 'isLessThanOrEqualTo':
            {
              switch (conditions[1][1]) {
                case 'isEqualTo':
                  {
                    switch (ordeLength) {
                      case 0:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThanOrEqualTo: conditions[0][2])
                              .where(conditions[1][0],
                                  isEqualTo: conditions[1][2])
                              .limit(limit);
                        }
                        break;
                      case 1:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThanOrEqualTo: conditions[0][2])
                              .where(conditions[1][0],
                                  isEqualTo: conditions[1][2])
                              .orderBy(orderBys[0])
                              .limit(limit);
                        }
                        break;
                      case 2:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThanOrEqualTo: conditions[0][2])
                              .where(conditions[1][0],
                                  isEqualTo: conditions[1][2])
                              .orderBy(orderBys[0])
                              .orderBy(orderBys[1])
                              .limit(limit);
                        }
                        break;
                    }
                  }
                  break;
                case 'isLessThan':
                  {
                    switch (ordeLength) {
                      case 0:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThanOrEqualTo: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThan: conditions[1][2])
                              .limit(limit);
                        }
                        break;
                      case 1:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThanOrEqualTo: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThan: conditions[1][2])
                              .orderBy(orderBys[0])
                              .limit(limit);
                        }
                        break;
                      case 2:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThanOrEqualTo: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThan: conditions[1][2])
                              .orderBy(orderBys[0])
                              .orderBy(orderBys[1])
                              .limit(limit);
                        }
                        break;
                    }
                  }
                  break;
                case 'isLessThanOrEqualTo':
                  {
                    switch (ordeLength) {
                      case 0:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThanOrEqualTo: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThanOrEqualTo: conditions[1][2])
                              .limit(limit);
                        }
                        break;
                      case 1:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThanOrEqualTo: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThanOrEqualTo: conditions[1][2])
                              .orderBy(orderBys[0])
                              .limit(limit);
                        }
                        break;
                      case 2:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThanOrEqualTo: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThanOrEqualTo: conditions[1][2])
                              .orderBy(orderBys[0])
                              .orderBy(orderBys[1])
                              .limit(limit);
                        }
                        break;
                    }
                  }
                  break;
                case 'isGreaterThan':
                  {
                    switch (ordeLength) {
                      case 0:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThanOrEqualTo: conditions[0][2])
                              .where(conditions[1][0],
                                  isGreaterThan: conditions[1][2])
                              .limit(limit);
                        }
                        break;
                      case 1:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThanOrEqualTo: conditions[0][2])
                              .where(conditions[1][0],
                                  isGreaterThan: conditions[1][2])
                              .orderBy(orderBys[0])
                              .limit(limit);
                        }
                        break;
                      case 2:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThanOrEqualTo: conditions[0][2])
                              .where(conditions[1][0],
                                  isGreaterThan: conditions[1][2])
                              .orderBy(orderBys[0])
                              .orderBy(orderBys[1])
                              .limit(limit);
                        }
                        break;
                    }
                  }
                  break;
                case 'isGreaterThanOrEqualTo':
                  {
                    //
                  }
                  break;
                case 'arrayContains':
                  {
                    //
                  }
                  break;
                case 'arrayContainsAny':
                  {
                    //
                  }
                  break;
                case 'whereIn':
                  {
                    //
                  }
                  break;
                case 'isNull':
                  {
                    //
                  }
                  break;
              }
            }
            break;
          case 'isGreaterThan':
            {
              switch (conditions[1][1]) {
                case 'isEqualTo':
                  {
                    switch (ordeLength) {
                      case 0:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isGreaterThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isEqualTo: conditions[1][2])
                              .limit(limit);
                        }
                        break;
                      case 1:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isGreaterThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isEqualTo: conditions[1][2])
                              .orderBy(orderBys[0])
                              .limit(limit);
                        }
                        break;
                      case 2:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isGreaterThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isEqualTo: conditions[1][2])
                              .orderBy(orderBys[0])
                              .orderBy(orderBys[1])
                              .limit(limit);
                        }
                        break;
                    }
                  }
                  break;
                case 'isLessThan':
                  {
                    switch (ordeLength) {
                      case 0:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isGreaterThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThan: conditions[1][2])
                              .limit(limit);
                        }
                        break;
                      case 1:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isGreaterThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThan: conditions[1][2])
                              .orderBy(orderBys[0])
                              .limit(limit);
                        }
                        break;
                      case 2:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isGreaterThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThan: conditions[1][2])
                              .orderBy(orderBys[0])
                              .orderBy(orderBys[1])
                              .limit(limit);
                        }
                        break;
                    }
                  }
                  break;
                case 'isLessThanOrEqualTo':
                  {
                    switch (ordeLength) {
                      case 0:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isGreaterThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThanOrEqualTo: conditions[1][2])
                              .limit(limit);
                        }
                        break;
                      case 1:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isGreaterThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThanOrEqualTo: conditions[1][2])
                              .orderBy(orderBys[0])
                              .limit(limit);
                        }
                        break;
                      case 2:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isGreaterThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThanOrEqualTo: conditions[1][2])
                              .orderBy(orderBys[0])
                              .orderBy(orderBys[1])
                              .limit(limit);
                        }
                        break;
                    }
                  }
                  break;
                case 'isGreaterThan':
                  {
                    switch (ordeLength) {
                      case 0:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isGreaterThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isGreaterThan: conditions[1][2])
                              .limit(limit);
                        }
                        break;
                      case 1:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isGreaterThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isGreaterThan: conditions[1][2])
                              .orderBy(orderBys[0])
                              .limit(limit);
                        }
                        break;
                      case 2:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isGreaterThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isGreaterThan: conditions[1][2])
                              .orderBy(orderBys[0])
                              .orderBy(orderBys[1])
                              .limit(limit);
                        }
                        break;
                    }
                  }
                  break;
                case 'isGreaterThanOrEqualTo':
                  {
                    //
                  }
                  break;
                case 'arrayContains':
                  {
                    //
                  }
                  break;
                case 'arrayContainsAny':
                  {
                    //
                  }
                  break;
                case 'whereIn':
                  {
                    //
                  }
                  break;
                case 'isNull':
                  {
                    //
                  }
                  break;
              }
            }
            break;
          case 'isGreaterThanOrEqualTo':
            {
              switch (conditions[1][1]) {
                case 'isEqualTo':
                  {
                    switch (ordeLength) {
                      case 0:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isGreaterThanOrEqualTo: conditions[0][2])
                              .where(conditions[1][0],
                                  isEqualTo: conditions[1][2])
                              .limit(limit);
                        }
                        break;
                      case 1:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isGreaterThanOrEqualTo: conditions[0][2])
                              .where(conditions[1][0],
                                  isEqualTo: conditions[1][2])
                              .orderBy(orderBys[0])
                              .limit(limit);
                        }
                        break;
                      case 2:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isGreaterThanOrEqualTo: conditions[0][2])
                              .where(conditions[1][0],
                                  isEqualTo: conditions[1][2])
                              .orderBy(orderBys[0])
                              .orderBy(orderBys[1])
                              .limit(limit);
                        }
                        break;
                    }
                  }
                  break;
                case 'isLessThan':
                  {
                    switch (ordeLength) {
                      case 0:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isGreaterThanOrEqualTo: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThan: conditions[1][2])
                              .limit(limit);
                        }
                        break;
                      case 1:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isGreaterThanOrEqualTo: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThan: conditions[1][2])
                              .orderBy(orderBys[0])
                              .limit(limit);
                        }
                        break;
                      case 2:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isGreaterThanOrEqualTo: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThan: conditions[1][2])
                              .orderBy(orderBys[0])
                              .orderBy(orderBys[1])
                              .limit(limit);
                        }
                        break;
                    }
                  }
                  break;
                case 'isLessThanOrEqualTo':
                  {
                    switch (ordeLength) {
                      case 0:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isGreaterThanOrEqualTo: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThanOrEqualTo: conditions[1][2])
                              .limit(limit);
                        }
                        break;
                      case 1:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isGreaterThanOrEqualTo: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThanOrEqualTo: conditions[1][2])
                              .orderBy(orderBys[0])
                              .limit(limit);
                        }
                        break;
                      case 2:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isGreaterThanOrEqualTo: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThanOrEqualTo: conditions[1][2])
                              .orderBy(orderBys[0])
                              .orderBy(orderBys[1])
                              .limit(limit);
                        }
                        break;
                    }
                  }
                  break;
                case 'isGreaterThan':
                  {
                    switch (ordeLength) {
                      case 0:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isGreaterThanOrEqualTo: conditions[0][2])
                              .where(conditions[1][0],
                                  isGreaterThan: conditions[1][2])
                              .limit(limit);
                        }
                        break;
                      case 1:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isGreaterThanOrEqualTo: conditions[0][2])
                              .where(conditions[1][0],
                                  isGreaterThan: conditions[1][2])
                              .orderBy(orderBys[0])
                              .limit(limit);
                        }
                        break;
                      case 2:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isGreaterThanOrEqualTo: conditions[0][2])
                              .where(conditions[1][0],
                                  isGreaterThan: conditions[1][2])
                              .orderBy(orderBys[0])
                              .orderBy(orderBys[1])
                              .limit(limit);
                        }
                        break;
                    }
                  }
                  break;
                case 'isGreaterThanOrEqualTo':
                  {
                    //
                  }
                  break;
                case 'arrayContains':
                  {
                    //
                  }
                  break;
                case 'arrayContainsAny':
                  {
                    //
                  }
                  break;
                case 'whereIn':
                  {
                    //
                  }
                  break;
                case 'isNull':
                  {
                    //
                  }
                  break;
              }
            }
            break;
          case 'arrayContains':
            {
              switch (conditions[1][1]) {
                case 'isEqualTo':
                  {
                    switch (ordeLength) {
                      case 0:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  arrayContains: conditions[0][2])
                              .where(conditions[1][0],
                                  isEqualTo: conditions[1][2])
                              .limit(limit);
                        }
                        break;
                      case 1:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  arrayContains: conditions[0][2])
                              .where(conditions[1][0],
                                  isEqualTo: conditions[1][2])
                              .orderBy(orderBys[0])
                              .limit(limit);
                        }
                        break;
                      case 2:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  arrayContains: conditions[0][2])
                              .where(conditions[1][0],
                                  isEqualTo: conditions[1][2])
                              .orderBy(orderBys[0])
                              .orderBy(orderBys[1])
                              .limit(limit);
                        }
                        break;
                    }
                  }
                  break;
                case 'isLessThan':
                  {
                    switch (ordeLength) {
                      case 0:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  arrayContains: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThan: conditions[1][2])
                              .limit(limit);
                        }
                        break;
                      case 1:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  arrayContains: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThan: conditions[1][2])
                              .orderBy(orderBys[0])
                              .limit(limit);
                        }
                        break;
                      case 2:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  arrayContains: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThan: conditions[1][2])
                              .orderBy(orderBys[0])
                              .orderBy(orderBys[1])
                              .limit(limit);
                        }
                        break;
                    }
                  }
                  break;
                case 'isLessThanOrEqualTo':
                  {
                    switch (ordeLength) {
                      case 0:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  arrayContains: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThanOrEqualTo: conditions[1][2])
                              .limit(limit);
                        }
                        break;
                      case 1:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  arrayContains: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThanOrEqualTo: conditions[1][2])
                              .orderBy(orderBys[0])
                              .limit(limit);
                        }
                        break;
                      case 2:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  arrayContains: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThanOrEqualTo: conditions[1][2])
                              .orderBy(orderBys[0])
                              .orderBy(orderBys[1])
                              .limit(limit);
                        }
                        break;
                    }
                  }
                  break;
                case 'isGreaterThan':
                  {
                    switch (ordeLength) {
                      case 0:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  arrayContains: conditions[0][2])
                              .where(conditions[1][0],
                                  isGreaterThan: conditions[1][2])
                              .limit(limit);
                        }
                        break;
                      case 1:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  arrayContains: conditions[0][2])
                              .where(conditions[1][0],
                                  isGreaterThan: conditions[1][2])
                              .orderBy(orderBys[0])
                              .limit(limit);
                        }
                        break;
                      case 2:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  arrayContains: conditions[0][2])
                              .where(conditions[1][0],
                                  isGreaterThan: conditions[1][2])
                              .orderBy(orderBys[0])
                              .orderBy(orderBys[1])
                              .limit(limit);
                        }
                        break;
                    }
                  }
                  break;
                case 'isGreaterThanOrEqualTo':
                  {
                    //
                  }
                  break;
                case 'arrayContains':
                  {
                    //
                  }
                  break;
                case 'arrayContainsAny':
                  {
                    //
                  }
                  break;
                case 'whereIn':
                  {
                    //
                  }
                  break;
                case 'isNull':
                  {
                    //
                  }
                  break;
              }
            }
            break;
          case 'arrayContainsAny':
            {
              switch (conditions[1][1]) {
                case 'isEqualTo':
                  {
                    switch (ordeLength) {
                      case 0:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isEqualTo: conditions[1][2])
                              .limit(limit);
                        }
                        break;
                      case 1:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isEqualTo: conditions[1][2])
                              .orderBy(orderBys[0])
                              .limit(limit);
                        }
                        break;
                      case 2:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isEqualTo: conditions[1][2])
                              .orderBy(orderBys[0])
                              .orderBy(orderBys[1])
                              .limit(limit);
                        }
                        break;
                    }
                  }
                  break;
                case 'isLessThan':
                  {
                    switch (ordeLength) {
                      case 0:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThan: conditions[1][2])
                              .limit(limit);
                        }
                        break;
                      case 1:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThan: conditions[1][2])
                              .orderBy(orderBys[0])
                              .limit(limit);
                        }
                        break;
                      case 2:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThan: conditions[1][2])
                              .orderBy(orderBys[0])
                              .orderBy(orderBys[1])
                              .limit(limit);
                        }
                        break;
                    }
                  }
                  break;
                case 'isLessThanOrEqualTo':
                  {
                    switch (ordeLength) {
                      case 0:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThanOrEqualTo: conditions[1][2])
                              .limit(limit);
                        }
                        break;
                      case 1:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThanOrEqualTo: conditions[1][2])
                              .orderBy(orderBys[0])
                              .limit(limit);
                        }
                        break;
                      case 2:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThanOrEqualTo: conditions[1][2])
                              .orderBy(orderBys[0])
                              .orderBy(orderBys[1])
                              .limit(limit);
                        }
                        break;
                    }
                  }
                  break;
                case 'isGreaterThan':
                  {
                    switch (ordeLength) {
                      case 0:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isGreaterThan: conditions[1][2])
                              .limit(limit);
                        }
                        break;
                      case 1:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isGreaterThan: conditions[1][2])
                              .orderBy(orderBys[0])
                              .limit(limit);
                        }
                        break;
                      case 2:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isGreaterThan: conditions[1][2])
                              .orderBy(orderBys[0])
                              .orderBy(orderBys[1])
                              .limit(limit);
                        }
                        break;
                    }
                  }
                  break;
                case 'isGreaterThanOrEqualTo':
                  {
                    //
                  }
                  break;
                case 'arrayContains':
                  {
                    //
                  }
                  break;
                case 'arrayContainsAny':
                  {
                    //
                  }
                  break;
                case 'whereIn':
                  {
                    //
                  }
                  break;
                case 'isNull':
                  {
                    //
                  }
                  break;
              }
            }
            break;
          case 'whereIn':
            {
              switch (conditions[1][1]) {
                case 'isEqualTo':
                  {
                    switch (ordeLength) {
                      case 0:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isEqualTo: conditions[1][2])
                              .limit(limit);
                        }
                        break;
                      case 1:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isEqualTo: conditions[1][2])
                              .orderBy(orderBys[0])
                              .limit(limit);
                        }
                        break;
                      case 2:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isEqualTo: conditions[1][2])
                              .orderBy(orderBys[0])
                              .orderBy(orderBys[1])
                              .limit(limit);
                        }
                        break;
                    }
                  }
                  break;
                case 'isLessThan':
                  {
                    switch (ordeLength) {
                      case 0:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThan: conditions[1][2])
                              .limit(limit);
                        }
                        break;
                      case 1:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThan: conditions[1][2])
                              .orderBy(orderBys[0])
                              .limit(limit);
                        }
                        break;
                      case 2:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThan: conditions[1][2])
                              .orderBy(orderBys[0])
                              .orderBy(orderBys[1])
                              .limit(limit);
                        }
                        break;
                    }
                  }
                  break;
                case 'isLessThanOrEqualTo':
                  {
                    switch (ordeLength) {
                      case 0:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThanOrEqualTo: conditions[1][2])
                              .limit(limit);
                        }
                        break;
                      case 1:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThanOrEqualTo: conditions[1][2])
                              .orderBy(orderBys[0])
                              .limit(limit);
                        }
                        break;
                      case 2:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThanOrEqualTo: conditions[1][2])
                              .orderBy(orderBys[0])
                              .orderBy(orderBys[1])
                              .limit(limit);
                        }
                        break;
                    }
                  }
                  break;
                case 'isGreaterThan':
                  {
                    switch (ordeLength) {
                      case 0:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isGreaterThan: conditions[1][2])
                              .limit(limit);
                        }
                        break;
                      case 1:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isGreaterThan: conditions[1][2])
                              .orderBy(orderBys[0])
                              .limit(limit);
                        }
                        break;
                      case 2:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isGreaterThan: conditions[1][2])
                              .orderBy(orderBys[0])
                              .orderBy(orderBys[1])
                              .limit(limit);
                        }
                        break;
                    }
                  }
                  break;
                case 'isGreaterThanOrEqualTo':
                  {
                    //
                  }
                  break;
                case 'arrayContains':
                  {
                    //
                  }
                  break;
                case 'arrayContainsAny':
                  {
                    //
                  }
                  break;
                case 'whereIn':
                  {
                    //
                  }
                  break;
                case 'isNull':
                  {
                    //
                  }
                  break;
              }
            }
            break;
          case 'isNull':
            {
              switch (conditions[1][1]) {
                case 'isEqualTo':
                  {
                    switch (ordeLength) {
                      case 0:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isEqualTo: conditions[1][2])
                              .limit(limit);
                        }
                        break;
                      case 1:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isEqualTo: conditions[1][2])
                              .orderBy(orderBys[0])
                              .limit(limit);
                        }
                        break;
                      case 2:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isEqualTo: conditions[1][2])
                              .orderBy(orderBys[0])
                              .orderBy(orderBys[1])
                              .limit(limit);
                        }
                        break;
                    }
                  }
                  break;
                case 'isLessThan':
                  {
                    switch (ordeLength) {
                      case 0:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThan: conditions[1][2])
                              .limit(limit);
                        }
                        break;
                      case 1:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThan: conditions[1][2])
                              .orderBy(orderBys[0])
                              .limit(limit);
                        }
                        break;
                      case 2:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThan: conditions[1][2])
                              .orderBy(orderBys[0])
                              .orderBy(orderBys[1])
                              .limit(limit);
                        }
                        break;
                    }
                  }
                  break;
                case 'isLessThanOrEqualTo':
                  {
                    switch (ordeLength) {
                      case 0:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThanOrEqualTo: conditions[1][2])
                              .limit(limit);
                        }
                        break;
                      case 1:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThanOrEqualTo: conditions[1][2])
                              .orderBy(orderBys[0])
                              .limit(limit);
                        }
                        break;
                      case 2:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isLessThanOrEqualTo: conditions[1][2])
                              .orderBy(orderBys[0])
                              .orderBy(orderBys[1])
                              .limit(limit);
                        }
                        break;
                    }
                  }
                  break;
                case 'isGreaterThan':
                  {
                    switch (ordeLength) {
                      case 0:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isGreaterThan: conditions[1][2])
                              .limit(limit);
                        }
                        break;
                      case 1:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isGreaterThan: conditions[1][2])
                              .orderBy(orderBys[0])
                              .limit(limit);
                        }
                        break;
                      case 2:
                        {
                          return productRef
                              .where(conditions[0][0],
                                  isLessThan: conditions[0][2])
                              .where(conditions[1][0],
                                  isGreaterThan: conditions[1][2])
                              .orderBy(orderBys[0])
                              .orderBy(orderBys[1])
                              .limit(limit);
                        }
                        break;
                    }
                  }
                  break;
                case 'isGreaterThanOrEqualTo':
                  {
                    //
                  }
                  break;
                case 'arrayContains':
                  {
                    //
                  }
                  break;
                case 'arrayContainsAny':
                  {
                    //
                  }
                  break;
                case 'whereIn':
                  {
                    //
                  }
                  break;
                case 'isNull':
                  {
                    //
                  }
                  break;
              }
            }
            break;
        }
      }
      break;
    default:
      {
        print('switch defaulted ${conditions?.length}');
        return productRef.limit(limit);
      }
      break;
  }

  print('no switch statement fullfilled ${conditions?.length}');
  return productRef.limit(limit);
}
