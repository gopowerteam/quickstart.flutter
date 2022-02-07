// This file has been generated by the reflectable package.
// https://github.com/dart-lang/reflectable.

import 'dart:core';
import 'package:dart_json_mapper/src/model/annotations.dart' as prefix0;
import 'package:quickstart_flutter/models/user.model.dart' as prefix1;

// ignore_for_file: prefer_adjacent_string_concatenation
// ignore_for_file: prefer_collection_literals
// ignore_for_file: unnecessary_const
// ignore_for_file: implementation_imports

// ignore:unused_import
import 'package:reflectable/mirrors.dart' as m;
// ignore:unused_import
import 'package:reflectable/src/reflectable_builder_based.dart' as r;
// ignore:unused_import
import 'package:reflectable/reflectable.dart' as r show Reflectable;

final _data = <r.Reflectable, r.ReflectorData>{
  const prefix0.JsonSerializable(): r.ReflectorData(
      <m.TypeMirror>[
        r.NonGenericClassMirrorImpl(
            r'UserModel',
            r'.UserModel',
            7,
            0,
            const prefix0.JsonSerializable(),
            const <int>[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 33],
            const <int>[
              34,
              35,
              36,
              37,
              38,
              39,
              11,
              12,
              13,
              14,
              15,
              16,
              17,
              18,
              19,
              20,
              21,
              22,
              23,
              24,
              25,
              26,
              27,
              28,
              29,
              30,
              31,
              32
            ],
            const <int>[],
            -1,
            {},
            {},
            {
              r'': (bool b) => (id,
                      username,
                      gender,
                      birthday,
                      introduction,
                      lastLoginTime,
                      lastLoginIp,
                      nickname,
                      mobile,
                      avatar,
                      shortKey) =>
                  b
                      ? prefix1.UserModel(
                          id,
                          username,
                          gender,
                          birthday,
                          introduction,
                          lastLoginTime,
                          lastLoginIp,
                          nickname,
                          mobile,
                          avatar,
                          shortKey)
                      : null
            },
            -1,
            0,
            const <int>[],
            const <Object>[prefix0.jsonSerializable],
            null)
      ],
      <m.DeclarationMirror>[
        r.VariableMirrorImpl(r'id', 32773, 0, const prefix0.JsonSerializable(),
            -1, 1, 1, const <int>[], const []),
        r.VariableMirrorImpl(
            r'username',
            32773,
            0,
            const prefix0.JsonSerializable(),
            -1,
            1,
            1, const <int>[], const []),
        r.VariableMirrorImpl(
            r'gender',
            32773,
            0,
            const prefix0.JsonSerializable(),
            -1,
            1,
            1, const <int>[], const []),
        r.VariableMirrorImpl(
            r'birthday',
            32773,
            0,
            const prefix0.JsonSerializable(),
            -1,
            1,
            1, const <int>[], const []),
        r.VariableMirrorImpl(
            r'introduction',
            32773,
            0,
            const prefix0.JsonSerializable(),
            -1,
            1,
            1, const <int>[], const []),
        r.VariableMirrorImpl(
            r'lastLoginTime',
            32773,
            0,
            const prefix0.JsonSerializable(),
            -1,
            1,
            1, const <int>[], const []),
        r.VariableMirrorImpl(
            r'lastLoginIp',
            32773,
            0,
            const prefix0.JsonSerializable(),
            -1,
            1,
            1, const <int>[], const []),
        r.VariableMirrorImpl(
            r'nickname',
            32773,
            0,
            const prefix0.JsonSerializable(),
            -1,
            1,
            1, const <int>[], const []),
        r.VariableMirrorImpl(
            r'mobile',
            32773,
            0,
            const prefix0.JsonSerializable(),
            -1,
            1,
            1, const <int>[], const []),
        r.VariableMirrorImpl(
            r'avatar',
            32773,
            0,
            const prefix0.JsonSerializable(),
            -1,
            1,
            1, const <int>[], const []),
        r.VariableMirrorImpl(
            r'shortKey',
            32773,
            0,
            const prefix0.JsonSerializable(),
            -1,
            1,
            1, const <int>[], const []),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 0, 11),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 0, 12),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 1, 13),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 1, 14),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 2, 15),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 2, 16),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 3, 17),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 3, 18),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 4, 19),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 4, 20),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 5, 21),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 5, 22),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 6, 23),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 6, 24),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 7, 25),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 7, 26),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 8, 27),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 8, 28),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 9, 29),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 9, 30),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 10, 31),
        r.ImplicitSetterMirrorImpl(const prefix0.JsonSerializable(), 10, 32),
        r.MethodMirrorImpl(
            r'',
            0,
            0,
            -1,
            0,
            0,
            const <int>[],
            const <int>[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
            const prefix0.JsonSerializable(),
            const []),
        r.MethodMirrorImpl(r'==', 131074, null, -1, 2, 2, const <int>[],
            const <int>[22], const prefix0.JsonSerializable(), const []),
        r.MethodMirrorImpl(r'toString', 131074, null, -1, 1, 1, const <int>[],
            const <int>[], const prefix0.JsonSerializable(), const []),
        r.MethodMirrorImpl(
            r'noSuchMethod',
            65538,
            null,
            null,
            null,
            null,
            const <int>[],
            const <int>[23],
            const prefix0.JsonSerializable(),
            const []),
        r.MethodMirrorImpl(r'hashCode', 131075, null, -1, 3, 3, const <int>[],
            const <int>[], const prefix0.JsonSerializable(), const []),
        r.MethodMirrorImpl(
            r'runtimeType',
            131075,
            null,
            -1,
            4,
            4,
            const <int>[],
            const <int>[],
            const prefix0.JsonSerializable(),
            const []),
        r.MethodMirrorImpl(r'toJson', 131074, null, -1, 1, 1, const <int>[],
            const <int>[], const prefix0.JsonSerializable(), const [])
      ],
      <m.ParameterMirror>[
        r.ParameterMirrorImpl(
            r'id',
            32774,
            33,
            const prefix0.JsonSerializable(),
            -1,
            1,
            1,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'username',
            32774,
            33,
            const prefix0.JsonSerializable(),
            -1,
            1,
            1,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'gender',
            32774,
            33,
            const prefix0.JsonSerializable(),
            -1,
            1,
            1,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'birthday',
            32774,
            33,
            const prefix0.JsonSerializable(),
            -1,
            1,
            1,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'introduction',
            32774,
            33,
            const prefix0.JsonSerializable(),
            -1,
            1,
            1,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'lastLoginTime',
            32774,
            33,
            const prefix0.JsonSerializable(),
            -1,
            1,
            1,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'lastLoginIp',
            32774,
            33,
            const prefix0.JsonSerializable(),
            -1,
            1,
            1,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'nickname',
            32774,
            33,
            const prefix0.JsonSerializable(),
            -1,
            1,
            1,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'mobile',
            32774,
            33,
            const prefix0.JsonSerializable(),
            -1,
            1,
            1,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'avatar',
            32774,
            33,
            const prefix0.JsonSerializable(),
            -1,
            1,
            1,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'shortKey',
            32774,
            33,
            const prefix0.JsonSerializable(),
            -1,
            1,
            1,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_id',
            32870,
            12,
            const prefix0.JsonSerializable(),
            -1,
            1,
            1,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_username',
            32870,
            14,
            const prefix0.JsonSerializable(),
            -1,
            1,
            1,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_gender',
            32870,
            16,
            const prefix0.JsonSerializable(),
            -1,
            1,
            1,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_birthday',
            32870,
            18,
            const prefix0.JsonSerializable(),
            -1,
            1,
            1,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_introduction',
            32870,
            20,
            const prefix0.JsonSerializable(),
            -1,
            1,
            1,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_lastLoginTime',
            32870,
            22,
            const prefix0.JsonSerializable(),
            -1,
            1,
            1,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_lastLoginIp',
            32870,
            24,
            const prefix0.JsonSerializable(),
            -1,
            1,
            1,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_nickname',
            32870,
            26,
            const prefix0.JsonSerializable(),
            -1,
            1,
            1,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_mobile',
            32870,
            28,
            const prefix0.JsonSerializable(),
            -1,
            1,
            1,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_avatar',
            32870,
            30,
            const prefix0.JsonSerializable(),
            -1,
            1,
            1,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_shortKey',
            32870,
            32,
            const prefix0.JsonSerializable(),
            -1,
            1,
            1,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'other',
            32774,
            34,
            const prefix0.JsonSerializable(),
            -1,
            5,
            5,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'invocation',
            32774,
            36,
            const prefix0.JsonSerializable(),
            -1,
            6,
            6,
            const <int>[],
            const [],
            null,
            null)
      ],
      <Type>[prefix1.UserModel, String, bool, int, Type, Object, Invocation],
      1,
      {
        r'==': (dynamic instance) => (x) => instance == x,
        r'toString': (dynamic instance) => instance.toString,
        r'noSuchMethod': (dynamic instance) => instance.noSuchMethod,
        r'hashCode': (dynamic instance) => instance.hashCode,
        r'runtimeType': (dynamic instance) => instance.runtimeType,
        r'toJson': (dynamic instance) => instance.toJson,
        r'id': (dynamic instance) => instance.id,
        r'username': (dynamic instance) => instance.username,
        r'gender': (dynamic instance) => instance.gender,
        r'birthday': (dynamic instance) => instance.birthday,
        r'introduction': (dynamic instance) => instance.introduction,
        r'lastLoginTime': (dynamic instance) => instance.lastLoginTime,
        r'lastLoginIp': (dynamic instance) => instance.lastLoginIp,
        r'nickname': (dynamic instance) => instance.nickname,
        r'mobile': (dynamic instance) => instance.mobile,
        r'avatar': (dynamic instance) => instance.avatar,
        r'shortKey': (dynamic instance) => instance.shortKey
      },
      {
        r'id=': (dynamic instance, value) => instance.id = value,
        r'username=': (dynamic instance, value) => instance.username = value,
        r'gender=': (dynamic instance, value) => instance.gender = value,
        r'birthday=': (dynamic instance, value) => instance.birthday = value,
        r'introduction=': (dynamic instance, value) =>
            instance.introduction = value,
        r'lastLoginTime=': (dynamic instance, value) =>
            instance.lastLoginTime = value,
        r'lastLoginIp=': (dynamic instance, value) =>
            instance.lastLoginIp = value,
        r'nickname=': (dynamic instance, value) => instance.nickname = value,
        r'mobile=': (dynamic instance, value) => instance.mobile = value,
        r'avatar=': (dynamic instance, value) => instance.avatar = value,
        r'shortKey=': (dynamic instance, value) => instance.shortKey = value
      },
      null,
      [])
};

const _memberSymbolMap = null;

void initializeReflectable() {
  r.data = _data;
  r.memberSymbolMap = _memberSymbolMap;
}
