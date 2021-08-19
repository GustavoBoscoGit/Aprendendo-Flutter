import 'package:flutter/material.dart';

void main() => runApp(
      Column(
        children: <Widget>[
          Text(
            'Deliver features faster',
            textDirection: TextDirection.ltr,
          ),
          Text(
            'Crat beatiful Uis',
            textDirection: TextDirection.ltr,
          ),
          Text(
            'Crat beatiful Uis',
            textDirection: TextDirection.ltr,
          ),
          Text(
            'Crat beatiful Uis',
            textDirection: TextDirection.ltr,
          ),
          Expanded(
            child: FittedBox(
              fit: BoxFit.contain,
              child: const FlutterLogo(),
            ),
          ),
        ],
      ),
    );
