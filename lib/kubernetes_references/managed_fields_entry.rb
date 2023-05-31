module KubernetesReferences
  class ManagedFieldsEntry < KubernetesReferences::API
    attr_accessor :api_version
    attr_accessor :fields_type
    attr_accessor :fields_v1
    attr_accessor :manager
    attr_accessor :operation
    attr_accessor :subresource
    attr_accessor :time

    def initialize(obj)
      _set!(obj)
    end
  end
end