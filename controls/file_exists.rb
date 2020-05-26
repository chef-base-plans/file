file_path = input('file_path', value: '/bin/file')

describe file(file_path) do
  it { should exist }
end
