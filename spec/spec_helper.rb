class SpecHelper
  attr_accessor :local, :tmp, :tmpdir

  def initialize localfile
    @local = get_path localfile
    @tmp = 'tmp'
    @tmpdir = File.join local, tmp
  end

  def file_exists? filepath, errmsg=nil
    if errmsg
      File.exist?(filepath).must_equal true, "failed to init #{filepath}"
    else
      File.exist?(filepath).must_equal true
    end
  end

  def file_missing? filepath, errmsg=nil
    if errmsg
      File.exist?(filepath).must_equal false, "failed to init #{filepath}"
    else
      File.exist?(filepath).must_equal false
    end
  end

  def create_tmp
    Dir.mkdir tmp
  end

  def get_path filename
    File.expand_path File.dirname filename
  end

  def relocate
    Dir.chdir local
  end

  def create_local_tmp
    relocate and create_tmp
  end

  def clear_local_tmp
    Dir.entries(tmpdir).each do |file|
      File.delete File.join(tmpdir, file) unless File.directory? file
    end
  end

  def delete_local_tmp
    clear_local_tmp and Dir.delete tmpdir
  end
end
