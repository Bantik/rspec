module Spec
  module VERSION
    unless defined? MAJOR
      MAJOR  = 0
      MINOR  = 7
      TINY   = 3
      # RANDOM_TOKEN: 0.351404254608215
      REV    = "$LastChangedRevision$".match(/LastChangedRevision: (\d+)/)[1]

      STRING = [MAJOR, MINOR, TINY].join('.')
      FULL_VERSION = "#{STRING} (r#{REV})"
      TAG    = "REL_" + [MAJOR, MINOR, TINY].join('_')

      NAME   = "RSpec"
      URL    = "http://rspec.rubyforge.org/"  
    
      DESCRIPTION = "#{NAME}-#{FULL_VERSION} - BDD for Ruby\n#{URL}"
    end
  end
end