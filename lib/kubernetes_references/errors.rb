# frozen_string_literal: true

module KubernetesReferences
  class Error < StandardError; end
  class InvalidObjectFieldError < StandardError; end
  class MissingSchemaPathInYAML < StandardError; end
end
