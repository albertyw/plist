begin
  require 'codeclimate-test-reporter'
  CodeClimate::TestReporter.start
rescue LoadError
end
TEST_FILES = Dir.glob('test/test_*')
TEST_FILES.each do |file|
  require File.basename(file)
end
