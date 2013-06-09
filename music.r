arpeggidata(applications.weekly$net.destruction, piano, scale = 'Aminor')
r <- arpeggidata(applications.weekly$net.destruction, piano, scale = 'Aminor')
writeWave(r, 'foo.wav')
