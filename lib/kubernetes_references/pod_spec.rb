module KubernetesReferences
  class PodSpec < KubernetesReferences::API
    attr_accessor :active_deadline_seconds
    attr_accessor :affinity
    attr_accessor :automount_service_account_token
    attr_accessor :containers
    attr_accessor :dns_config
    attr_accessor :dns_policy
    attr_accessor :enable_service_links
    attr_accessor :ephemeral_containers
    attr_accessor :host_aliases
    attr_accessor :host_ipc
    attr_accessor :host_network
    attr_accessor :host_pid
    attr_accessor :hostname
    attr_accessor :image_pull_secrets
    attr_accessor :init_containers
    attr_accessor :node_name
    attr_accessor :node_selector
    attr_accessor :os
    attr_accessor :overhead
    attr_accessor :preemption_policy
    attr_accessor :priority
    attr_accessor :priority_class_name
    attr_accessor :readiness_gates
    attr_accessor :restart_policy
    attr_accessor :runtime_class_name
    attr_accessor :scheduler_name
    attr_accessor :security_context
    attr_accessor :service_account
    attr_accessor :service_account_name
    attr_accessor :set_hostname_as_fqdn
    attr_accessor :share_process_namespace
    attr_accessor :subdomain
    attr_accessor :termination_grace_period_seconds
    attr_accessor :tolerations
    attr_accessor :topology_spread_constraints
    attr_accessor :volumes

    def initialize(obj)
      _set!(obj)
    end
  end
end