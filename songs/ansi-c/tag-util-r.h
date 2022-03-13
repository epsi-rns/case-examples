typedef char Tag[5];
char *tag_str (Tag *arr_tag, size_t len_tags);
int tag_count (Tag *arr_tag, size_t len_tags);
Tag *tag_array(Tag *arr_tag, size_t len_tags);
Tag *arr_concat(
  Tag *arr_source, size_t len_source,
  Tag *arr_append, size_t len_append);
