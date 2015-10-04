test:

	make -C ./poise-boiler/
	#make -C ./python/
	make -C ./poise-service/
	make -C ./poise-python/
	make -C ./poise/
	make -C ./poise-languages/
	make -C ./application/
	#./zookeepr/Makefile
	make -C ./application_python/
	make -C ./application_git/
