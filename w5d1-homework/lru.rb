class LRUCache
  def initialize(size)
      @max_size = size
      @cache =[]
  end

  def count
    # returns number of elements currently in cache
    @cache.size
  end

  def add(el)
    # adds element to cache according to LRU principle
    if @cache.size < @max_size
      @cache.push(el)
    else
      @cache.shift
      @cache.push(el)
    end
    @cache
  end

  def show
    # shows the items in the cache, with the LRU item first
    @cache
  end

  private
  # helper methods go here!

end