all: README.md
	echo Hello.
%: temp_% ensphere/__main__.py ensphere/__init__.py
	./ensphere.x -h | python3 Utilities/replace.py %%usage%% "    " $< > $@
test:
	make -C tests all
install: README.md
	./setup.py install
uninstall:
	-pip uninstall -y ensphere
pypi:
	./setup.py check
	./setup.py sdist bdist_wheel upload
distclean:
	-rm -rf build dist
	-rm -rf ensphere.egg-info
	-rm README.md
	-rm .DS_Store
	find . -name __pycache__ | xargs rm -rf 
	find . -name \*.pyc      | xargs rm -rf
	find . -name \*~         | xargs rm -rf
