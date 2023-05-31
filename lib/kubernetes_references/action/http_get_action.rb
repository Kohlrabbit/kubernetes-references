module KubernetesReferences
  class HTTPGetAction < KubernetesReferences::API
    attr_accessor :host
    attr_accessor :http_headers
    attr_accessor :path
    attr_accessor :port
    attr_accessor :scheme

    def initialize(obj)
      _set!(obj)
    end
  end
end