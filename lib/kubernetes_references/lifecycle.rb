module KubernetesReferences
  class Lifecycle < KubernetesReferences::API
    # @dynamic post_start, post_start=
    attr_accessor :post_start
    # @dynamic pre_stop, pre_stop=
    attr_accessor :pre_stop

    def initialize(obj)
      _set!(obj)
    end

    def _schema
      {
        postStart: @post_start.schema,
        preStop: @pre_stop.schema
      }
    end
  end
end