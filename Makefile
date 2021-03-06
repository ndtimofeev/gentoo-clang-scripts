.PHONY: install

DESTDIR=/

install:
	if [ ${PACKAGE_MANAGER} = paludis ]; then \
		mkdir -p ${DESTDIR}/etc/paludis; \
		install bashrc.clang ${DESTDIR}/etc/paludis/; \
	fi
	mkdir -p ${DESTDIR}/etc/cron.daily
	install gentoo-clang-blacklist-update ${DESTDIR}/etc/cron.daily/
