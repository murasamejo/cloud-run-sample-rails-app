User.find_or_create_by(
  name: 'John Doe',
  email: 'john@example.com',
  sex: 'male',
  age: 25
)

User.find_or_create_by(
  name: 'Mary Jane',
  email: 'mary@example.com',
  sex: 'female',
  age: 21
)

Company.find_or_create_by(
  corp_number: 123,
  name: 'Google',
  prefecture: 'Tokyo'
)

Company.find_or_create_by(
  corp_number: 456,
  name: 'Netflix',
  prefecture: 'Hokkaido'
)

Company.find_or_create_by(
  corp_number: 789,
  name: 'Nintendo',
  prefecture: 'Kyoto'
)
