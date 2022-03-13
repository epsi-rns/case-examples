typedef char Tag[5];

struct TagsRecord {
  int length;
  char *tags[5];
};

char *tag_str_r(struct TagsRecord r);
