// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class PageObject implements Finder {
  PageObject(this._internal);
  final Finder _internal;
  @override
  Iterable<Element> get allCandidates => _internal.allCandidates;

  @override
  Finder at(int index) => _internal.at(index);

  @override
  String describeMatch(Plurality plurality) =>
      _internal.describeMatch(plurality);

  @override
  FinderResult<Element> evaluate() => _internal.evaluate();

  @override
  Iterable<Element> findInCandidates(Iterable<Element> candidates) =>
      _internal.findInCandidates(candidates);

  @override
  FinderResult<Element> get found => _internal.found;

  @override
  bool get hasFound => _internal.hasFound;

  @override
  void reset() => _internal.reset();

  @override
  void runCached(VoidCallback run) => _internal.runCached(run);

  @override
  bool tryEvaluate() => _internal.tryEvaluate();
  @override
  String toString({bool describeSelf = false}) =>
      _internal.toString(describeSelf: describeSelf);

  @override
  Iterable<Element> apply(Iterable<Element> candidates) =>
      _internal.apply(candidates);

  @override
  String get description => _internal.description;

  @override
  Finder hitTestable({Alignment at = Alignment.center}) =>
      _internal.hitTestable(at: at);
  @override
  bool precache() => _internal.precache();

  @override
  bool get skipOffstage => _internal.skipOffstage;

  @override
  Finder get first => _internal.first;

  @override
  Finder get last => _internal.last;
}
