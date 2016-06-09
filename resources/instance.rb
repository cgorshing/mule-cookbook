actions :create

default_action :create if defined?(default_action)

attribute :name, name_attribute: true, kind_of: String, required: true
attribute :version, kind_of: String, required: true, regex: /\d+(\.\d+)+.*/
attribute :user, kind_of: String, regex: /.*/, default: 'mule'
attribute :group, kind_of: String, regex: /.*/, default: 'mule'
attribute :enterprise_edition, kind_of: [TrueClass, FalseClass], default: false
attribute :license, kind_of: String, regex: /.*/, default: ''
attribute :source, kind_of: String, regex: /.*/, default: '/tmp/mule'
attribute :home, kind_of: String, regex: /.*/, default: '/usr/local/mule-esb'
attribute :env, kind_of: String, regex: /.*/, default: 'test'
attribute :init_heap_size, kind_of: String, regex: /^\d+$/, default: '1024'
attribute :max_heap_size, kind_of: String, regex: /^\d+$/, default: '1024'
attribute :wrapper_additional, kind_of: Array, default: []
attribute :wrapper_defaults, kind_of: [TrueClass, FalseClass], default: true

attr_accessor :exists