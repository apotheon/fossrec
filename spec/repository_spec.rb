require 'minitest/autorun'
require 'minitest/rg'
require 'minitest/spec'

require '../lib/foss_rec/repository'

describe Repository do
  describe 'with an invalid repository file path' do
    repo_path = '../invalid/path'

    it 'raises an ENOENT error' do
      proc { Repository.new repo_path }.must_raise ArgumentError
    end
  end
end
