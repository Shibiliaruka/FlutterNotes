import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:your_notes/style/app_style.dart';

Widget notecard(Function()? onTap, QueryDocumentSnapshot doc) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Appstyle.cardsColor[doc['color_id']],
          borderRadius: BorderRadius.circular(8.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            doc["note_title"],
            style: Appstyle.mainTitle,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            doc["creation_date"],
            style: Appstyle.dateTitle,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            doc["note_content"],
            style: Appstyle.maincontent,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    ),
  );
}
