extension SetHelper<T> on Set<T> {
  Set<T> toggle(T item) {
    final newSet = Set<T>.from(this);
    if (newSet.contains(item)) {
      newSet.remove(item);
    } else {
      newSet.add(item);
    }
    return newSet;
  }
}
