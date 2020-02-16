require 'minitest/autorun'
require 'minitest/rg'
require 'minitest/spec'

require './spec_helper'

require '../lib/foss_rec/repository'

describe Repository do
  helper = SpecHelper.new __FILE__

  EXT = 'fossil'
  PROJECT = 'project'
  PROJECT_FILE = PROJECT + '.' + EXT
  PROJECT_PATH = File.join helper.tmpdir, PROJECT_FILE

  before do
    helper.relocate
    helper.create_local_tmp
  end

  after do
    helper.delete_local_tmp
  end

  it 'initializes a new, empty repository' do
    repo = Repository.init PROJECT, dir: helper.tmpdir
    File.exist?(PROJECT_PATH).must_equal true, "failed to init #{PROJECT_PATH}"
  end

  it 'initializes a new, empty repository with alt filename extension' do
    project_path = File.join helper.tmpdir, PROJECT + '.ext'
    repo = Repository.init PROJECT, dir: helper.tmpdir, ext: 'ext'
    File.exist?(project_path).must_equal true, "failed to init #{project_path}"
  end
end
