require 'minitest/autorun'
require 'minitest/rg'
require 'minitest/spec'
require '../lib/foss_rec'

describe FossRec < MiniTest::Test do
  describe 'version' do
    it 'returns a semantic version' do
      FossRec.version.must_match /^\d+\.\d+\.\d+$/
    end
  end
end
