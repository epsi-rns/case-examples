using System;
using System.Linq;
using System.Linq.Expressions;

class Step11Tree
{
  public void Show() {
    MySongs mySongs = new MySongs();
  
    var parameter  = Expression.Parameter(typeof(MySong), "MySong");
    var type       = Type.GetType("MySong").GetProperty("Tags");
    var property   = Expression.Property(parameter, type);
    var constant   = Expression.Constant(null);
    var comparison = Expression.NotEqual(property, constant);
    var lambda     = Expression.Lambda<Func<MySong, bool>>(comparison, parameter);
    Func<MySong, bool> withTagsFilterExpression = lambda.Compile();
 
    var filteredSongs = (mySongs.songs)
      .Where(withTagsFilterExpression);

    foreach(var song in filteredSongs) {
      Console.WriteLine("[{0}]", song);
    }
  }
}
