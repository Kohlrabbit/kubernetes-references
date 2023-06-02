# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#cephfsvolumesource-v1-core
  class CephFSVolumeSource < KubernetesReferences::API
    # @dynamic monitors, monitors=
    attr_accessor :monitors
    # @dynamic path, path=
    attr_accessor :path
    # @dynamic read_only, read_only=
    attr_accessor :read_only
    # @dynamic secret_file, secret_file=
    attr_accessor :secret_file
    # @dynamic secret_ref, secret_ref=
    attr_accessor :secret_ref
    # @dynamic user, user=
    attr_accessor :user

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        monitors: @monitors,
        path: @path,
        readOnly: @read_only,
        secretFile: @secret_file,
        secretRef: @secret_ref.schema,
        user: @user
      }
    end
  end
end
