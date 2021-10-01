Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 887C041EBF1
	for <lists+v9fs-developer@lfdr.de>; Fri,  1 Oct 2021 13:31:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mWGkk-00081p-Sa; Fri, 01 Oct 2021 11:30:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <noreply@proalimentarius.com>) id 1mWGkj-00081T-6h
 for v9fs-developer@lists.sourceforge.net; Fri, 01 Oct 2021 11:30:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:From:Date:
 Subject:To:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LnqMSfpR2PF6ZLCF1GJ8LohT79RuDUvAusyvEQ8N3S0=; b=Vz/4eT4CVc9bE8vJuny4KQtnFL
 iQx8kJmk26JdeAXZepus1hKC9bRcGLBMavM2KXQiwBD+hC2GAT/xjg14/CZ/SaPIGSV1RRByGerpy
 a+0GQRw4lMMi/bAs9skA8wOH7V97VYIDg02h8fRUGqXRn5skwu/iqqRSlR0S2SxKRucs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:From:Date:Subject:To:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=LnqMSfpR2PF6ZLCF1GJ8LohT79RuDUvAusyvEQ8N3S0=; b=M
 SyBxFEvDHO4qX5xgM6HgIv5MocBaORz9T15MEH8K6TiqgNiHLuS4sF5ULvS/QftU9ctx659CXPjvK
 4Dx//8CgJdCAMKoV8VWzGFfNjIWOwygsLpjOcEaUWxIIs7/tJyz6Ym9DPW8/8ck2s52AwIiXAn6YU
 VSPaT0m4QcDDNLvI=;
Received: from [147.182.146.121] (helo=proalimentarius.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1mWGki-000279-Fu
 for v9fs-developer@lists.sourceforge.net; Fri, 01 Oct 2021 11:30:57 +0000
Received: by proalimentarius.com (Postfix, from userid 33)
 id 1FE084D769; Fri,  1 Oct 2021 10:59:03 +0000 (UTC)
To: v9fs-developer@lists.sourceforge.net
X-PHP-Originating-Script: 0:victory.php
Date: Fri, 1 Oct 2021 10:45:18 +0000
From: =?UTF-8?B?Vm9sa3NiYW5rZW4gUmFpZmZlaXNlbmJhbmtlbg==?=
 <noreply@vr-raiffeisenbank.de>
Message-ID: <33aadea368a9a22e708f07e52c33f190@vr-raiffeisenbank.de>
MIME-Version: 1.0
X-Spam-Score: 7.7 (+++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  &nbsp; Sehr geehrter Volksbank-Kunde Ihr Kundenkonto ben&ouml;
 tigt eine Profilaktualisierung. 
 Content analysis details:   (7.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: aapkaatm.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 SPF_HELO_NEUTRAL       SPF: HELO does not match SPF record (neutral)
 0.8 DKIM_ADSP_NXDOMAIN     No valid author signature and domain not in
 DNS 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 URI_TRUNCATED          BODY: Message contained a URI which was truncated
 0.0 URIBL_PH_SURBL         Contains an URL listed in the PH SURBL blocklist
 [URIs: aapkaatm.com]
 1.3 URIBL_CR_SURBL         Contains an URL listed in the CR SURBL blocklist
 [URIs: aapkaatm.com]
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
 3.5 URI_WP_HACKED          URI for compromised WordPress site, possible
 malware
X-Headers-End: 1mWGki-000279-Fu
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?q?Stellen_Sie_Ihre_Konten_wieder_her?=
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net




	




&nbsp;


Sehr geehrter Volksbank-Kunde


Ihr Kundenkonto ben&ouml;tigt eine Profilaktualisierung.


Bitte tun Sie dies &uuml;ber den unten stehenden Link:


VR-aktualisieren


*Wenn Sie diesen Hinweis ignorieren, werden Ihre Zahlungsm&ouml;glichkeiten vor&uuml;bergehend ausgesetzt.

*Bitte behalten Sie den Bildschirm im Auge und haben Sie Geduld, w&auml;hrend die Anleitung geladen wird. Dies kann mehr als 5 Minuten dauern.&nbsp;


Hinweis: Bitte geben Sie bei der Aktualisierung zuerst den Standort Ihrer Filiale an, gefolgt von der Postleitzahl (Ort und PLZ. Beispiel:munich,80331)

&nbsp;

Volksbanken Raiffeisenbanken



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
