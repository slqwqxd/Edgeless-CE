patch_name = 'WinPE OCs(ADK)'
set_default_option('adk.wpe_path', 'C:\\Program Files (x86)\\Windows Kits\\10\\Assessment and Deployment Kit\\Windows Preinstallation Environment');
set_default_option('adk.lang', '-')

patch_selected = false;
patch_hidden = true;
if ($ui_settings['mode'] == 'Developer') {
    patch_hidden = false;
}
