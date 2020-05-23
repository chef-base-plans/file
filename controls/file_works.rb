file_test = attribute('file_test', default: '/bin/file /hab/svc/grep/hooks/run')

describe bash(file_test) do
  its('stdout') { should match /Bourne/ }
end
