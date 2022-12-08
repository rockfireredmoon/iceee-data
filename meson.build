project('tawd-data-valkals-shadow', [], version: '0.9.0', default_options : [
	'prefix=/usr',
	'localstatedir=/var'])
	
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

install_subdir('Static/Achievements', install_dir : staticdatapath)
install_subdir('Static/AIScript', install_dir : staticdatapath)
install_subdir('Static/AssetCatalogue', install_dir : staticdatapath)
install_subdir('Static/Books', install_dir : staticdatapath)
install_subdir('Static/Data', install_dir : staticdatapath)
install_subdir('Static/Dialog', install_dir : staticdatapath)
install_subdir('Static/GroveTemplates', install_dir : staticdatapath)
install_subdir('Static/ItemMod', install_dir : staticdatapath)
install_subdir('Static/Loot', install_dir : staticdatapath)
install_subdir('Static/Packages', install_dir : staticdatapath)
install_subdir('Static/QuestScripts', install_dir : staticdatapath)
install_subdir('Variable/Creatures', install_dir : variabledatapath)
install_subdir('Variable/Instance', install_dir : variabledatapath)
install_subdir('Variable/Scenery', install_dir : variabledatapath)
