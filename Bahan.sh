g='\033[32;1m'
p='\033[35;1m'
c='\033[36;1m'
r='\033[31;1m'
y='\033[33;1m'
bar() {
    f=(
        "[\e[1;91m■\e[0m□□□□□□□□□]"
        "[\e[1;92m■■\e[0m□□□□□□□□]"
        "[\e[1;93m■■■\e[0m□□□□□□□]"
        "[\e[1;94m■■■■\e[0m□□□□□□]"
        "[\e[1;95m■■■■■\e[0m□□□□□]"
        "[\e[1;96m■■■■■■\e[0m□□□□]"
        "[\e[1;97m■■■■■■■\e[0m□□□]"
        "[\e[1;92m■■■■■■■■\e[0m□□]"
        "[\e[1;93m■■■■■■■■■\e[0m□]"
        "[\e[1;94m■■■■■■■■■■\e[0m]"
    )
    while true; do
        for fra in "${f[@]}"; do
            printf "\r$fra \033[41;1m\033[1;32mSerangan_Aktif!!\033[0m "
            sleep 0.12
        done
    done
}
clear
mek="ansi-rounded"
echo "
██████╗ ██╗   ██╗███╗   ███╗██████╗ 
██╔══██╗██║   ██║████╗ ████║██╔══██╗
██║  ██║██║   ██║██╔████╔██║██████╔╝
██║  ██║██║   ██║██║╚██╔╝██║██╔═══╝ 
██████╔╝╚██████╔╝██║ ╚═╝ ██║██║     
╚═════╝  ╚═════╝ ╚═╝     ╚═╝╚═╝ 
" | boxes -d "$mek" | lolcat
echo ""
echo -e "\033[100;32m======================================\033[0m"
echo -e "${p}       Developer ${r}: ${c}ViewTech OFC"
echo -e "\033[100;32m======================================\033[0m"
echo ""
read -p "$(echo -e "${y}Masukkan NPSN target ${r}[ ${g}contoh : 206xxx ${r}]${c} : ")" get
if [ -z "$get" ]; then
    clear 
    echo ""
    echo -e "${r} Target tidak boleh kosong."
    echo ""
    exit 1
fi
echo ""
echo -e "\033[100;36mHENTIKAN PENYERANGAN TEKAN [ CTRL + C ]\033[0m"
echo ""
bar