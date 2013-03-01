# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format
# (all these examples are active by default):
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

ActiveSupport::Inflector.inflections do |inflect|
  inflect.plural /^(ox)$/i, '\1en'
  inflect.singular /^(ox)en/i, '\1'
  inflect.irregular 'region', 'regiones'
  inflect.irregular 'organizacion', 'organizaciones'
  inflect.irregular 'ciudad', 'ciudades'
  inflect.irregular 'materia', 'materias'
  inflect.irregular 'instancia', 'instancias'
  inflect.irregular 'materias_instancia', 'materias_instancias'
  inflect.irregular 'error impide', 'errores impidieron'
  inflect.irregular 'instancia_materia', 'instancia_materias'
end