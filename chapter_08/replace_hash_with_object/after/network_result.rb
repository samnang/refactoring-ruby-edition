class NetworkResult
  attr_reader :old_networks, :nodes
  attr_accessor :name

  def initialize
    @nodes, @old_networks = [], []
  end

  def name
    @old_networks.collect {|network| network.name }.join(" - ")
  end
end

new_network = NetworkResult.new

new_network.old_networks << node.network
new_network.nodes << node
