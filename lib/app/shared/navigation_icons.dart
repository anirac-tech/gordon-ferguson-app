import 'package:flutter/material.dart';

const Key homeIconKey = Key('homeIcon');
const Key categoriesIconKey = Key('categoriesIcon');
const Key favoritesIconKey = Key('favoritesIcon');
const Key aboutIconKey = Key('aboutIcon');

const homeIcon = Icon(
  Icons.explore,
  key: homeIconKey,
);
const categoriesIcon = Icon(
  Icons.grid_view_rounded,
  key: categoriesIconKey,
);

const favoritesIcon = Icon(
  Icons.favorite,
  key: favoritesIconKey,
);
const aboutIcon = Icon(
  Icons.info,
  key: aboutIconKey,
);
