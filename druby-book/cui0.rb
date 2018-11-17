class ReminderCUI
  def initialize(reminder)
    @model = reminder
  end

  def list
    @model.to_a.each do |k, v|
      puts format_item(k, v)
    end
  end

  def add(str)
    @model.add(str)
  end

  def show(key)
    puts format_item(key, @model[key])
  end

  def delete(key)
    puts "delete? (Y/n): #{@model[key]}"

    if /\s*n\s*/ =~ gets
      puts "cancaeled"
      return
    end
    @model.delete(key)
  end

  private
  def format_item(key, str)
    sprintf("%3d: %s\n", key, str)
  end
end
