module KubernetesReferences
  class VolumeMount < KubernetesReferences::API
    attr_accessor :mount_path
    attr_accessor :mount_propagation
    attr_accessor :name
    attr_accessor :read_only
    attr_accessor :sub_path
    attr_accessor :sub_path_expr

    def initialize(obj)
      _set!(obj)
    end
  end
end