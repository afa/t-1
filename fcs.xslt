<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/export/fcsNotificationZP">
		<export>
			<fcsNotificationZP>
				<id type="integer"><xsl:value-of select="id"/></id>
				<purchaseNumber><xsl:value-of select="purchaseNumber"/></purchaseNumber>
				<docPublishDate><xsl:value-of select="docPublishDate"/></docPublishDate>
				<href><xsl:value-of select="href"/></href>
				<printForm>
					<url><xsl:value-of select="printForm/url"/></url>
				</printForm>
				<purchaseObjectInfo><xsl:value-of select="purchaseObjectInfo"/></purchaseObjectInfo>
				<purchaseResponsible>
					<responsibleOrg>
						<regNum><xsl:value-of select="purchaseResponsible/responsibleOrg/regNum"/></regNum>
						<fullName><xsl:value-of select="purchaseResponsible/responsibleOrg/fullName"/></fullName>
						<postAddress><xsl:value-of select="purchaseResponsible/responsibleOrg/postAddress"/></postAddress>
						<factAddress><xsl:value-of select="purchaseResponsible/responsibleOrg/factAddress"/></factAddress>
						<INN><xsl:value-of select="purchaseResponsible/responsibleOrg/INN"/></INN>
						<KPP><xsl:value-of select="purchaseResponsible/responsibleOrg/KPP"/></KPP>
					</responsibleOrg>
					<responsibleRole><xsl:value-of select="purchaseResponsible/responsibleRole"/></responsibleRole>
					<responsibleInfo>
						<orgPostAddress><xsl:value-of select="purchaseResponsible/responsibleInfo/orgPostAddress"/></orgPostAddress>
						<orgFactAddress><xsl:value-of select="purchaseResponsible/responsibleInfo/orgFactAddress"/></orgFactAddress>
						<contactPerson>
							<lastName><xsl:value-of select="purchaseResponsible/responsibleInfo/contactPerson/lastName"/></lastName>
							<firstName><xsl:value-of select="purchaseResponsible/responsibleInfo/contactPerson/firstName"/></firstName>
							<middleName><xsl:value-of select="purchaseResponsible/responsibleInfo/contactPerson/middleName"/></middleName>
						</contactPerson>
						<contactEMail><xsl:value-of select="purchaseResponsible/responsibleInfo/contactEMail"/></contactEMail>
						<contactPhone><xsl:value-of select="purchaseResponsible/responsibleInfo/contactPhone"/></contactPhone>
						<addInfo><xsl:value-of select="purchaseResponsible/responsibleInfo/addInfo"/></addInfo>
					</responsibleInfo>
				</purchaseResponsible>
				<placingWay>
					<code><xsl:value-of select="placingWay/code"/></code>
					<name><xsl:value-of select="placingWay/name"/></name>
				</placingWay>
				<purchaseDocumentation>
					<grantStartDate><xsl:value-of select="purchaseDocumentation/grantStartDate"/></grantStartDate>
					<grantPlace><xsl:value-of select="purchaseDocumentation/grantPlace"/></grantPlace>
					<grantOrder><xsl:value-of select="purchaseDocumentation/grantOrder"/></grantOrder>
					<languages><xsl:value-of select="purchaseDocumentation/languages"/></languages>
					<grantMeans><xsl:value-of select="purchaseDocumentation/grantMeans"/></grantMeans>
					<grantEndDate><xsl:value-of select="grantEndDate"/></grantEndDate>
					<payCurrency>
						<code><xsl:value-of select="purchaseDocumentation/payCurrency/code"/></code>
						<name><xsl:value-of select="purchaseDocumentation/payCurrency/name"/></name>
					</payCurrency>
					<payInfo>
						<amount><xsl:value-of select="purchaseDocumentation/payInfo/amount"/></amount>
						<procedureInfo><xsl:value-of select="purchaseDocumentation/payInfo/procedureInfo"/></procedureInfo>
						<settlementAccount><xsl:value-of select="purchaseDocumentation/payInfo/settlementAccount"/></settlementAccount>
						<personalAccount><xsl:value-of select="purchaseDocumentation/payInfo/personalAccount"/></personalAccount>
						<bik><xsl:value-of select="purchaseDocumentation/payInfo/bik"/></bik>
					</payInfo>
				</purchaseDocumentation>
				<procedureInfo>
					<collecting>
						<startDate><xsl:value-of select="procedureInfo/collecting/startDate"/></startDate>
						<endDate><xsl:value-of select="procedureInfo/collecting/endDate"/></endDate>
						<place><xsl:value-of select="procedureInfo/collecting/place"/></place>
						<order><xsl:value-of select="procedureInfo/collecting/order"/></order>
					</collecting>
					<opening>
						<date><xsl:value-of select="procedureInfo/opening/date"/></date>
						<place><xsl:value-of select="procedureInfo/opening/place"/></place>
					</opening>
					<scoring>
						<date><xsl:value-of select="procedureInfo/scoring/date"/></date>
						<place><xsl:value-of select="procedureInfo/scoring/place"/></place>
					</scoring>
					<finalOpening>
						<date><xsl:value-of select="procedureInfo/finalOpening/date"/></date>
						<place><xsl:value-of select="procedureInfo/finalOpening/place"/></place>
					</finalOpening>
				</procedureInfo>
				<lot>
					<maxPrice><xsl:value-of select="lot/maxPrice"/></maxPrice>
					<currency>
						<code><xsl:value-of select="lot/currency/code"/></code>
						<name><xsl:value-of select="lot/currency/name"/></name>
					</currency>
					<financeSource><xsl:value-of select="lot/financeSource"/></financeSource>
					<quantityUndefined><xsl:value-of select="lot/quantityUndefined"/></quantityUndefined>
					<customerRequirements type="array">
						<xsl:for-each select="lot/customerRequirements/customerRequirement">
							<customerRequirement>
								<customer>
									<regNum><xsl:value-of select="customer/regNum"/></regNum>
								</customer>
								<maxPrice><xsl:value-of select="maxPrice"/></maxPrice>
								<deliveryPlace><xsl:value-of select="deliveryPlace"/></deliveryPlace>
								<deliveryTerm><xsl:value-of select="deliveryTerm"/></deliveryTerm>
								<applicationGuarantee>
									<amount><xsl:value-of select="applicationGuarantee/amount"/></amount>
									<part><xsl:value-of select="applicationGuarantee/part"/></part>
									<procedureInfo><xsl:value-of select="applicationGuarantee/procedureInfo"/></procedureInfo>
									<settlementAccount><xsl:value-of select="applicationGuarantee/settlementAccount"/></settlementAccount>
									<personalAccount><xsl:value-of select="applicationGuarantee/personalAccount"/></personalAccount>
									<bik><xsl:value-of select="applicationGuarantee/bik"/></bik>
								</applicationGuarantee>
							</customerRequirement>
						</xsl:for-each>
					</customerRequirements>
					<purchaseObjects type="array">
						<xsl:for-each select="lot/purchaseObjects/purchaseObject">
							<purchaseObject>
								<OKPD>
									<code><xsl:value-of select="OKPD/code"/></code>
									<name><xsl:value-of select="OKPD/name"/></name>
								</OKPD>
								<name><xsl:value-of select="name"/></name>
								<OKEI>
									<code><xsl:value-of select="OKEI/code"/></code>
									<nationalCode><xsl:value-of select="OKEI/nationalCode"/></nationalCode>
								</OKEI>
								<price><xsl:value-of select="price"/></price>
								<quantity>
									<value><xsl:value-of select="quantity/value"/></value>
								</quantity>
								<sum><xsl:value-of select="sum"/></sum>
							</purchaseObject>
						</xsl:for-each>
					</purchaseObjects>
					<restrictInfo><xsl:value-of select="lot/restrictInfo"/></restrictInfo>
					<addInfo><xsl:value-of select="lot/addInfo"/></addInfo>
				</lot>
				<attachments type="array">
					<xsl:for-each select="attachments/attachment">
						<attachment>
							<fileName><xsl:value-of select="fileName"/></fileName>
							<docDescription><xsl:value-of select="docDescription"/></docDescription>
							<url><xsl:value-of select="url"/></url>
						</attachment>
					</xsl:for-each>
				</attachments>
				<modification>
					<modificationNumber><xsl:value-of select="modification/modificationNumber"/></modificationNumber>
					<info><xsl:value-of select="modification/info"/></info>
					<addInfo><xsl:value-of select="modification/addInfo"/></addInfo>
					<reason>
						<authorityPrescription>
							<externalPrescription>
								<authorityName><xsl:value-of select="modification/reason/authorityPrescription/externalPrescription/authorityName"/></authorityName>
								<authorityType><xsl:value-of select="modification/reason/authorityPrescription/externalPrescription/authorityType"/></authorityType>
								<docName><xsl:value-of select="modification/reason/authorityPrescription/externalPrescription/docName"/></docName>
								<docDate><xsl:value-of select="modification/reason/authorityPrescription/externalPrescription/docDate"/></docDate>
								<docNumber><xsl:value-of select="modification/reason/authorityPrescription/externalPrescription/docNumber"/></docNumber>
							</externalPrescription>
						</authorityPrescription>
					</reason>
				</modification>

			</fcsNotificationZP>
		</export>
	</xsl:template>
</xsl:stylesheet>

