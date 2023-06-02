module KubernetesReferences
  class UncountedTerminatedPods < KubernetesReferences::API
    # @dynamic failed, failed=
    attr_accessor :failed
    # @dynamic succeeded, succeeded=
    attr_accessor :succeeded

    def initialize(obj)
      _set!(obj)
    end

    def _schema
      {
        failed: @failed,
        succeeded: @succeeded
      }
    end
  end
end