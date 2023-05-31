module KubernetesReferences
  class JobStatus < KubernetesReferences::API
    # @dynamic active, active=
    attr_accessor :active
    # @dynamic completed_indexes, completed_indexes=
    attr_accessor :completed_indexes
    # @dynamic completion_time, completion_time=
    attr_accessor :completion_time
    # @dynamic conditions, conditions=
    attr_accessor :conditions
    # @dynamic failed, failed=
    attr_accessor :failed
    # @dynamic ready, ready=
    attr_accessor :ready
    # @dynamic start_time, start_time=
    attr_accessor :start_time
    # @dynamic succeeded, succeeded=
    attr_accessor :succeeded
    # @dynamic uncounted_terminated_pods, uncounted_terminated_pods=
    attr_accessor :uncounted_terminated_pods

    def initialize(obj)
      _set!(obj)
    end
  end
end