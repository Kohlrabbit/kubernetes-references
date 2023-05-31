module KubernetesReferences
  class DownwardAPIProjection < KubernetesReferences::API
    attr_accessor :items

    def initialize(obj)
      _set!(obj)
    end
  end
end