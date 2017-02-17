# # encoding: utf-8

# Inspec test for recipe automate::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe http('https://33.33.33.10/api/_status') do
  its('status') { should cmp 200 }
end
