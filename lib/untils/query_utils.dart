//
// class QueryUtils{
//   static String buildQuery(QueryExpression pathOrqueryExpression){
//     String odataQuery = '';
//
//       if (pathOrqueryExpression.entitySet!=null) {
//         odataQuery = "${pathOrqueryExpression.entitySet}?";
//     } else {
//     odataQuery = '?';
//     }
//
//     // $countyy
//     if (pathOrqueryExpression.isCount) {
//     odataQuery = "${odataQuery}&\$count=true";
//     }
//
//     // $filter
//     if (pathOrqueryExpression.filter!=null) {
//     odataQuery = "${odataQuery}&\$filter=${pathOrqueryExpression.filter}";
//     }
//
//     // $expand
//     if (pathOrqueryExpression.expand!=null && pathOrqueryExpression.expand.length > 0) {
//     odataQuery = "${odataQuery}&\$expand=${pathOrqueryExpression.expand.join(',')}";
//     }
//
//     // $select
//     if (pathOrqueryExpression.select!=null && pathOrqueryExpression.select.length > 0) {
//     odataQuery = "${odataQuery}&\$select=${pathOrqueryExpression.select.join(',')}";
//     }
//
//     // $skip
//     if (pathOrqueryExpression.skip!=null) {
//     odataQuery = "${odataQuery}&\$skip=${pathOrqueryExpression.skip}";
//     }
//
//     // $top
//     if (pathOrqueryExpression.top!=null) {
//     odataQuery = "${odataQuery}&\$top=${pathOrqueryExpression.top}";
//     }
//
//     // // $count
//     // if (pathOrqueryExpression.Count) {
//     //     odataQuery = `${odataQuery}&$count=${pathOrqueryExpression.Count}`;
//     // }
//
//     // $orderby
//   if (pathOrqueryExpression.orderBy !=null && pathOrqueryExpression.orderBy.length > 0) {
//     odataQuery = "${odataQuery}&\$orderby=${pathOrqueryExpression.orderBy.join(',')}";
//     }
//
//     if (odataQuery.endsWith('?')) {
//     odataQuery = odataQuery.replaceAll('?', '');
//     } else {
//     odataQuery = odataQuery.replaceAll('?&', '?');
//     }
//     return odataQuery;
//   }
//
// }
