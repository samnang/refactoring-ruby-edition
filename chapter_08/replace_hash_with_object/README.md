## Replace Hash with Object
You have a Hash that stores several different types of objects, and is passed around and used for more than one purpose.

*Replace the Hash with an object that has a field for each key.*

```ruby
new_network = { :nodes => [], :old_networks => [] }

new_network[:old_networks] << node.network
new_network[:nodes] << node

new_network[:name] = new_network[:old_networks].collect do |network|
  network.name
end.join(" - ")

          ||
          ||
          ||
         _||_
         \  /
          \/

new_network = NetworkResult.new

new_network.old_networks << node.network
new_network.nodes << node

new_network.name = new_network.old_networks.collect do |network|
  network.name
end.join(" - ")
```
