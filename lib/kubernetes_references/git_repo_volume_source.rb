module KubernetesReferences
  class GitRepoVolumeSource < KubernetesReferences::API
    attr_accessor :directory
    attr_accessor :repository
    attr_accessor :revision

    def initialize(obj)
      _set!(obj)
    end
  end
end