# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#containerport-v1-core
  class ContainerPort < KubernetesReferences::API
    # @dynamic container_port, container_port=
    attr_accessor :container_port
    # @dynamic host_ip, host_ip=
    attr_accessor :host_ip
    # @dynamic host_port, host_port=
    attr_accessor :host_port
    # @dynamic name, name=
    attr_accessor :name
    # @dynamic protocol, protocol=
    attr_accessor :protocol

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        containerPort: @container_port,
        hostIp: @host_ip,
        name: @name,
        protocol: @protocol
      }
    end
  end
end
