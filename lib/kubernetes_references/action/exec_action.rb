module KubernetesReferences
  class ExecAction < KubernetesReferences::API
    attr_accessor :command

    def initialize(obj)
      _set!(obj)
    end
  end
end