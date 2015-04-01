<%

#TimeZone
#
set title [mc "TimeZone:"]
dict set pageinfo title  $title 
set bhtml [bhtml new]
set timezones {Pacific/Niue -11:00:00 Pacific/Pago_Pago -11:00:00 US/Samoa -11:00:00 Pacific/Samoa -11:00:00 Pacific/Midway -11:00:00 Pacific/Johnston -10:00:00 Pacific/Honolulu -10:00:00 US/Hawaii -10:00:00 US/Aleutian -10:00:00 America/Adak -10:00:00 America/Atka -10:00:00 Pacific/Rarotonga -10:00:00 Pacific/Tahiti -10:00:00 Pacific/Marquesas -09:30:00 America/Anchorage -09:00:00 US/Alaska -09:00:00 America/Yakutat -09:00:00 America/Juneau -09:00:00 Pacific/Gambier -09:00:00 America/Nome -09:00:00 America/Sitka -09:00:00 America/Ensenada -08:00:00 America/Tijuana -08:00:00 America/Dawson -08:00:00 US/Pacific -08:00:00 US/Pacific-New -08:00:00 Mexico/BajaNorte -08:00:00 Pacific/Pitcairn -08:00:00 America/Vancouver -08:00:00 Canada/Yukon -08:00:00 Canada/Pacific -08:00:00 America/Santa_Isabel -08:00:00 America/Metlakatla -08:00:00 America/Whitehorse -08:00:00 America/Los_Angeles -08:00:00 America/Phoenix -07:00:00 America/Creston -07:00:00 America/Cambridge_Bay -07:00:00 America/Shiprock -07:00:00 America/Ojinaga -07:00:00 Canada/Mountain -07:00:00 America/Inuvik -07:00:00 US/Mountain -07:00:00 America/Yellowknife -07:00:00 America/Hermosillo -07:00:00 America/Mazatlan -07:00:00 Mexico/BajaSur -07:00:00 US/Arizona -07:00:00 America/Denver -07:00:00 America/Chihuahua -07:00:00 America/Boise -07:00:00 America/Dawson_Creek -07:00:00 America/Edmonton -07:00:00 Canada/East-Saskatchewan -06:00:00 Canada/Central -06:00:00 America/Matamoros -06:00:00 America/Guatemala -06:00:00 America/Winnipeg -06:00:00 America/Cancun -06:00:00 Pacific/Galapagos -06:00:00 America/Rankin_Inlet -06:00:00 America/El_Salvador -06:00:00 America/Indiana/Knox -06:00:00 America/Indiana/Tell_City -06:00:00 America/Belize -06:00:00 America/Bahia_Banderas -06:00:00 America/Chicago -06:00:00 America/Monterrey -06:00:00 America/Tegucigalpa -06:00:00 America/Swift_Current -06:00:00 America/Mexico_City -06:00:00 America/Rainy_River -06:00:00 America/Regina -06:00:00 America/Menominee -06:00:00 America/Costa_Rica -06:00:00 America/Resolute -06:00:00 America/North_Dakota/New_Salem -06:00:00 America/North_Dakota/Beulah -06:00:00 America/North_Dakota/Center -06:00:00 America/Managua -06:00:00 America/Knox_IN -06:00:00 America/Merida -06:00:00 Mexico/General -06:00:00 US/Indiana-Starke -06:00:00 US/Central -06:00:00 Canada/Saskatchewan -06:00:00 America/Kentucky/Monticello -05:00:00 America/Indianapolis -05:00:00 America/Grand_Turk -05:00:00 America/Nassau -05:00:00 America/Jamaica -05:00:00 America/Guayaquil -05:00:00 US/Michigan -05:00:00 America/Pangnirtung -05:00:00 US/East-Indiana -05:00:00 America/Detroit -05:00:00 America/Thunder_Bay -05:00:00 America/Port-au-Prince -05:00:00 America/Bogota -05:00:00 US/Eastern -05:00:00 America/Fort_Wayne -05:00:00 Canada/Eastern -05:00:00 America/Coral_Harbour -05:00:00 America/Cayman -05:00:00 America/Lima -05:00:00 America/Louisville -05:00:00 America/Nipigon -05:00:00 America/Montreal -05:00:00 America/Havana -05:00:00 America/Iqaluit -05:00:00 Pacific/Easter -05:00:00 Chile/EasterIsland -05:00:00 America/Atikokan -05:00:00 America/Panama -05:00:00 America/Toronto -05:00:00 America/New_York -05:00:00 America/Indiana/Vevay -05:00:00 America/Indiana/Vincennes -05:00:00 America/Indiana/Marengo -05:00:00 America/Indiana/Indianapolis -05:00:00 America/Indiana/Petersburg -05:00:00 America/Indiana/Winamac -05:00:00 America/Kentucky/Louisville -05:00:00 America/Caracas -04:30:00 America/Porto_Velho -04:00:00 America/St_Vincent -04:00:00 Canada/Atlantic -04:00:00 America/St_Lucia -04:00:00 America/Martinique -04:00:00 America/Anguilla -04:00:00 America/Halifax -04:00:00 America/St_Kitts -04:00:00 America/Montserrat -04:00:00 America/Aruba -04:00:00 America/Tortola -04:00:00 America/Port_of_Spain -04:00:00 America/Virgin -04:00:00 America/Porto_Acre -04:00:00 America/Marigot -04:00:00 America/Goose_Bay -04:00:00 America/Curacao -04:00:00 America/Puerto_Rico -04:00:00 Brazil/Acre -04:00:00 Atlantic/Bermuda -04:00:00 America/Dominica -04:00:00 Brazil/West -04:00:00 America/Guyana -04:00:00 America/Blanc-Sablon -04:00:00 America/St_Barthelemy -04:00:00 America/St_Thomas -04:00:00 America/Guadeloupe -04:00:00 America/Rio_Branco -04:00:00 America/Boa_Vista -04:00:00 America/Moncton -04:00:00 America/Grenada -04:00:00 America/Santo_Domingo -04:00:00 America/Eirunepe -04:00:00 America/Barbados -04:00:00 America/Antigua -04:00:00 America/La_Paz -04:00:00 America/Thule -04:00:00 America/Glace_Bay -04:00:00 America/Manaus -04:00:00 America/Kralendijk -04:00:00 America/Lower_Princes -04:00:00 Canada/Newfoundland -03:30:00 America/St_Johns -03:30:00 America/Argentina/Ushuaia -03:00:00 America/Fortaleza -03:00:00 Chile/Continental -03:00:00 America/Campo_Grande -03:00:00 America/Argentina/Tucuman -03:00:00 America/Miquelon -03:00:00 America/Argentina/Salta -03:00:00 America/Argentina/Cordoba -03:00:00 Antarctica/Rothera -03:00:00 America/Rosario -03:00:00 America/Argentina/Mendoza -03:00:00 America/Mendoza -03:00:00 America/Asuncion -03:00:00 America/Catamarca -03:00:00 America/Santiago -03:00:00 America/Bahia -03:00:00 America/Argentina/San_Luis -03:00:00 America/Cordoba -03:00:00 America/Argentina/La_Rioja -03:00:00 America/Argentina/San_Juan -03:00:00 America/Recife -03:00:00 Atlantic/Stanley -03:00:00 America/Cayenne -03:00:00 America/Godthab -03:00:00 America/Belem -03:00:00 America/Argentina/Rio_Gallegos -03:00:00 America/Santarem -03:00:00 America/Paramaribo -03:00:00 America/Maceio -03:00:00 America/Argentina/Buenos_Aires -03:00:00 Antarctica/Palmer -03:00:00 America/Argentina/Jujuy -03:00:00 America/Cuiaba -03:00:00 America/Araguaina -03:00:00 America/Argentina/Catamarca -03:00:00 America/Jujuy -03:00:00 America/Argentina/ComodRivadavia -03:00:00 America/Buenos_Aires -03:00:00 Atlantic/South_Georgia -02:00:00 America/Noronha -02:00:00 America/Montevideo -02:00:00 America/Sao_Paulo -02:00:00 Brazil/East -02:00:00 Brazil/DeNoronha -02:00:00 America/Scoresbysund -01:00:00 Atlantic/Cape_Verde -01:00:00 Atlantic/Azores -01:00:00 Africa/Casablanca 00:00:00 Africa/Accra 00:00:00 Europe/London 00:00:00 Africa/Conakry 00:00:00 Atlantic/Faroe 00:00:00 Africa/El_Aaiun 00:00:00 Africa/Bissau 00:00:00 Africa/Abidjan 00:00:00 Europe/Dublin 00:00:00 America/Danmarkshavn 00:00:00 Europe/Isle_of_Man 00:00:00 Africa/Ouagadougou 00:00:00 Africa/Freetown 00:00:00 Africa/Lome 00:00:00 Africa/Timbuktu 00:00:00 Europe/Lisbon 00:00:00 Atlantic/Madeira 00:00:00 Africa/Monrovia 00:00:00 Africa/Dakar 00:00:00 Africa/Nouakchott 00:00:00 Africa/Bamako 00:00:00 Atlantic/Canary 00:00:00 Atlantic/Faeroe 00:00:00 Africa/Banjul 00:00:00 Africa/Sao_Tome 00:00:00 Europe/Belfast 00:00:00 Europe/Jersey 00:00:00 Europe/Guernsey 00:00:00 Atlantic/St_Helena 00:00:00 Atlantic/Reykjavik 00:00:00 Africa/Ndjamena 01:00:00 Africa/Tunis 01:00:00 Europe/Luxembourg 01:00:00 Europe/Copenhagen 01:00:00 Europe/Andorra 01:00:00 Europe/Vaduz 01:00:00 Europe/Budapest 01:00:00 Europe/Sarajevo 01:00:00 Europe/Podgorica 01:00:00 Europe/Monaco 01:00:00 Africa/Brazzaville 01:00:00 Europe/Rome 01:00:00 Europe/Skopje 01:00:00 Europe/Brussels 01:00:00 Europe/Bratislava 01:00:00 Europe/Amsterdam 01:00:00 Europe/Oslo 01:00:00 Europe/Madrid 01:00:00 Africa/Malabo 01:00:00 Africa/Ceuta 01:00:00 Africa/Niamey 01:00:00 Europe/Berlin 01:00:00 Europe/Ljubljana 01:00:00 Europe/Tirane 01:00:00 Europe/Prague 01:00:00 Europe/Vienna 01:00:00 Europe/Stockholm 01:00:00 Atlantic/Jan_Mayen 01:00:00 Europe/Zagreb 01:00:00 Europe/Gibraltar 01:00:00 Europe/Vatican 01:00:00 Europe/Zurich 01:00:00 Europe/Warsaw 01:00:00 Europe/San_Marino 01:00:00 Europe/Busingen 01:00:00 Africa/Kinshasa 01:00:00 Europe/Paris 01:00:00 Africa/Algiers 01:00:00 Europe/Malta 01:00:00 Europe/Belgrade 01:00:00 Africa/Libreville 01:00:00 Arctic/Longyearbyen 01:00:00 Africa/Bangui 01:00:00 Africa/Porto-Novo 01:00:00 Africa/Tripoli 01:00:00 Africa/Lagos 01:00:00 Africa/Douala 01:00:00 Africa/Luanda 01:00:00 Europe/Tiraspol 02:00:00 Asia/Hebron 02:00:00 Asia/Tel_Aviv 02:00:00 Asia/Gaza 02:00:00 Asia/Jerusalem 02:00:00 Asia/Beirut 02:00:00 Africa/Lusaka 02:00:00 Africa/Kigali 02:00:00 Africa/Blantyre 02:00:00 Africa/Mbabane 02:00:00 Africa/Johannesburg 02:00:00 Asia/Nicosia 02:00:00 Africa/Gaborone 02:00:00 Asia/Damascus 02:00:00 Africa/Lubumbashi 02:00:00 Africa/Bujumbura 02:00:00 Africa/Harare 02:00:00 Africa/Maseru 02:00:00 Africa/Cairo 02:00:00 Africa/Windhoek 02:00:00 Africa/Maputo 02:00:00 Europe/Helsinki 02:00:00 Europe/Mariehamn 02:00:00 Europe/Bucharest 02:00:00 Europe/Simferopol 02:00:00 Europe/Tallinn 02:00:00 Europe/Istanbul 02:00:00 Europe/Kiev 02:00:00 Asia/Istanbul 02:00:00 Europe/Athens 02:00:00 Europe/Riga 02:00:00 Europe/Vilnius 02:00:00 Europe/Nicosia 02:00:00 Europe/Uzhgorod 02:00:00 Europe/Sofia 02:00:00 Europe/Zaporozhye 02:00:00 Europe/Chisinau 02:00:00 Africa/Addis_Ababa 03:00:00 Indian/Mayotte 03:00:00 Africa/Kampala 03:00:00 Africa/Khartoum 03:00:00 Africa/Mogadishu 03:00:00 Europe/Minsk 03:00:00 Indian/Comoro 03:00:00 Europe/Kaliningrad 03:00:00 Indian/Antananarivo 03:00:00 Asia/Amman 03:00:00 Africa/Nairobi 03:00:00 Asia/Bahrain 03:00:00 Africa/Dar_es_Salaam 03:00:00 Africa/Djibouti 03:00:00 Africa/Asmara 03:00:00 Asia/Riyadh 03:00:00 Africa/Juba 03:00:00 Asia/Aden 03:00:00 Asia/Kuwait 03:00:00 Africa/Asmera 03:00:00 Antarctica/Syowa 03:00:00 Asia/Qatar 03:00:00 Asia/Baghdad 03:00:00 Asia/Tehran 03:30:00 Asia/Tbilisi 04:00:00 Indian/Mahe 04:00:00 Indian/Reunion 04:00:00 Indian/Mauritius 04:00:00 Europe/Moscow 04:00:00 Asia/Muscat 04:00:00 Asia/Dubai 04:00:00 Asia/Yerevan 04:00:00 Asia/Baku 04:00:00 Europe/Volgograd 04:00:00 Europe/Samara 04:00:00 Asia/Kabul 04:30:00 Indian/Kerguelen 05:00:00 Antarctica/Mawson 05:00:00 Asia/Dushanbe 05:00:00 Asia/Ashgabat 05:00:00 Asia/Samarkand 05:00:00 Asia/Aqtobe 05:00:00 Asia/Oral 05:00:00 Asia/Ashkhabad 05:00:00 Asia/Karachi 05:00:00 Asia/Tashkent 05:00:00 Asia/Aqtau 05:00:00 Indian/Maldives 05:00:00 Asia/Colombo 05:30:00 Asia/Calcutta 05:30:00 Asia/Kolkata 05:30:00 Asia/Katmandu 05:45:00 Asia/Kathmandu 05:45:00 Asia/Bishkek 06:00:00 Asia/Dacca 06:00:00 Asia/Qyzylorda 06:00:00 Asia/Thimbu 06:00:00 Asia/Almaty 06:00:00 Asia/Yekaterinburg 06:00:00 Antarctica/Vostok 06:00:00 Asia/Thimphu 06:00:00 Indian/Chagos 06:00:00 Asia/Dhaka 06:00:00 Asia/Rangoon 06:30:00 Indian/Cocos 06:30:00 Asia/Bangkok 07:00:00 Asia/Jakarta 07:00:00 Asia/Saigon 07:00:00 Asia/Pontianak 07:00:00 Asia/Novosibirsk 07:00:00 Indian/Christmas 07:00:00 Asia/Omsk 07:00:00 Asia/Phnom_Penh 07:00:00 Asia/Vientiane 07:00:00 Asia/Hovd 07:00:00 Asia/Ho_Chi_Minh 07:00:00 Asia/Novokuznetsk 07:00:00 Antarctica/Davis 07:00:00 Asia/Singapore 08:00:00 Asia/Chungking 08:00:00 Asia/Harbin 08:00:00 Asia/Urumqi 08:00:00 Asia/Ulaanbaatar 08:00:00 Asia/Ulan_Bator 08:00:00 Asia/Choibalsan 08:00:00 Asia/Taipei 08:00:00 Asia/Kuala_Lumpur 08:00:00 Asia/Ujung_Pandang 08:00:00 Asia/Shanghai 08:00:00 Asia/Macau 08:00:00 Asia/Macao 08:00:00 Asia/Brunei 08:00:00 Asia/Kuching 08:00:00 Asia/Chongqing 08:00:00 Asia/Kashgar 08:00:00 Australia/West 08:00:00 Australia/Perth 08:00:00 Asia/Manila 08:00:00 Asia/Krasnoyarsk 08:00:00 Asia/Hong_Kong 08:00:00 Antarctica/Casey 08:00:00 Asia/Makassar 08:00:00 Australia/Eucla 08:45:00 Pacific/Palau 09:00:00 Asia/Pyongyang 09:00:00 Asia/Seoul 09:00:00 Asia/Jayapura 09:00:00 Asia/Tokyo 09:00:00 Asia/Dili 09:00:00 Asia/Irkutsk 09:00:00 Australia/North 09:30:00 Australia/Darwin 09:30:00 Pacific/Port_Moresby 10:00:00 Antarctica/DumontDUrville 10:00:00 Asia/Yakutsk 10:00:00 Pacific/Truk 10:00:00 Australia/Brisbane 10:00:00 Asia/Khandyga 10:00:00 Pacific/Saipan 10:00:00 Australia/Queensland 10:00:00 Pacific/Guam 10:00:00 Australia/Lindeman 10:00:00 Pacific/Yap 10:00:00 Pacific/Chuuk 10:00:00 Australia/Yancowinna 10:30:00 Australia/South 10:30:00 Australia/Adelaide 10:30:00 Australia/Broken_Hill 10:30:00 Pacific/Efate 11:00:00 Australia/LHI 11:00:00 Australia/Hobart 11:00:00 Pacific/Guadalcanal 11:00:00 Asia/Sakhalin 11:00:00 Pacific/Kosrae 11:00:00 Asia/Vladivostok 11:00:00 Pacific/Ponape 11:00:00 Pacific/Noumea 11:00:00 Antarctica/Macquarie 11:00:00 Pacific/Pohnpei 11:00:00 Australia/ACT 11:00:00 Asia/Ust-Nera 11:00:00 Australia/Tasmania 11:00:00 Australia/Victoria 11:00:00 Australia/Sydney 11:00:00 Australia/Canberra 11:00:00 Australia/NSW 11:00:00 Australia/Lord_Howe 11:00:00 Australia/Melbourne 11:00:00 Australia/Currie 11:00:00 Pacific/Norfolk 11:30:00 Pacific/Kwajalein 12:00:00 Asia/Anadyr 12:00:00 Asia/Magadan 12:00:00 Pacific/Majuro 12:00:00 Pacific/Wallis 12:00:00 Pacific/Tarawa 12:00:00 Pacific/Nauru 12:00:00 Pacific/Funafuti 12:00:00 Pacific/Wake 12:00:00 Asia/Kamchatka 12:00:00 Pacific/Tongatapu 13:00:00 Pacific/Auckland 13:00:00 Antarctica/McMurdo 13:00:00 Pacific/Fiji 13:00:00 Pacific/Enderbury 13:00:00 Antarctica/South_Pole 13:00:00 Pacific/Fakaofo 13:00:00 Pacific/Chatham 13:45:00 Pacific/Apia 14:00:00 Pacific/Kiritimati 14:00:00}

%>
