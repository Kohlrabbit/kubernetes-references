module KubernetesReferences
  class GitRepoVolumeSource < KubernetesReferences::API
    # @dynamic directory, directory=
    attr_accessor :directory
    # @dynamic repository, repository=
    attr_accessor :repository
    # @dynamic revision, revision=
    attr_accessor :revision

    def initialize(obj)
      _set!(obj)
    end

    def _schema
      {
        directory: @directory,
        repository: @repository,
        revision: @revision
      }
    end
  end
end