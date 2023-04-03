require "set"
class LRUCache
  def initialize(size)
      @max_size = size
      @cache =[].to_set

  end

  def count
    # returns number of elements currently in cache
    @cache.size
  end

  def add(el)
    # adds element to cache according to LRU principle
    if @cache.size >= @max_size && @cache.include?(el)
        @cache.delete(el)#something is wrong here. Can't delete element inside set to re-add on top
    elsif @cache.size >= @max_size
        @cache.delete(@cache.to_a.first)
    end
    @cache << el
    @cache
  end

  def show
    # shows the items in the cache, with the LRU item first
    @cache.to_a
  end

  private
  # helper methods go here!

end