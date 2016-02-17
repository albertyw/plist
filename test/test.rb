TEST_FILES = Dir.glob('test/test_*')
TEST_FILES.each do |file|
  require File.basename(file)
end
