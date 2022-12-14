patch_name = "構建事件";

patch_i18n = {
    "Use Custom ISO Script":"使用自定義ISO做成腳本",
    "Pre-Process WIM file":"預處理WIM映像",
    "Mount WIM file action":"掛載WIM映像動作",
    "Built-in":["默認"],
    "None":["不處理"],
    " Custom":[" 自定義"],
    "Load Registry Hive":"載入註冊表配置單元檔案",
    "Pre-Commit WIM file":"預提交WIM映像",
    "Commit WIM file action":"保存WIM映像的更改動作"
}


if ($app_host_lang == $lang) {
    set_default_option('build.preprocess_wim_script', '_00-預處理WIM映像.bat');
    set_default_option('build.mount_wim_script', '_10-掛載WIM映像.bat');
    set_default_option('build.precommit_wim_script', '_80-預提交WIM映像.bat');
    set_default_option('build.commit_wim_script', '_90-保存WIM映像.bat');
}