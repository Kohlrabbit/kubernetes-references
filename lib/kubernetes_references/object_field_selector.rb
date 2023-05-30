module KubernetesReferences
  class ObjectFieldSelector < KubernetesReferences::API
    attr_accessor :api_version
    attr_accessor :field_path

    def initialize(obj)
      _set!(obj)
    end
  end
end