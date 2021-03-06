
class Ppl::Command::Add < Ppl::Application::Command

  def initialize
    @name        = "add"
    @description = "Add a new contact"
  end

  def options(parser, options)
    parser.banner = "usage: ppl add <contact> <name>"
  end

  def execute(input, output)
    contact_id   = input.arguments.shift
    contact_name = input.arguments.shift

    if contact_id.nil?
      raise Ppl::Error::IncorrectUsage, "No contact specified"
    end

    if contact_name.nil?
      raise Ppl::Error::IncorrectUsage, "No name specified"
    end

    contact = Ppl::Entity::Contact.new
    contact.id = contact_id.dup
    contact.name = contact_name.dup

    @storage.save_contact(contact)
    return true
  end

end

