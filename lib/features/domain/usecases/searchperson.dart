import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:rick_morty/core/usecases/usecase.dart';
import 'package:rick_morty/features/domain/repositories/person_repository.dart';
import 'package:rick_morty/features/domain/entities/person_entity.dart';
import 'package:rick_morty/core/error/failure.dart';

class SearchPerson extends UseCase<List<PersonEntity>, SearchPersonParams> {
  final PersonRepository personRepository;
  SearchPerson(this.personRepository);

  @override
  Future<Either<Failure, List<PersonEntity>>> call(
      SearchPersonParams params) async {
    return await personRepository.searchPerson(params.query);
  }
}

class SearchPersonParams extends Equatable {
  final String query;

  const SearchPersonParams({required this.query});
  @override
  List<Object?> get props => [query];
}
