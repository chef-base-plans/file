file_path = attribute('file_path', default: '/bin/file')

describe file(file_path) do
  it { should exist }
end
