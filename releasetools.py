import common
import edify_generator

def AddAssertions(info):
    info.script.AppendExtra('symlink("/system/vendor/lib/libbltsville_gc2d.2.2.0.0.so", "/system/vendor/lib/libbltsville_gc2d.so");');
    info.script.AppendExtra('symlink("/system/vendor/lib/libbltsville_gc2d.so", "/system/vendor/lib/libbltsville_hw2d.so");');
    info.script.AppendExtra('symlink("/system/vendor/lib/libbltsville_ticpu.2.1.0.0.so", "/system/vendor/lib/libbltsville_ticpu.so");');
    info.script.AppendExtra('symlink("/system/vendor/lib/libbltsville_ticpu.so", "/system/vendor/lib/libbltsville_cpu.so");');
    #info.script.AppendExtra('set_perm_recursive(0, 2000, 06755, 06755, "/system/xbin");');
    info.script.AppendExtra('set_perm(0, 0, 06755, "/system/xbin/librank");');
    info.script.AppendExtra('set_perm(0, 0, 06755, "/system/xbin/procmem");');
    info.script.AppendExtra('set_perm(0, 0, 06755, "/system/xbin/procrank");');
    info.script.AppendExtra('set_perm(0, 0, 0644, "/system/vendor/etc/audio_effects.conf");');
    info.script.AppendExtra('set_perm_recursive(0, 2000, 0755, 0644, "/system/vendor/etc");');
    info.script.AppendExtra('set_perm_recursive(0, 2000, 0755, 0755, "/system/bootmenu");');
    info.script.AppendExtra('set_perm_recursive(0, 2000, 0755, 0755, "/system/bootmenu/binary/");');
    info.script.AppendExtra('set_perm_recursive(0, 2000, 0755, 0755, "/system/bootmenu/script/");');
    info.script.AppendExtra('set_perm_recursive(0, 2000, 0755, 0755, "/system/bootmenu/2nd-init/");');
    info.script.AppendExtra('set_perm_recursive(0, 2000, 0755, 0755, "/system/bootmenu/recovery/sbin/");');
    info.script.AppendExtra('set_perm_recursive(0, 2000, 0775, 0664, "/system/bootmenu/config/");');
    info.script.AppendExtra('set_perm(0, 0, 06755, "/system/bin/finalize_release");');
    info.script.AppendExtra('run_program("/system/bin/finalize_release");');
    edify = info.script
    for i in xrange(len(edify.script)):
        if "assert" in edify.script[i]:
            edify.script[i] = edify.script[i].replace("assert", "ui_print")
        elif "unmount(\"/system\");" in edify.script[i]:
            edify.script[i] = edify.script[i].replace("unmount(\"/system\");", "mount(\"ext3\", \"EMMC\", \"/dev/block/mmcblk1p21\", \"/system\");")
        elif "ui_print(\"Update Boot image...\");" in edify.script[i]:
            edify.script[i] = edify.script[i].replace("ui_print(\"Update Boot image...\");", "")
        elif "write_raw_image" in edify.script[i] and "/dev/block/mmcblk1p15" in edify.script[i]:
            edify.script[i] = edify.script[i].replace("write_raw_image(package_extract_file(\"boot.img\"), \"/dev/block/mmcblk1p15\");", "")
        elif "format" in edify.script[i] and "/dev/block/mmcblk1p21" in edify.script[i]:
            edify.script[i] = edify.script[i].replace("format(\"ext3\", \"EMMC\", \"/dev/block/mmcblk1p21\", \"0\");", "delete_recursive(\"/system\");")
    return

def FullOTA_InstallEnd(info):
    AddAssertions(info)

def IncrementalOTA_InstallEnd(info):
    AddAssertions(info)
