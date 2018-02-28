# class Node
#   attr_accessor :data, :next_node

#   def initialize(data, next_node)
#     @data = data
#     @next_node = next_node
#   end
# end



# class LinkedList
#   attr_accessor :head_node, :last_node

#   # We'll want to keep track of the head node and
#   # the last node to make adding and subtracting easy
#   # Allow initializing the list with a first node
#   def initialize(first_node = nil)
#     @head_node = first_node
#     @last_node = first_node
#   end

#   Struct.new("Node", :data, :next_node)

#   def add_first_node(data)
#     @head_node = Node.new(data, nil)
#     @last_node = @head_node
#   end

#   # Add a node to the end of the list
#   def add_node(data)
#     # If we don't have a head_node yet, that means the list is empty
#     # We can treat this case as a `add_first_node` method
#     unless @head_node
#       self.add_first_node(data)
#     else
#       new_node = Node.new(data, nil)
#       # First, point the last node to our new one
#       @last_node.next_node = new_node
#       # Set our new node as the official last node
#       @last_node = new_node
#     end
#   end

#   # Remove the node at this position (assume there is one there)
#   #  We'll crawl the list and save the prev
#   def remove_node(index)
#     counter = 0
#     current_node = @head_node
#     prev_node = nil

#     # start crawling until we hit the index
#     while counter < index
#       prev_node = current_node
#       current_node = current_node.next_node
#       counter += 1
#     end

#     # preserve the current next_node location
#     next_node_loc = current_node.next_node
#     # remove the reference to the next node from the current node
#     # to remove it from the list
#     current_node.next_node = nil
#     # attach the next node location to the previous node
#     # to link the list back together
#     prev_node.next_node = next_node_loc
#   end

#   def find_node(index)
#     counter = 0
#     current_node = @head_node
#     #start crawling
#     while counter < index
#       current_node = current_node.next_node
#       counter += 1
#     end
#     current_node
#   end

#   def print_list
#     current_node = @head_node

#     while current_node != nil
#       p current_node.data
#       current_node = current_node.next_node
#     end
#   end
# end

# my_list = LinkedList.new
# my_list.add_node('cat')
# my_list.add_node('corvid')
# my_list.add_node('cow')
# # my_list.remove_node(1)
# my_list.find_node(2)
# # my_list.print_list
# # p my_list



class LinkedList
  attr_accessor :head_node, :last_node

  # We'll want to keep track of the head node and
  # the last node to make adding and subtracting easy
  # Allow initializing the list with a first node
  def initialize(first_node = nil)
    @head_node = first_node
    @last_node = first_node
    Struct.new("Node", :data, :next_node)
  end


  def add_first_node(data)
    @head_node = Struct::Node.new(data, nil)
    @last_node = @head_node
  end

  # Add a node to the end of the list
  def add_node(data)
    # If we don't have a head_node yet, that means the list is empty
    # We can treat this case as a `add_first_node` method
    unless @head_node
      self.add_first_node(data)
    else
      new_node = Struct::Node.new(data, nil)
      # First, point the last node to our new one
      @last_node.next_node = new_node
      # Set our new node as the official last node
      @last_node = new_node
    end
  end

  # Remove the node at this position (assume there is one there)
  #  We'll crawl the list and save the prev
  def remove_node(index)
    counter = 0
    current_node = @head_node
    prev_node = nil

    # start crawling until we hit the index
    while counter < index
      prev_node = current_node
      current_node = current_node.next_node
      counter += 1
    end

    # preserve the current next_node location
    next_node_loc = current_node.next_node
    # remove the reference to the next node from the current node
    # to remove it from the list
    current_node.next_node = nil
    # attach the next node location to the previous node
    # to link the list back together
    prev_node.next_node = next_node_loc
  end

  def find_node(index)
    counter = 0
    current_node = @head_node
    #start crawling
    while counter < index
      current_node = current_node.next_node
      counter += 1
    end
    current_node
  end

  def print_list
    current_node = @head_node

    while current_node != nil
      p current_node.data
      current_node = current_node.next_node
    end
  end
end

my_list = LinkedList.new
my_list.add_node('cat')
my_list.add_node('corvid')
my_list.add_node('cow')
# my_list.remove_node(1)
# p my_list.find_node(2)
my_list.print_list
# p my_list



