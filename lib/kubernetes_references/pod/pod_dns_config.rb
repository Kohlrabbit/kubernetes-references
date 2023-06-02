module KubernetesReferences
  class PodDNSConfig < KubernetesReferences::API
    # @dynamic nameservers, nameservers=
    attr_accessor :nameservers
    # @dynamic options, options=
    attr_accessor :options
    # @dynamic searches, searches=
    attr_accessor :searches

    def initialize(obj)
      _set!(obj)
    end

    def _schema
      {
        nameservers: @nameservers,
        options: @options.map{|r| r.schema},
        searches: @searches
      }
    end
  end
end