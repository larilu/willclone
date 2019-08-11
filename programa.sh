import os

opcao = -1

while opcao != 0:
	print('''
	[ 1 ] Recarregar 600 Reais [Mauro]
	[ 5 ] Recarregar 630 Reais [Larissa]
	[ 2 ] Gravar 600 reais no Cartao Virgem [Mauro]
	[ 6 ] Gravar 630 reais no Cartao Virgem [Larissa]
	[ 7 ] Resetar Cartao [Mauro]   (Transforma em Virgem)
	[ 8 ] Resetar Cartao [Larissa] (Transforma em Virgem)
	[ 3 ] Ver ID do cartao
	[ 4 ] Sobre
	[ 0 ] Sair
	''')
	opcao = int(input('Escolha um numero: '))
	if opcao == 1:
		os.system('clear')
		os.system('sudo modprobe -r pn533 nfc')
		os.system('sudo modprobe -r pn533_usb')
		os.system('nfc-mfclassic W a original.dmp original.dmp')
	if opcao == 5:
		os.system('clear')
		os.system('sudo modprobe -r pn533 nfc')
		os.system('sudo modprobe -r pn533_usb')
		os.system('nfc-mfclassic W a 600reais.dmp 600reais.dmp')
	if opcao == 6:
		os.system('clear')
		os.system('sudo modprobe -r pn533 nfc')
		os.system('sudo modprobe -r pn533_usb')
		os.system('mfoc -P 500 -O new.dmp')
		os.system('nfc-mfclassic W a 600reais.dmp new.dmp')
	if opcao == 2:
		os.system('clear')
		os.system('sudo modprobe -r pn533 nfc')
		os.system('sudo modprobe -r pn533_usb')
		os.system('mfoc -P 500 -O new.dmp')
		os.system('nfc-mfclassic W a original.dmp new.dmp')
	if opcao == 7:
		os.system('clear')
		os.system('sudo modprobe -r pn533 nfc')
		os.system('sudo modprobe -r pn533_usb')
		os.system('nfc-mfclassic W a resetar.dmp original.dmp')
	if opcao == 8:
		os.system('clear')
		os.system('sudo modprobe -r pn533 nfc')
		os.system('sudo modprobe -r pn533_usb')
		os.system('nfc-mfclassic W a resetar.dmp 600reais.dmp')
	if opcao == 3:
		os.system('clear')
		os.system('sudo modprobe -r pn533 nfc')
		os.system('sudo modprobe -r pn533_usb')
		os.system('nfc-list')
	if opcao == 4:
		os.system('clear')
		print('--=--=--=--=--          Use com moderation kkk         --=--=--=--=--')
		print('--=--=--=--=-- Sistema Desenvolvido por: Lucas William --=--=--=--=--')
	
	if opcao == 0:
		os.system('clear')
		print('Ate mais...')
		opcao = 0
