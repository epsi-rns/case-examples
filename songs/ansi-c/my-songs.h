typedef char Tag[5];

struct Song {
  char *title;
  Tag tags[10];
};

struct Song songs[] = {
    { "Cantaloupe Island",
      {"60s", "jazz"} },
    { "Let It Be",
      {"60s", "rock"} },
    { "Knockin' on Heaven's Door",
      {"70s", "rock"} },
    { "Emotion",
      {"70s", "pop"} },
    { "The River", {} }
  };
