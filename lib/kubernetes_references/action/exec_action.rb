module KubernetesReferences
  class ExecAction < KubernetesReferences::API
    # @dynamic command, command=
    attr_accessor :command

    def initialize(obj)
      _set!(obj)
    end
  end
end