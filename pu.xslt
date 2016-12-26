<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
      <purchaseNotice>
        <header>
          <guid><xsl:value-of select="/purchaseNotice/header/guid"/></guid>
          <createDateTime type="datetime"><xsl:value-of select="/purchaseNotice/header/createDateTime"/></createDateTime>
        </header>
        <body type="array">
          <xsl:for-each select="/purchaseNotice/body/item">
            <item>
              <guid><xsl:value-of select="guid"/></guid>
              <purchaseNoticeData type="array">
                <xsl:for-each select="purchaseNoticeData">
                  <notice>
                    <guid><xsl:value-of select="guid"/></guid>
                    <createDateTime type="datetime"><xsl:value-of select="createDateTime"/></createDateTime>
                    <registrationNumber type="integer"><xsl:value-of select="registrationNumber"/></registrationNumber>
                    <name><xsl:value-of select="name"/></name>
                    <customer>
                      <mainInfo>
                        <fullName><xsl:value-of select="customer/mainInfo/fullName"/></fullName>
                        <shortName><xsl:value-of select="customer/mainInfo/shortName"/></shortName>
                        <inn><xsl:value-of select="customer/mainInfo/inn"/></inn>
                        <kpp><xsl:value-of select="customer/mainInfo/kpp"/></kpp>
                        <ogrn><xsl:value-of select="customer/mainInfo/ogrn"/></ogrn>
                        <legalAddress><xsl:value-of select="customer/mainInfo/legalAddress"/></legalAddress>
                        <postalAddress><xsl:value-of select="customer/mainInfo/postalAddress"/></postalAddress>
                        <phone><xsl:value-of select="customer/mainInfo/phone"/></phone>
                        <email><xsl:value-of select="customer/mainInfo/email"/></email>
                        <okato type="integer"><xsl:value-of select="customer/mainInfo/okato"/></okato>
                      </mainInfo>
                    </customer>
                    <purchaseMethodCode><xsl:value-of select="purchaseMethodCode"/></purchaseMethodCode>
                    <purchaseCodeName><xsl:value-of select="purchaseCodeName"/></purchaseCodeName>
                    <placer>
                      <mainInfo>
                        <fullName><xsl:value-of select="placer/mainInfo/fullName"/></fullName>
                        <shortName><xsl:value-of select="placer/mainInfo/shortName"/></shortName>
                        <inn><xsl:value-of select="placer/mainInfo/inn"/></inn>
                        <kpp><xsl:value-of select="placer/mainInfo/kpp"/></kpp>
                        <ogrn><xsl:value-of select="placer/mainInfo/ogrn"/></ogrn>
                        <legalAddress><xsl:value-of select="placer/mainInfo/legalAddress"/></legalAddress>
                        <postalAddress><xsl:value-of select="placer/mainInfo/postalAddress"/></postalAddress>
                        <phone><xsl:value-of select="placer/mainInfo/phone"/></phone>
                        <email><xsl:value-of select="placer/mainInfo/email"/></email>
                        <okato type="integer"><xsl:value-of select="placer/mainInfo/okato"/></okato>
                      </mainInfo>
                    </placer>
                    <contact>
                      <firstName><xsl:value-of select="contact/firstName"/></firstName>
                      <middleName><xsl:value-of select="contact/middleName"/></middleName>
                      <lastName><xsl:value-of select="contact/lastName"/></lastName>
                      <phone><xsl:value-of select="contact/phone"/></phone>
                      <fax><xsl:value-of select="contact/fax"/></fax>
                      <email><xsl:value-of select="contact/email"/></email>
                      <organization>
                        <mainInfo>
                          <fullName><xsl:value-of select="contact/organization/mainInfo/fullName"/></fullName>
                          <shortName><xsl:value-of select="contact/organization/mainInfo/shortName"/></shortName>
                          <inn><xsl:value-of select="contact/organization/mainInfo/inn"/></inn>
                          <kpp><xsl:value-of select="contact/organization/mainInfo/kpp"/></kpp>
                          <ogrn><xsl:value-of select="contact/organization/mainInfo/ogrn"/></ogrn>
                          <legalAddress><xsl:value-of select="contact/organization/mainInfo/legalAddress"/></legalAddress>
                          <postalAddress><xsl:value-of select="contact/organization/mainInfo/postalAddress"/></postalAddress>
                          <phone><xsl:value-of select="contact/organization/mainInfo/phone"/></phone>
                          <email><xsl:value-of select="contact/organization/mainInfo/email"/></email>
                          <okato type="integer"><xsl:value-of select="contact/organization/mainInfo/okato"/></okato>
                        </mainInfo>
                      </organization>

                    </contact>
                    <publicationDateTime type="datetime"><xsl:value-of select="publicationDateTime"/></publicationDateTime>
                    <documentationDelivery>
                      <deliveryStartDateTime type="datetime"><xsl:value-of select="documentationDelivery/deliveryStartDateTime"/></deliveryStartDateTime>
                      <deliveryEndDateTime type="datetime"><xsl:value-of select="documentationDelivery/deliveryEndDateTime"/></deliveryEndDateTime>
                      <place><xsl:value-of select="documentationDelivery/place"/></place>
                      <procedure><xsl:value-of select="documentationDelivery/procedure"/></procedure>
                    </documentationDelivery>
                    <status><xsl:value-of select="status"/></status>
                    <version><xsl:value-of select="version"/></version>
                    <attachments type="array">
                      <xsl:for-each select="attachments/document">
                        <item>
                          <document>
                            <guid><xsl:value-of select="guid"/></guid>
                            <createDateTime type="datetime"><xsl:value-of select="createDateTime"/></createDateTime>
                            <fileName><xsl:value-of select="fileName"/></fileName>
                            <description><xsl:value-of select="description"/></description>
                            <url><xsl:value-of select="url"/></url>
                          </document>
                        </item>
                      </xsl:for-each>
                    </attachments>
                    <modificationDate type="date"><xsl:value-of select="modificationDate"/></modificationDate>
                    <saveUserId><xsl:value-of select="saveUserId"/></saveUserId>
                    <nonelectronicPlaceInfo>
                      <summarizingPlace><xsl:value-of select="nonelectronicPlaceInfo/summarizingPlace"/></summarizingPlace>
                      <summarizingDateTime type="datetime"><xsl:value-of select="nonelectronicPlaceInfo/summarizingDateTime"/></summarizingDateTime>
                    </nonelectronicPlaceInfo>
                    <examinationPlace><xsl:value-of select="examinationPlace"/></examinationPlace>
                    <examinationDateTime type="datetime"><xsl:value-of select="examinationDateTime"/></examinationDateTime>
                    <submissionCloseDateTime type="datetime"><xsl:value-of select="submissionCloseDateTime"/></submissionCloseDateTime>
                    <publicationPlannedDate type="date"><xsl:value-of select="publicationPlannedDate"/></publicationPlannedDate>
                    <lots type="array">
                      <xsl:for-each select="lots/lot">
                        <lot>
                          <guid><xsl:value-of select="guid"/></guid>
                          <ordinalNumber type="integer"><xsl:value-of select="ordinalNumber"/></ordinalNumber>
                          <subject><xsl:value-of select="subject"/></subject>
                          <currency>
                            <code><xsl:value-of select="currency/code"/></code>
                            <digitalCode type="integer"><xsl:value-of select="currency/digitalCode"/></digitalCode>
                            <name><xsl:value-of select="currency/name"/></name>
                          </currency>
                          <initialSum><xsl:value-of select="initialSum"/></initialSum>
                          <deliveryPlace><xsl:value-of select="deliveryPlace"/></deliveryPlace>
                          <lotItems type="array">
                            <xsl:for-each select="lotItems/lotItem">
                              <lotItem>
                                <guid><xsl:value-of select="guid"/></guid>
                                <ordinalNumber><xsl:value-of select="ordinalNumber"/></ordinalNumber>
                                <okdp>
                                  <code><xsl:value-of select="okdp/code"/></code>
                                  <name><xsl:value-of select="okdp/name"/></name>
                                </okdp>
                                <okved>
                                  <code><xsl:value-of select="okved/code"/></code>
                                  <name><xsl:value-of select="okved/name"/></name>
                                </okved>
                                <okei>
                                  <code><xsl:value-of select="okei/code"/></code>
                                  <name><xsl:value-of select="okei/name"/></name>
                                </okei>
                                <qty type="integer"><xsl:value-of select="qty"/></qty>
                              </lotItem>
                            </lotItem>
                          </xsl:for-each>
                        </lot>
                      </lotItems>
                    </lot>
                  </xsl:for-each>
                </lots>

              </notice>
            </xsl:for-each>
          </purchaseNoticeData>
        </item>
      </xsl:for-each>
    </body>
  </purchaseNotice>
</xsl:template>
</xsl:stylesheet>

