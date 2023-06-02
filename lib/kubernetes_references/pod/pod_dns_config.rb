# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#poddnsconfig-v1-core
  class PodDNSConfig < KubernetesReferences::API
    # @dynamic nameservers, nameservers=
    attr_accessor :nameservers
    # @dynamic options, options=
    attr_accessor :options
    # @dynamic searches, searches=
    attr_accessor :searches

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        nameservers: @nameservers,
        options: @options.map(&:schema),
        searches: @searches
      }
    end
  end
end
