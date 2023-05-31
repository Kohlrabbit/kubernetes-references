module KubernetesReferences
  class JobSpec < KubernetesReferences::API

    attr_accessor :active_deadline_seconds
    attr_accessor :backoff_limit
    attr_accessor :completion_mode
    attr_accessor :completions
    attr_accessor :manual_selector
    attr_accessor :parallelism
    attr_accessor :selector
    attr_accessor :suspend
    attr_accessor :template
    attr_accessor :ttl_seconds_after_finished

    def initialize(obj)
      _set!(obj)
    end
  end
end