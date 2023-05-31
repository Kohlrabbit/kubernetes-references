module KubernetesReferences
  class LabelSelector < KubernetesReferences::API
    attr_accessor :match_expressions
    attr_accessor :match_labels

    def initialize(obj)
      _set!(obj)
    end
  end
end