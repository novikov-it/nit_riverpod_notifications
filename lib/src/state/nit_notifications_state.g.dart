// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nit_notifications_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$nitNotificationsStateHash() =>
    r'ccc211b0dbee878426675022e717b93c7c4ed81b';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$NitNotificationsState
    extends BuildlessNotifier<NitNotificationsStateModel> {
  late final Type t;

  NitNotificationsStateModel build(
    Type t,
  );
}

/// See also [NitNotificationsState].
@ProviderFor(NitNotificationsState)
const nitNotificationsStateProvider = NitNotificationsStateFamily();

/// See also [NitNotificationsState].
class NitNotificationsStateFamily extends Family<NitNotificationsStateModel> {
  /// See also [NitNotificationsState].
  const NitNotificationsStateFamily();

  /// See also [NitNotificationsState].
  NitNotificationsStateProvider call(
    Type t,
  ) {
    return NitNotificationsStateProvider(
      t,
    );
  }

  @override
  NitNotificationsStateProvider getProviderOverride(
    covariant NitNotificationsStateProvider provider,
  ) {
    return call(
      provider.t,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'nitNotificationsStateProvider';
}

/// See also [NitNotificationsState].
class NitNotificationsStateProvider extends NotifierProviderImpl<
    NitNotificationsState, NitNotificationsStateModel> {
  /// See also [NitNotificationsState].
  NitNotificationsStateProvider(
    Type t,
  ) : this._internal(
          () => NitNotificationsState()..t = t,
          from: nitNotificationsStateProvider,
          name: r'nitNotificationsStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$nitNotificationsStateHash,
          dependencies: NitNotificationsStateFamily._dependencies,
          allTransitiveDependencies:
              NitNotificationsStateFamily._allTransitiveDependencies,
          t: t,
        );

  NitNotificationsStateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.t,
  }) : super.internal();

  final Type t;

  @override
  NitNotificationsStateModel runNotifierBuild(
    covariant NitNotificationsState notifier,
  ) {
    return notifier.build(
      t,
    );
  }

  @override
  Override overrideWith(NitNotificationsState Function() create) {
    return ProviderOverride(
      origin: this,
      override: NitNotificationsStateProvider._internal(
        () => create()..t = t,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        t: t,
      ),
    );
  }

  @override
  NotifierProviderElement<NitNotificationsState, NitNotificationsStateModel>
      createElement() {
    return _NitNotificationsStateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NitNotificationsStateProvider && other.t == t;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, t.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin NitNotificationsStateRef
    on NotifierProviderRef<NitNotificationsStateModel> {
  /// The parameter `t` of this provider.
  Type get t;
}

class _NitNotificationsStateProviderElement extends NotifierProviderElement<
    NitNotificationsState,
    NitNotificationsStateModel> with NitNotificationsStateRef {
  _NitNotificationsStateProviderElement(super.provider);

  @override
  Type get t => (origin as NitNotificationsStateProvider).t;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
