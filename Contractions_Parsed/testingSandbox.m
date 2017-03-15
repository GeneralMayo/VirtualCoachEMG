%compare wrist in with wrist out


wristIn = get_emg_data('/Users/Admin/Desktop/CurrentClasses/752/Project/Contractions_Parsed/wristIn0');
wristOut = get_emg_data('/Users/Admin/Desktop/CurrentClasses/752/Project/Contractions_Parsed/wristOut0');
size(wristIn)
compareChannelDistributions(wristIn,wristOut);

wristIn = get_emg_data('/Users/Admin/Desktop/CurrentClasses/752/Project/Contractions_Parsed/wristIn1');
wristOut = get_emg_data('/Users/Admin/Desktop/CurrentClasses/752/Project/Contractions_Parsed/wristOut1');
size(wristIn)
compareChannelDistributions(wristIn,wristOut);