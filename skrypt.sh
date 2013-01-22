#!/bin/bash
echo "               #####################################"
echo "               #####################################"
echo "               ##                                 ##"
echo "               ##            AutoBlant            ##"
echo "               ##    Twój osobisty poradnik       ##"
echo "               ##   by M.Soliwodzki Ł.Sadowski    ##"
echo "               ##                                 ##"
echo "               ##                                 ##"
echo "               #####################################"
echo "               #####################################"
echo " "

echo "           Program ma na celu, wskazanie Ci jak najlepszych  
        propozycji samochodów dla interesującego Cię segmentu."
echo "* Jeśli chcesz przejść do opisów segmentów wpisz 1"
echo "* Jeśli chcesz przejść do wyszukiwarki samochodów wpisz 2"
echo "* Jeśli chcesz zakończyć program wpisz 3"
read nr
case "$nr" in
"1")
echo " "
cat plik1.txt
echo " "
echo "* Podaj literę odpowiadającą opisowi segmentu :" 

read seg

case "$seg" in
"A") head -n 52 plik.txt;;
"B") head -n 107 plik.txt | tail -n 56;;
"C") head -n 162 plik.txt | tail -n 55;;
"D") head -n 223 plik.txt | tail -n 61;;
"E") head -n 276 plik.txt | tail -n 53;;
"F")head -n 324 plik.txt | tail -n 49;;
"G")head -n 374 plik.txt | tail -n 50;;
"H")head -n 477 plik.txt | tail -n 50;;
esac
;;
"2")

echo "               #####################################"
echo "               #####################################"
echo "               ##                                 ##"
echo "               ##            AutoBlant            ##"
echo "               ##           Wyszukiwarka          ##"
echo "               ##   by M.Soliwodzki Ł.Sadowski    ##"
echo "               ##                                 ##"
echo "               ##                                 ##"
echo "               #####################################"
echo "               #####################################"
echo " "
echo " Podaj rocznik (od)"
read rocznik1
echo "Podaj rocznik (do)"
read rocznik2
echo "Podaj cenę (od)"
read cena1
echo "Podaj cenę (do)"
read cena2
echo "Podaj przebieg (do)"
read przeb

firefox http://otomoto.pl/osobowe///$rocznik1-$rocznik2/?mileage=$przeb\&price[from]=$cena1\&price[to]=$cena2 ;;
"3")exit;;
esac
