all: README.md
	echo Hello.
%: temp_% ensphere.py
	./ensphere.py -h | python3 Utilities/replace.py %%usage%% "    " $< > $@
test:
	make -C tests all
install:
	./setup.py install
uninstall:
	-pip3 uninstall -y genice
pypi:
	./setup.py check
	./setup.py sdist bdist_wheel upload
distclean:
	-rm -rf build dist
	-rm -rf ensphere.egg-info
	-rm .DS_Store
	find . -name __pycache__ | xargs rm -rf 
	find . -name \*.pyc      | xargs rm -rf
	find . -name \*~         | xargs rm -rf
