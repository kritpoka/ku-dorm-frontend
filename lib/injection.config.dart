// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'data/datasource/datasource.dart' as _i358;
import 'data/datasource/datasource_imp.dart' as _i359;
import 'data/repository/repository.dart' as _i724;
import 'data/repository/repository_imp.dart' as _i1037;
import 'data/service/service.dart' as _i422;
import 'data/service/service_imp.dart' as _i149;
import 'domain/usecase.dart' as _i885;
import 'domain/user_mapper.dart' as _i118;
import 'domain/user_mapper_imp.dart' as _i826;
import 'presentation/user/user_bloc.dart' as _i117;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i422.Service>(() => _i149.ServiceImp());
    gh.lazySingleton<_i118.UserMapper>(() => _i826.UserMapperImp());
    gh.lazySingleton<_i358.Datasource>(
        () => _i359.DatasourceImp(service: gh<_i422.Service>()));
    gh.lazySingleton<_i724.Repository>(
        () => _i1037.RepositoryImp(datasource: gh<_i358.Datasource>()));
    gh.lazySingleton<_i885.Usecase>(() => _i885.Usecase(
          repository: gh<_i724.Repository>(),
          userMapper: gh<_i118.UserMapper>(),
        ));
    gh.factory<_i117.UserBloc>(
        () => _i117.UserBloc(usecase: gh<_i885.Usecase>()));
    return this;
  }
}
