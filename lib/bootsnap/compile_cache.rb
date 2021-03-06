require_relative 'compile_cache/iseq'
require_relative 'compile_cache/yaml'

module Bootsnap
  module CompileCache
    def self.setup(iseq:, yaml:)
      if iseq
        Bootsnap::CompileCache::ISeq.install!
      end

      if yaml
        Bootsnap::CompileCache::YAML.install!
      end
    end
  end
end
