
libexec_SCRIPTS = ctk-icon-name-mapping

%: %.pl.in
	sed -e "s#\@PERL\@#$(PERL)#g"		\
	    -e "s#\@DATADIR\@#$(pkgdatadir)#g"	\
	< $< > $@

pkgconfig_in_files =				\
	ctk-icon-naming-utils.pc.in
pkgconfigdir = $(datadir)/pkgconfig
pkgconfig_DATA = $(pkgconfig_in_files:.pc.in=.pc)

dtddir = $(pkgdatadir)
dtd_DATA = legacy-icon-mapping.dtd

pkgdata_DATA = legacy-icon-mapping.xml

EXTRA_DIST =				\
	ctk-icon-name-mapping.pl.in		\
	$(pkgconfig_in_files)		\
	$(dtd_DATA)			\
	$(pkgdata_DATA)			\
	ctk-icon-naming-utils-uninstalled.pc.in

CLEANFILES =				\
	$(libexec_SCRIPTS)

DISTCLEANFILES =			\
	$(pkgconfig_DATA)		\
	ctk-icon-naming-utils-uninstalled.pc

MAINTAINERCLEANFILES =			\
	Makefile.in			\
	aclocal.m4			\
	config.guess			\
	config.sub			\
	configure			\
	depcomp				\
	install-sh			\
	missing

