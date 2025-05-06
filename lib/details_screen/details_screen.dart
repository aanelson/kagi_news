// import 'package:flutter/material.dart';
// import 'package:kagi_news/api/models/category_feed.dart';

// class DetailsScreen extends StatelessWidget {
//   final Clusters cluster;

//   const DetailsScreen({Key? key, required this.cluster}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           cluster.title!,
//         ), // Assuming `title` is a property of `Cluster`
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               cluster
//                   .description, // Assuming `description` is a property of `Cluster`
//               style: Theme.of(context).textTheme.bodyText1,
//             ),
//             const SizedBox(height: 16),
//             Expanded(
//               child: ListView.builder(
//                 itemCount:
//                     cluster
//                         .items
//                         .length, // Assuming `items` is a list in `Cluster`
//                 itemBuilder: (context, index) {
//                   final item = cluster.items[index];
//                   return ListTile(
//                     title: Text(
//                       item.name,
//                     ), // Assuming `name` is a property of each item
//                     subtitle: Text(
//                       item.details,
//                     ), // Assuming `details` is a property of each item
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Navigation example from HomeListTile
// void navigateToDetailsScreen(BuildContext context, Clusters cluster) {
//   Navigator.push(
//     context,
//     MaterialPageRoute(builder: (context) => DetailsScreen(cluster: cluster)),
//   );
// }
