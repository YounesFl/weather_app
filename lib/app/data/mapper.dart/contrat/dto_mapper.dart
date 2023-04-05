/// Dtos are raw objects from the sources
/// In the domain layer, we should not use the same models used in data layer
/// The domain layer uses its own models (called entites)
/// Therefore the repositories shoud use dtos but return domain models
abstract class DtoMapper<E, D> {
  /// Map a dto of type [D] into a domain object of type [E]
  E toDomain(D dto);
}
