# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#gitrepovolumesource-v1-core
  class GitRepoVolumeSource < KubernetesReferences::API
    # @dynamic directory, directory=
    attr_accessor :directory
    # @dynamic repository, repository=
    attr_accessor :repository
    # @dynamic revision, revision=
    attr_accessor :revision

    def initialize(obj)
      super()
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
