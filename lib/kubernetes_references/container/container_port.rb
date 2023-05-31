module KubernetesReferences
  class ContainerPort < KubernetesReferences::API
    attr_accessor :container_port
    attr_accessor :host_ip
    attr_accessor :host_port
    attr_accessor :name
    attr_accessor :protocol

    def initialize(obj)
      _set!(obj)
    end
  end
end