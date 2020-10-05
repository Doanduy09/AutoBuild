# AutoBuild Script Module by Hyy2001

StorageDetails() {
Update=2020.10.05
Module_Version=V2.3.2

clear
cd $Home
Say="正在载入统计信息..." && Color_Y
dl_Size=`du -sh Backups/dl | awk '{print $1}'`
Backups_Size=`du -sh Backups | awk '{print $1}'`
Firmware_Size=`du -sh Firmware | awk '{print $1}'`
Packages_Size=`du -sh Packages | awk '{print $1}'`
Lede_Size=`du -sh Projects/Lede | awk '{print $1}'`
Openwrt_Size=`du -sh Projects/Openwrt | awk '{print $1}'`
Lienol_Size=`du -sh Projects/Lienol | awk '{print $1}'`

clear
Say="Storage Details Script $Module_Version" && Color_B
Decoration
Say="项目名称	存储位置				存储占用\n" && Color_G
Type_Space="				"
StorageDetails_Mod Lede /Projects/Lede $Lede_Size
Type_Space="			"
StorageDetails_Mod Openwrt /Projects/Openwrt $Openwrt_Size
StorageDetails_Mod Lienol /Projects/Lienol $Lienol_Size
Type_Space="				"
StorageDetails_Mod 固件 /Firmware $Firmware_Size
StorageDetails_Mod 备份 /Backups $Backups_Size
StorageDetails_Mod [dl]库 /Backups/dl $dl_Size
StorageDetails_Mod 软件包 /Packages $Packages_Size
Decoration
Enter
}

StorageDetails_Mod() {
Say="$1		$2$Type_Space$3" && Color_Y
}
