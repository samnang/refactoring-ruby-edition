class MessageCollector
  instance_methods.each do |meth|
    undef_method meth unless meth =~ /^(__|object_id|inspect)/
  end

  def messages
    @messages ||= []
  end

  def method_missing(sym, *args)
    messages << [sym, args]
    self
  end
end
