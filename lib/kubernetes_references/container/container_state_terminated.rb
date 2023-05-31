module KubernetesReferences
  class ContainerStateTerminated < KubernetesReferences::API
    attr_accessor :container_id
    attr_accessor :exit_code
    attr_accessor :finished_at
    attr_accessor :message
    attr_accessor :reason
    attr_accessor :signal
    attr_accessor :started_at

    def initialize(obj)
      _set!(obj)
    end
  end
end