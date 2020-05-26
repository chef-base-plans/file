file_test = input('file_test', value: '/bin/file /hab/svc/file/hooks/run')

describe bash(file_test) do
  its('stdout') { should match /Bourne/ }
  its('stderr') { should eq '' }
  its('exit_status') { should eq 0 }
end
