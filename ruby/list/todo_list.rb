class TodoList

  def initialize(item)
    @items = item
  end

  def get_items
    @items 
  end

  def add_item(x)
    @items << x
  end

  def delete_item(y)
    @items.delete(y)
  end

  def get_item(z)
    @items[z]
  end

end