class ServerException implements Exception {}

class CacheException implements Exception {}

class TUSException implements Exception {}

class TUSNoSyllabusException implements TUSException {}

class TUSNoTimeTableException implements TUSException {}

class TUSSessionOutException implements TUSException {}

class TUSNULLPageIdException implements TUSException {}

class MessageEntryException implements TUSException {}

class TooManyResultException implements TUSException {}

class NoneResultException implements TUSException {}

class TUSUnexceptedException implements TUSException {}

class TUSFetchDataException implements TUSException {}

class TUSEmptyMessageException implements TUSException {}
