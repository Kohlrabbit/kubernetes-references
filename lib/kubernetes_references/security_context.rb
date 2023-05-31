module KubernetesReferences
  class SecurityContext < KubernetesReferences::API
    # @dynamic allow_privilege_escalation, allow_privilege_escalation=
    attr_accessor :allow_privilege_escalation
    # @dynamic capabilities, capabilities=
    attr_accessor :capabilities
    # @dynamic privileged, privileged=
    attr_accessor :privileged
    # @dynamic proc_mount, proc_mount=
    attr_accessor :proc_mount
    # @dynamic read_only_root_filesystem, read_only_root_filesystem=
    attr_accessor :read_only_root_filesystem
    # @dynamic run_as_group, run_as_group=
    attr_accessor :run_as_group
    # @dynamic run_as_non_root, run_as_non_root=
    attr_accessor :run_as_non_root
    # @dynamic run_as_user, run_as_user=
    attr_accessor :run_as_user
    # @dynamic selinux_options, selinux_options=
    attr_accessor :selinux_options
    # @dynamic seccomp_profile, seccomp_profile=
    attr_accessor :seccomp_profile
    # @dynamic windows_options, windows_options=
    attr_accessor :windows_options

    def initialize(obj)
      _set!(obj)
    end
  end
end