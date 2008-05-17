module ClassyInputs
  def tag_with_input_class_name(*args)
    name, options = args[0..1]
    if name.to_s =~ /^input$/
      classes = (options['class'] || '').split(/\s+/)
      type = options['type'] || 'text'
      classes << type unless classes.include?(type)
      options['class'] = classes.join(' ')
    end
    tag_without_input_class_name(*args)
  end
end
