require_relative 'lib/foss_rec.rb'

Gem::Specification.new do |s|
  s.name            =  'fossrec'
  s.version         =  FossRec.version
  s.authors         =  ['Chad Perrin']
  s.date            =  '2019-07-30'
  s.description     =  <<-EOF
    FossRec is a Ruby library that provides an API for managing Fossil SCM, in
    particular in conjunction with the Fossil Record service.  It is currently
    well shy of 1.0 release.
  EOF
  s.summary         =  'FossRec - Use Fossil SCM in Ruby.'
  s.email           =  'code@apotheon.net'
  s.files           =  [
    'lib/foss_rec.rb'
  ]
  s.homepage        =  'http://fossrec.com/u/apotheon/fossrec'
  s.has_rdoc        =  true
  s.license         =  'COIL'

  s.post_install_message    = <<-EOF
    Thank you for using FossRec.  This library can be required with:

        require 'foss_rec'
  EOF

  s.required_ruby_version   = '>= 1.9.3'
end
