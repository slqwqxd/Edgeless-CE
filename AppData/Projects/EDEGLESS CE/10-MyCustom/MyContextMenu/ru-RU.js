patch_name = "Моё Контекстное Меню";

if ($app_host_lang == $lang) {
    $patches_var['i18n.restart_explorer_item'] = "Перезапустить Проводник";
}

patch_i18n = {
    "Add Restart Explorer desktop menu:":"Добавить перезапуск проводника в меню рабочего стола:",
    "Restart Explorer":$patches_var['i18n.restart_explorer_item'],
    "Always show the Open Command Prompt Here extended menu item":"Всегда показывать пункт расширенного меню Открыть Командную Строку Здесь"
}
