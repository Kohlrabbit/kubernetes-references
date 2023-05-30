module KubernetesReferences
  class Container < KubernetesReferences::API
    attr_accessor :args
    attr_accessor :command
    attr_accessor :env
    attr_accessor :env_from
    attr_accessor :image
    attr_accessor :image_pull_policy
    attr_accessor :lifecycle
    attr_accessor :liveness_probe
    attr_accessor :name
    attr_accessor :ports
    attr_accessor :readiness_probe
    attr_accessor :resources
    attr_accessor :security_context
    attr_accessor :startup_probe
    attr_accessor :stdin
    attr_accessor :stdin_once
    attr_accessor :termination_message_path
    attr_accessor :termination_message_policy
    attr_accessor :tty
    attr_accessor :volume_devices
    attr_accessor :volume_mounts
    attr_accessor :working_dir

    def initialize(obj)
      _set!(obj)
    end
  end
end
