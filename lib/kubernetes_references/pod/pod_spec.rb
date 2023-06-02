module KubernetesReferences
  class PodSpec < KubernetesReferences::API
    # @dynamic active_deadline_seconds, active_deadline_seconds=
    attr_accessor :active_deadline_seconds
    # @dynamic affinity, affinity=
    attr_accessor :affinity
    # @dynamic automount_service_account_token, automount_service_account_token=
    attr_accessor :automount_service_account_token
    # @dynamic containers, containers=
    attr_accessor :containers
    # @dynamic dns_config, dns_config=
    attr_accessor :dns_config
    # @dynamic dns_policy, dns_policy=
    attr_accessor :dns_policy
    # @dynamic enable_service_links, enable_service_links=
    attr_accessor :enable_service_links
    # @dynamic ephemeral_containers, ephemeral_containers=
    attr_accessor :ephemeral_containers
    # @dynamic host_aliases, host_aliases=
    attr_accessor :host_aliases
    # @dynamic host_ipc, host_ipc=
    attr_accessor :host_ipc
    # @dynamic host_network, host_network=
    attr_accessor :host_network
    # @dynamic host_pid, host_pid=
    attr_accessor :host_pid
    # @dynamic hostname, hostname=
    attr_accessor :hostname
    # @dynamic image_pull_secrets, image_pull_secrets=
    attr_accessor :image_pull_secrets
    # @dynamic init_containers, init_containers=
    attr_accessor :init_containers
    # @dynamic node_name, node_name=
    attr_accessor :node_name
    # @dynamic node_selector, node_selector=
    attr_accessor :node_selector
    # @dynamic os, os=
    attr_accessor :os
    # @dynamic overhead, overhead=
    attr_accessor :overhead
    # @dynamic preemption_policy, preemption_policy=
    attr_accessor :preemption_policy
    # @dynamic priority, priority=
    attr_accessor :priority
    # @dynamic priority_class_name, priority_class_name=
    attr_accessor :priority_class_name
    # @dynamic readiness_gates, readiness_gates=
    attr_accessor :readiness_gates
    # @dynamic restart_policy, restart_policy=
    attr_accessor :restart_policy
    # @dynamic runtime_class_name, runtime_class_name=
    attr_accessor :runtime_class_name
    # @dynamic scheduler_name, scheduler_name=
    attr_accessor :scheduler_name
    # @dynamic security_context, security_context=
    attr_accessor :security_context
    # @dynamic service_account, service_account=
    attr_accessor :service_account
    # @dynamic service_account_name, service_account_name=
    attr_accessor :service_account_name
    # @dynamic set_hostname_as_fqdn, set_hostname_as_fqdn=
    attr_accessor :set_hostname_as_fqdn
    # @dynamic share_process_namespace, share_process_namespace=
    attr_accessor :share_process_namespace
    # @dynamic subdomain, subdomain=
    attr_accessor :subdomain
    # @dynamic termination_grace_period_seconds, termination_grace_period_seconds=
    attr_accessor :termination_grace_period_seconds
    # @dynamic tolerations, tolerations=
    attr_accessor :tolerations
    # @dynamic topology_spread_constraints, topology_spread_constraints=
    attr_accessor :topology_spread_constraints
    # @dynamic volumes, volumes=
    attr_accessor :volumes

    def initialize(obj)
      _set!(obj)
    end

    def _schema
      {
        activeDeadlineSeconds: @active_deadline_seconds,
        affinity: @affinity.schema,
        automountServiceAccountToken: @automount_service_account_token,
        containers: @containers.map{|r| r.schema},
        dnsConfig: @dns_config.schema,
        dnsPolicy: @dns_policy,
        enableServiceLinks: @enable_service_links,
        ephemeralContainers: @ephemeral_containers.map{|r| r.schema},
        hostAliases: @host_aliases.map{|r| r.schema},
        hostIPC: @host_ipc,
        hostNetwork: @host_network,
        hostPID: @host_pid,
        hostname: @hostname,
        imagePullSecrets: @image_pull_secrets,
        initContainers: @init_containers.map{|r| r.schema},
        nodeName: @node_name,
        nodeSelector: @node_selector,
        os: @os.schema,
        overhead: @overhead,
        preemptionPolicy: @preemption_policy,
        priority: @priority,
        priorityClassName: @priority_class_name,
        readinessGates: @readiness_gates.map{|r| r.schema},
        restartPolicy: @restart_policy,
        runtimeClassName: @runtime_class_name,
        schedulerName: @scheduler_name,
        securityContext: @security_context.schema,
        serviceAccount: @service_account,
        serviceAccountName: @service_account_name,
        setHostnameAsFQDN: @set_hostname_as_fqdn,
        shareProcessNamespace: @share_process_namespace,
        subdmain: @subdomain,
        terminationGracePeriodSeconds: @termination_grace_period_seconds,
        tolerations: @tolerations.map{|r| r.schema},
        topologySpreadConstraints: @topology_spread_constraints.map{|r| r.schema},
        volumes: @volumes.map{|r| r.schema}
      }
    end
  end
end