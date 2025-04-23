import '../database.dart';

class ArticleCategoryTable extends SupabaseTable<ArticleCategoryRow> {
  @override
  String get tableName => 'article_category';

  @override
  ArticleCategoryRow createRow(Map<String, dynamic> data) =>
      ArticleCategoryRow(data);
}

class ArticleCategoryRow extends SupabaseDataRow {
  ArticleCategoryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ArticleCategoryTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get parentId => getField<String>('parent_id');
  set parentId(String? value) => setField<String>('parent_id', value);

  String? get teamId => getField<String>('team_id');
  set teamId(String? value) => setField<String>('team_id', value);

  String get slug => getField<String>('slug')!;
  set slug(String value) => setField<String>('slug', value);

  String? get icon => getField<String>('icon');
  set icon(String? value) => setField<String>('icon', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  int? get displayOrder => getField<int>('display_order');
  set displayOrder(int? value) => setField<int>('display_order', value);

  String? get visibility => getField<String>('visibility');
  set visibility(String? value) => setField<String>('visibility', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
