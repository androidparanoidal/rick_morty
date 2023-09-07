import 'package:dartz/dartz.dart';
import 'package:rick_morty/features/domain/entities/person_entity.dart';
import 'package:rick_morty/core/error/failure.dart';

// contract for repository
abstract class PersonRepository {
  Future<Either<Failure, List<PersonEntity>>> getAllPersons(int page);
  Future<Either<Failure, List<PersonEntity>>> searchPerson(String query);
}
