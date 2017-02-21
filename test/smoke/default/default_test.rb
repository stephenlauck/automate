# # encoding: utf-8

# Inspec test for recipe automate::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe http('https://33.33.33.10/api/_status') do
  its('status') { should cmp 200 }
end

describe command('automate-ctl status') do
  its('stdout') { should match(/run: delivery:/) }
  its('stdout') { should match(/run: elasticsearch:/) }
  its('stdout') { should match(/run: kibana:/) }
  its('stdout') { should match(/run: logstash:/) }
  its('stdout') { should match(/run: nginx:/) }
  its('stdout') { should match(/run: postgresql:/) }
  its('stdout') { should match(/run: rabbitmq:/) }
end

# shmmax is hardcoded in Automate embedded cookbooks default attribute file
shmmax_command = `sysctl -n kernel.shmmax`.chomp!.to_i
describe shmmax_command do
  it { should be >= 17179869184 }
end
