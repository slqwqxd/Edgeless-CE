patch_name = "我的選單";

if ($app_host_lang == $lang) {
    $patches_var['i18n.restart_explorer_item'] = '重啟桌面進程';
}

patch_i18n = {
    "Add Restart Explorer desktop menu:":"新增 重啟桌面進程 選單:",
    "Restart Explorer":$patches_var['i18n.restart_explorer_item'],
    "Always show the Open Command Prompt Here extended menu item":"總是顯示 打開命令提示符 擴展選單"
}