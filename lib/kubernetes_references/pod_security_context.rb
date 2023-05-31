module KubernetesReferences
  class PodSecurityContext < KubernetesReferences::API
    attr_accessor :fs_group
    attr_accessor :fs_group_change_policy
    attr_accessor :run_as_group
    attr_accessor :run_as_non_root
    attr_accessor :run_as_user
    attr_accessor :selinux_options
    attr_accessor :seccomp_profile
    attr_accessor :supplemental_groups
    attr_accessor :sysctls
    attr_accessor :windows_options

    def initialize(obj)
      _set!(obj)
    end
  end
end