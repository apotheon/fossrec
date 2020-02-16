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
  PROJECT_ALT = File.join helper.tmpdir, PROJECT + '.ext'

  before do
    helper.relocate
    helper.create_local_tmp
  end

  after do
    helper.delete_local_tmp
  end

  it 'initializes a new, empty repository' do
    repo = Repository.init PROJECT, dir: helper.tmpdir
    helper.file_exists? PROJECT_PATH, "failed to init #{PROJECT_PATH}"
    helper.file_missing? PROJECT_ALT, "failed to init #{PROJECT_ALT}"
  end

  it 'initializes a new, empty repository with alt filename extension' do
    repo = Repository.init PROJECT, dir: helper.tmpdir, ext: 'ext'
    helper.file_exists? PROJECT_ALT, "failed to init #{PROJECT_ALT}"
    helper.file_missing? PROJECT_PATH, "failed to init #{PROJECT_PATH}"
  end
end
