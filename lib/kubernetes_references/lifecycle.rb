module KubernetesReferences
  class Lifecycle < KubernetesReferences::API
    attr_accessor :post_start
    attr_accessor :pre_stop

    def initialize(obj)
      _set!(obj)
    end
  end
end