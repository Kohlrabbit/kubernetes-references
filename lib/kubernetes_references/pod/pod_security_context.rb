module KubernetesReferences
  class PodSecurityContext < KubernetesReferences::API
    # @dynamic fs_group, fs_group=
    attr_accessor :fs_group
    # @dynamic fs_group_change_policy, fs_group_change_policy=
    attr_accessor :fs_group_change_policy
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
    # @dynamic supplemental_groups, supplemental_groups=
    attr_accessor :supplemental_groups
    # @dynamic sysctls, sysctls=
    attr_accessor :sysctls
    # @dynamic windows_options, windows_options=
    attr_accessor :windows_options

    def initialize(obj)
      _set!(obj)
    end

    def _schema
      {
        fsGroup: @fs_group,
        fsGroupChangePolicy: @fs_group_change_policy,
        runAsGroup: @run_as_group,
        runAsNonRoot: @run_as_non_root,
        seLinuxOptions: @selinux_options.schema,
        seccompProfile: @seccomp_profile.schema,
        supplementalGroups: @supplemental_groups,
        sysctls: @sysctls.map{|r| r.schema},
        windowsOptions: @windows_options.schema
      }
    end
  end
end