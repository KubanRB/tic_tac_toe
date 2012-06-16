# -*- encoding: utf-8 -*-
require File.expand_path('../lib/tic_tac_toe/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Shaliko Usubov"]
  gem.email         = ["shaliko@ezid.ru"]
  gem.description   = %q{Tic-tac-toe game, also called noughts and crosses.}
  gem.summary       = %q{Tic tac toe}
  gem.homepage      = "https://github.com/KubanRB/tic_tac_toe"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "tic_tac_toe"
  gem.require_paths = ["lib"]
  gem.version       = TicTacToe::VERSION
end
