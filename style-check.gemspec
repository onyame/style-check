
Gem::Specification.new do |s|
  s.name        = 'style-check-dlr'
  s.version     = '0.16'
  s.date        = '2021-07-01'
  s.summary     = "Style checker for LaTeX"
  s.description = "style-check.rb searches latex-formatted text in search of forbidden phrases and
    prints error messages formatted as if from a compiler."
  s.authors     = ["Neil Spring"]
  s.email       = 'nspring@cs.umd.edu'
  s.files       = ["style-check.rb"] + Dir["lib/rules/*"] 

  s.platform = Gem::Platform::RUBY     
  s.require_paths = [ 'lib' ]
  s.extensions = Dir['ext/**/extconf.rb']

  s.bindir      = '.'
  s.executables = [ "style-check.rb" ]
  s.test_files = Dir["test/**/test_*.rb"]
  s.homepage    =
    'https://github.com/onyame/style-check'
  s.license       = 'GPL-3.0-or-later'
  s.post_install_message = "Now run: \n% style-check.rb *.tex"
end

# Local Variables:
# compile-command: "gem build style-check.gemspec"
# End:
