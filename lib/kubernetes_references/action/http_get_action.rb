# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#httpgetaction-v1-core
  class HTTPGetAction < KubernetesReferences::API
    # @dynamic host, host=, http_headers, http_headers=, path, path=, port, port=, scheme, scheme=
    attr_accessor :host
    attr_accessor :http_headers, :path, :port, :scheme

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        host: @host,
        httpHeaders: @http_headers.map(&:schema),
        path: @path,
        port: @port,
        scheme: @scheme
      }
    end
  end
end
