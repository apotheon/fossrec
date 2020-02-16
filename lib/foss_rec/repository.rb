class Repository
  attr_reader :path, :checkout_path

  def initialize args=Hash.new
    @path = File.absolute_path args[:repo_path]
    @checkout_path = args[:checkout_path]
  end

  def get_element key
    key_regex = /^#{key}: +/
    status.select {|line| line.match key_regex }.first.sub key_regex, ''
  end

  def status
    stat = `fossil status -R #{path}`

    if stat.size > 0
      state.split "\n"
    else
      raise ArgumentError, "#{checkout_path} is not a valid checkout path"
    end
  end
end
