import '../database.dart';

class ArticleTable extends SupabaseTable<ArticleRow> {
  @override
  String get tableName => 'article';

  @override
  ArticleRow createRow(Map<String, dynamic> data) => ArticleRow(data);
}

class ArticleRow extends SupabaseDataRow {
  ArticleRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ArticleTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  String? get parentId => getField<String>('parent_id');
  set parentId(String? value) => setField<String>('parent_id', value);

  String get slug => getField<String>('slug')!;
  set slug(String value) => setField<String>('slug', value);

  String? get categoryId => getField<String>('category_id');
  set categoryId(String? value) => setField<String>('category_id', value);

  String? get serviceId => getField<String>('service_id');
  set serviceId(String? value) => setField<String>('service_id', value);

  String get authorId => getField<String>('author_id')!;
  set authorId(String value) => setField<String>('author_id', value);

  String? get lastEditorId => getField<String>('last_editor_id');
  set lastEditorId(String? value) => setField<String>('last_editor_id', value);

  String? get articleType => getField<String>('article_type');
  set articleType(String? value) => setField<String>('article_type', value);

  String? get content => getField<String>('content');
  set content(String? value) => setField<String>('content', value);

  dynamic get structuredContent => getField<dynamic>('structured_content');
  set structuredContent(dynamic value) =>
      setField<dynamic>('structured_content', value);

  dynamic get metadata => getField<dynamic>('metadata');
  set metadata(dynamic value) => setField<dynamic>('metadata', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  bool? get isPublic => getField<bool>('is_public');
  set isPublic(bool? value) => setField<bool>('is_public', value);

  String? get titleVector => getField<String>('title_vector');
  set titleVector(String? value) => setField<String>('title_vector', value);

  String? get contentVector => getField<String>('content_vector');
  set contentVector(String? value) => setField<String>('content_vector', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
