require 'minitest/autorun'
require 'minitest/rg'
require 'minitest/spec'

require '../lib/foss_rec/repository'

describe Repository do
  describe 'with a nonexistent checkout path' do
    checkout_path = '/home/invalid/checkout/path'

    it 'raises an ENOENT error' do
      proc { Repository.new checkout_path }.must_raise Errno::ENOENT
    end
  end
end
