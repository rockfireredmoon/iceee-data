project('tawd-data-valkals-shadow', [], version: '0.9.0', default_options : [
	'prefix=/usr',
	'localstatedir=/var'])
	
	
glob_static_prog = find_program('Meson/glob_static.py') 
glob_variable_prog = find_program('Meson/glob_variable.py') 
glob_static = run_command(glob_static_prog, check: true) 
glob_variable = run_command(glob_variable_prog, check: true) 

# Variable Data (Scenery, Instance Data, Creature Edits)
if get_option('cfg_VariableDataPath') == ''
	variabledatapath = get_option('localstatedir') + '/lib/tawd/Variable'
else
	variabledatapath = get_option('cfg_VariableDataPath')
endif
	
# Static Data (Creature Definitions, Items, Loot Tables and lots more)
if get_option('cfg_StaticDataPath') == ''
	staticdatapath = get_option('prefix') + '/share/tawd/Static'
else
	staticdatapath = get_option('cfg_StaticDataPath')
endif

install_data(sources: glob_static.stdout().strip().split('\n'), preserve_path: true, install_dir : staticdatapath)
install_data(sources: glob_variable.stdout().strip().split('\n'), preserve_path: true, install_dir : variabledatapath)
