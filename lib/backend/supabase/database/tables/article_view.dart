import '../database.dart';

class ArticleViewTable extends SupabaseTable<ArticleViewRow> {
  @override
  String get tableName => 'article_view';

  @override
  ArticleViewRow createRow(Map<String, dynamic> data) => ArticleViewRow(data);
}

class ArticleViewRow extends SupabaseDataRow {
  ArticleViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ArticleViewTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get articleId => getField<String>('article_id')!;
  set articleId(String value) => setField<String>('article_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get customerId => getField<String>('customer_id');
  set customerId(String? value) => setField<String>('customer_id', value);

  String? get anonymousId => getField<String>('anonymous_id');
  set anonymousId(String? value) => setField<String>('anonymous_id', value);

  int? get viewDurationSeconds => getField<int>('view_duration_seconds');
  set viewDurationSeconds(int? value) =>
      setField<int>('view_duration_seconds', value);

  bool? get isComplete => getField<bool>('is_complete');
  set isComplete(bool? value) => setField<bool>('is_complete', value);

  String? get source => getField<String>('source');
  set source(String? value) => setField<String>('source', value);

  String? get feedback => getField<String>('feedback');
  set feedback(String? value) => setField<String>('feedback', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
