# find out where ruby is. can override this by providing environment or command
# line variable
RUBY ?= $(shell ./find-ruby.sh)

update: install-vundle bundles compile-command-t

upgrade: upgrade-bundles compile-command-t

install: cleanup update

cleanup:
	rm -rf vim/bundle

install-vundle:
	test -d vim/bundle/vundle || (mkdir -p vim/bundle && cd vim/bundle && git clone https://github.com/gmarik/vundle.git)

bundles:
	vim -u vim/bundles.vim +BundleInstall

cleanup-bundles:
	ls vim/bundle | while read b;do (cd vim/bundle/$$b && git clean -f);done

upgrade-bundles: cleanup-bundles
	vim -u vim/bundles.vim +BundleInstall!

# only run compilation if bundle installed
compile-command-t:
ifneq ($(wildcard bundle/Command-T),)
	cd vim/bundle/Command-T/ruby/command-t/ && $(RUBY) extconf.rb && make
endif
