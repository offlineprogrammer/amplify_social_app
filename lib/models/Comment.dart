/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, file_names, unnecessary_new, prefer_if_null_operators, prefer_const_constructors, slash_for_doc_comments, annotate_overrides, non_constant_identifier_names, unnecessary_string_interpolations, prefer_adjacent_string_concatenation, unnecessary_const, dead_code

import 'ModelProvider.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Comment type in your schema. */
@immutable
class Comment extends Model {
  static const classType = const _CommentModelType();
  final String id;
  final String? _content;
  final String? _createdAt;
  final Post? _post;
  final String? _postCommentsId;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get content {
    return _content;
  }
  
  String? get createdAt {
    return _createdAt;
  }
  
  Post? get post {
    return _post;
  }
  
  String? get postCommentsId {
    return _postCommentsId;
  }
  
  const Comment._internal({required this.id, content, createdAt, post, postCommentsId}): _content = content, _createdAt = createdAt, _post = post, _postCommentsId = postCommentsId;
  
  factory Comment({String? id, String? content, String? createdAt, Post? post, String? postCommentsId}) {
    return Comment._internal(
      id: id == null ? UUID.getUUID() : id,
      content: content,
      createdAt: createdAt,
      post: post,
      postCommentsId: postCommentsId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Comment &&
      id == other.id &&
      _content == other._content &&
      _createdAt == other._createdAt &&
      _post == other._post &&
      _postCommentsId == other._postCommentsId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Comment {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("content=" + "$_content" + ", ");
    buffer.write("createdAt=" + "$_createdAt" + ", ");
    buffer.write("post=" + (_post != null ? _post!.toString() : "null") + ", ");
    buffer.write("postCommentsId=" + "$_postCommentsId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Comment copyWith({String? id, String? content, String? createdAt, Post? post, String? postCommentsId}) {
    return Comment(
      id: id ?? this.id,
      content: content ?? this.content,
      createdAt: createdAt ?? this.createdAt,
      post: post ?? this.post,
      postCommentsId: postCommentsId ?? this.postCommentsId);
  }
  
  Comment.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _content = json['content'],
      _createdAt = json['createdAt'],
      _post = json['post']?['serializedData'] != null
        ? Post.fromJson(new Map<String, dynamic>.from(json['post']['serializedData']))
        : null,
      _postCommentsId = json['postCommentsId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'content': _content, 'createdAt': _createdAt, 'post': _post?.toJson(), 'postCommentsId': _postCommentsId
  };

  static final QueryField ID = QueryField(fieldName: "comment.id");
  static final QueryField CONTENT = QueryField(fieldName: "content");
  static final QueryField CREATEDAT = QueryField(fieldName: "createdAt");
  static final QueryField POST = QueryField(
    fieldName: "post",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Post).toString()));
  static final QueryField POSTCOMMENTSID = QueryField(fieldName: "postCommentsId");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Comment";
    modelSchemaDefinition.pluralName = "Comments";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Comment.CONTENT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Comment.CREATEDAT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: Comment.POST,
      isRequired: false,
      targetName: "postCommentsId",
      ofModelName: (Post).toString()
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Comment.POSTCOMMENTSID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _CommentModelType extends ModelType<Comment> {
  const _CommentModelType();
  
  @override
  Comment fromJson(Map<String, dynamic> jsonData) {
    return Comment.fromJson(jsonData);
  }
}