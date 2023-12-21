// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemons_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pokemonsHash() => r'4d673c1ffda09fa159a11783c0ae7ef37fbce570';

/// See also [pokemons].
@ProviderFor(pokemons)
final pokemonsProvider = AutoDisposeFutureProvider<List<Pokemon>>.internal(
  pokemons,
  name: r'pokemonsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$pokemonsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PokemonsRef = AutoDisposeFutureProviderRef<List<Pokemon>>;
String _$pokeApiRepositoryProviderHash() =>
    r'532aa32b85d562c3642b16815eea40315960a979';

/// See also [PokeApiRepositoryProvider].
@ProviderFor(PokeApiRepositoryProvider)
final pokeApiRepositoryProviderProvider = AutoDisposeNotifierProvider<
    PokeApiRepositoryProvider, PokeAPIDatasource>.internal(
  PokeApiRepositoryProvider.new,
  name: r'pokeApiRepositoryProviderProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$pokeApiRepositoryProviderHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PokeApiRepositoryProvider = AutoDisposeNotifier<PokeAPIDatasource>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
