using System;
using System.Linq;

class MyUtils
{
  public T[] Exclude<T>(T val, T[] tags) where T: class {
    var excluded = from tag in tags where tag != val select tag;
    return excluded.ToArray();
  }

  public T[] Unique<T>(T[] tags) where T: class {
    if (tags.Length <=1) {
      return tags;
    } else {
      T   head = tags.First();
      T[] tail = tags.Skip(1).ToArray();

      T[] newhead = new T[1] {head};
      T[] newtail = Unique(Exclude(head, tail));

      return newhead.Concat(newtail).ToArray();
    }
  }
}
