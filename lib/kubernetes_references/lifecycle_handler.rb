module KubernetesReferences
  class LifecycleHandler < KubernetesReferences::API
    # @dynamic exec, exec=
    attr_accessor :exec
    # @dynamic http_get, http_get=
    attr_accessor :http_get
    # @dynamic tcp_socket, tcp_socket=
    attr_accessor :tcp_socket # deprecated in v1.23

    def initialize(obj)
      _set!(obj)
    end
  end
end