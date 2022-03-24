import 'package:code_magic_test/home/view/details.dart';
import 'package:flutter/material.dart';

import '../models/post.dart';

class PostListItem extends StatelessWidget {
  const PostListItem({Key? key, required this.post}) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Material(
      child: ListTile(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => DetailedPage(
                        post: post,
                      )));
        },
        trailing: Text('${post.quoteCount}', style: textTheme.caption),
        title: Text('${post.name}'),
        isThreeLine: true,
        subtitle: Text('${post.description}'),
        dense: true,
      ),
    );
  }
}
