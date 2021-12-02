Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1128F465FD1
	for <lists+v9fs-developer@lfdr.de>; Thu,  2 Dec 2021 09:48:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mshlE-000708-ER; Thu, 02 Dec 2021 08:48:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <wsrf@mocal.org>) id 1mshlC-000701-M2
 for v9fs-developer@lists.sourceforge.net; Thu, 02 Dec 2021 08:48:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:From:Date:Subject:To:List-id:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zrqHlk8ALOGazEqQkYBBV+wOVjCW7u3yIut+/uNKG6I=; b=RKBF4znmSyqVvZXWoVAiLCu68/
 YH/4Tw6jbGxvcFgjw5q/jD426cTS4LpPBAVahh+gHRYK+BOHkjfoLigfAYEviP+niN2MJRaqoRJ/0
 vfDFadjRcbzumbw/52vPl7j5g/0DnloyAuLf7S4QmHMrNxUEX+qU3RTzML3JetMzFX6c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:From:Date:
 Subject:To:List-id:Sender:Reply-To:Cc:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=zrqHlk8ALOGazEqQkYBBV+wOVjCW7u3yIut+/uNKG6I=; b=D
 II55xRs/4XFN4bVpQBgq51cv3GQynElsLGImXuf3tXzU/5wG76Wl9aEbvo+5Gk1IaCYa7ipp5KrI1
 HdDNfbReaV98tCVGFQohrI+fQav7jdAGaOlQ+x+CiGjkRdqR8qKovFtEAHi8Dh4HE+hE8/skY65t+
 bnQoyEn1Sv+7TC7Y=;
Received: from [70.34.210.58] (helo=mocal.org)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1mshlA-0000Kw-Sb
 for v9fs-developer@lists.sourceforge.net; Thu, 02 Dec 2021 08:48:10 +0000
To: v9fs-developer@lists.sourceforge.net
X-PHP-Originating-Script: 0:index.php
Date: Thu, 2 Dec 2021 08:32:48 +0000
From: Miles & More <info@mocal.org>
Message-ID: <d958007ba52d0f7caaba0ef34c24e164@mocal.org>
MIME-Version: 1.0
X-mailer: Cabestan DMS
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Miles &amp; More Damit Sie weiterhin online bezahlen k&ouml;
 nnen
 Aufgrund der EU-Richtlinie PSD2 m&uuml;ssen Sie Online-Zahlungen mit Ihrer
 Miles &amp; More Credit Card immer h&auml;ufiger freigeben. Aktivieren Sie
 dazu ab sofort eines unserer zwei Visa card&reg; I [...] 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: onliveserver.com]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.9 SPF_HELO_SOFTFAIL      SPF: HELO does not match SPF record (softfail)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
 identical to background
 0.0 HTML_FONT_SIZE_HUGE    BODY: HTML font size is huge
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 NORDNS_LOW_CONTRAST    No rDNS + hidden text
X-Headers-End: 1mshlA-0000Kw-Sb
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?q?Damit_Sie_weiterhin_online_bezahlen_k?=
 =?utf-8?b?w7ZubmVu?=
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




  
  


Miles &amp;
More
Damit Sie
weiterhin online bezahlen k&ouml;nnen

Aufgrund
der EU-Richtlinie PSD2 m&uuml;ssen Sie Online-Zahlungen mit Ihrer
Miles &amp; More Credit Card immer h&auml;ufiger freigeben.
Aktivieren Sie dazu ab sofort eines unserer zwei Visa card&reg;
Identity Check&trade; Verfahren:

1)
Freigabe &uuml;ber die Miles
&amp; More Credit Card-App
2)
Freigabe &uuml;ber Miles
&amp; More und&nbsp;Sicherheitsfrage

Aktivieren
Sie jetzt das Verfahren Ihrer Wahl, um auch zuk&uuml;nftig online
bezahlen zu k&ouml;nnen.

Jetzt
aktivieren



Viele
Gr&uuml;&szlig;e von&nbsp;
Ihrem
Miles &amp; More-Team



visit
our website&nbsp;|&nbsp;log
in to your account&nbsp;|&nbsp;get
support
Copyright
&copy; Onlive Server Private Limited, All rights reserved.



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
