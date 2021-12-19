module HelperUnique
  def unique(tags)
    if tags.length() <= 1 then
      tags
    else
      head, *tail = tags
      tail.delete(head)
      return [head] + unique(tail)
    end
  end
end
