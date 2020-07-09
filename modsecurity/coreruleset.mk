# $NetBSD: options.mk,v 1.52 2019/11/04 22:09:57 rillig Exp $

BUILD_DEFS+=	CRS_DIR CRS_NAME CRS_FILES
DISTFILES+=	${CRS_DISTFILE}

CRS_NAME=		coreruleset
CRS_VERSION=		3.3.0
CRS_DISTNAME=		v${CRS_VERSION}
CRS_DISTFILE=		${CRS_DISTNAME}.zip
SITES.${CRS_DISTFILE}=	-https://codeload.github.com/coreruleset/coreruleset/zip/${CRS_DISTNAME}/${CRS_DISTFILE}
CRS_DIR=		${CRS_NAME}-${CRS_VERSION}
CRS_FILES+=		crawlers-user-agents.data REQUEST-903.9002-WORDPRESS-EXCLUSION-RULES.conf REQUEST-932-APPLICATION-ATTACK-RCE.conf \
			RESPONSE-980-CORRELATION.conf REQUEST-903.9003-NEXTCLOUD-EXCLUSION-RULES.conf REQUEST-933-APPLICATION-ATTACK-PHP.conf \
			java-classes.data REQUEST-903.9004-DOKUWIKI-EXCLUSION-RULES.conf \
			REQUEST-934-APPLICATION-ATTACK-NODEJS.conf restricted-files.data java-code-leakages.data \
			REQUEST-903.9005-CPANEL-EXCLUSION-RULES.conf REQUEST-941-APPLICATION-ATTACK-XSS.conf restricted-upload.data \
			java-errors.data REQUEST-903.9006-XENFORO-EXCLUSION-RULES.conf REQUEST-942-APPLICATION-ATTACK-SQLI.conf \
			scanners-headers.data lfi-os-files.data REQUEST-905-COMMON-EXCEPTIONS.conf REQUEST-943-APPLICATION-ATTACK-SESSION-FIXATION.conf \
			scanners-urls.data php-config-directives.data REQUEST-910-IP-REPUTATION.conf \
			REQUEST-944-APPLICATION-ATTACK-JAVA.conf scanners-user-agents.data php-errors.data \
			REQUEST-911-METHOD-ENFORCEMENT.conf REQUEST-949-BLOCKING-EVALUATION.conf scripting-user-agents.data \
			php-function-names-933150.data REQUEST-912-DOS-PROTECTION.conf RESPONSE-950-DATA-LEAKAGES.conf \
			sql-errors.data php-function-names-933151.data REQUEST-913-SCANNER-DETECTION.conf \
			RESPONSE-951-DATA-LEAKAGES-SQL.conf unix-shell.data php-variables.data \
			REQUEST-920-PROTOCOL-ENFORCEMENT.conf RESPONSE-952-DATA-LEAKAGES-JAVA.conf windows-powershell-commands.data \
			REQUEST-921-PROTOCOL-ATTACK.conf RESPONSE-953-DATA-LEAKAGES-PHP.conf \
			REQUEST-901-INITIALIZATION.conf REQUEST-930-APPLICATION-ATTACK-LFI.conf RESPONSE-954-DATA-LEAKAGES-IIS.conf \
			REQUEST-903.9001-DRUPAL-EXCLUSION-RULES.conf REQUEST-931-APPLICATION-ATTACK-RFI.conf RESPONSE-959-BLOCKING-EVALUATION.conf

INSTALLATION_DIRS+=	share/examples/${MODSEC_NAME}/${CRS_NAME} \
			share/examples/${MODSEC_NAME}/${CRS_NAME}/rules \
			${PKG_SYSCONFDIR}/${CRS_NAME} \
			${PKG_SYSCONFDIR}/${CRS_NAME}/rules

.for file in ${CRS_FILES}
CONF_FILES+=    ${EGDIR}/${CRS_NAME}/rules/${file}      ${PKG_SYSCONFDIR}/${CRS_NAME}/rules/${file}
.endfor
CONF_FILES+=    ${EGDIR}/${CRS_NAME}/rules/RESPONSE-999-EXCLUSION-RULES-AFTER-CRS.conf  ${PKG_SYSCONFDIR}/${CRS_NAME}/rules/RESPONSE-999-EXCLUSION-RULES-AFTER-CRS.conf \
                ${EGDIR}/${CRS_NAME}/rules/REQUEST-900-EXCLUSION-RULES-BEFORE-CRS.conf  ${PKG_SYSCONFDIR}/${CRS_NAME}/rules/REQUEST-900-EXCLUSION-RULES-BEFORE-CRS.conf
CONF_FILES+=    ${EGDIR}/${CRS_NAME}/crs-setup.conf ${PKG_SYSCONFDIR}/${CRS_NAME}/crs-setup.conf

