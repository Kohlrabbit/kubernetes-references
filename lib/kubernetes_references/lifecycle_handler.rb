module KubernetesReferences
  class LifecycleHandler < KubernetesReferences::API
    attr_accessor :exec
    attr_accessor :http_get
    attr_accessor :tcp_socket # deprecated in v1.23

    def initialize(obj)
      _set!(obj)
    end
  end
end