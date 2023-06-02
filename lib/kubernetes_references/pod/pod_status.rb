module KubernetesReferences
  class PodStatus < KubernetesReferences::API
    # @dynamic pod_condition, pod_condition=
    attr_accessor :pod_condition
    # @dynamic container_statuses, container_statuses=
    attr_accessor :container_statuses
    # @dynamic ephemeral_container_statuses, ephemeral_container_statuses=
    attr_accessor :ephemeral_container_statuses
    # @dynamic host_ip, host_ip=
    attr_accessor :host_ip
    # @dynamic init_container_statuses, init_container_statuses=
    attr_accessor :init_container_statuses
    # @dynamic message, message=
    attr_accessor :message
    # @dynamic nominated_node_name, nominated_node_name=
    attr_accessor :nominated_node_name
    # @dynamic phase, phase=
    attr_accessor :phase
    # @dynamic pod_ip, pod_ip=
    attr_accessor :pod_ip
    # @dynamic pod_ips, pod_ips=
    attr_accessor :pod_ips
    # @dynamic qos_class, qos_class=
    attr_accessor :qos_class
    # @dynamic reason, reason=
    attr_accessor :reason
    # @dynamic start_time, start_time=
    attr_accessor :start_time

    def initialize(obj)
      _set!(obj)
    end

    def _schema
      {
        podCondition: @pod_condition.map{|r| r.schema},
        containerStatuses: @container_statuses.map{|r| r.schema},
        ephemeralContainerStatuses: @ephemeral_container_statuses.map{|r| r.schema},
        hostIP: @host_ip,
        initContainerStatuses: @init_container_statuses.map{|r| r.schema},
        message: @message,
        nominatedNodeName: @nominated_node_name,
        phase: @phase,
        podIP: @pod_ip,
        podIPs: @pod_ips.map{|r| r.schema},
        qosClass: @qos_class,
        reason: @reason,
        startTime: @start_time 
      }
    end
  end
end