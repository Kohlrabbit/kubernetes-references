module KubernetesReferences
  class SecurityContext < KubernetesReferences::API
    attr_accessor :allow_privilege_escalation
    attr_accessor :capabilities
    attr_accessor :privileged
    attr_accessor :proc_mount
    attr_accessor :read_only_root_filesystem
    attr_accessor :run_as_group
    attr_accessor :run_as_non_root
    attr_accessor :run_as_user
    attr_accessor :selinux_options
    attr_accessor :seccomp_profile
    attr_accessor :windows_options

    def initialize(obj)
      _set!(obj)
    end
  end
end