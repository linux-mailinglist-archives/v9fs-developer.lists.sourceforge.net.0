Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD71388706
	for <lists+v9fs-developer@lfdr.de>; Wed, 19 May 2021 07:53:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ljF8y-00055l-6Q; Wed, 19 May 2021 05:53:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <conta@comercial.info.br>) id 1ljF8w-00055d-3a
 for v9fs-developer@lists.sourceforge.net; Wed, 19 May 2021 05:53:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:
 List-Unsubscribe:MIME-Version:Reply-To:From:Date:Message-ID:Subject:To:Sender
 :Cc:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jEDDVjownb779gcsElqaEhI9oIMrPiRcWQahaErJ4wg=; b=fX/FC3cyz52DP+h1IJsNLhtxVc
 Z//nuXqVuw49KwdO+hM0XX/rlrVSV5qXOTxfj8hpzRA2Q32ENvinlrJ+ctpyGs8A3SEvNDjx0ca3Z
 fk2/RaE7Pgs73drkGOwl15nxc0hpEX0+UXYkQMNfFQgIQ6TOZa+nOxpT/xvMqDVLU7hA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:List-Unsubscribe:MIME-Version:
 Reply-To:From:Date:Message-ID:Subject:To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jEDDVjownb779gcsElqaEhI9oIMrPiRcWQahaErJ4wg=; b=KhECURx/dWjAXHBB0cJl2nC6Vy
 YmfRYgB/v37fDrfjnV25TkHGWyJ9tRtsaE7QCZ8bt2XnFeZfDUDv7KAztsDyWhvP5cSsw7e1VzrEL
 YyKbkZVo4EGQLCWzcmpRyDtbOMJ9Rq6wFbxVpT0R7VQyZDJsP7D8kwJ+BPgRSYL9KzT4=;
Received: from infocom.comercial.inf.br ([216.144.246.174])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1ljF8r-0006rX-KB
 for v9fs-developer@lists.sourceforge.net; Wed, 19 May 2021 05:53:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=comercial.inf.br; s=default; h=Content-Transfer-Encoding:Content-Type:
 List-Unsubscribe:MIME-Version:Reply-To:From:Date:Message-ID:Subject:To:Sender
 :Cc:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jEDDVjownb779gcsElqaEhI9oIMrPiRcWQahaErJ4wg=; b=E4i0+hS/OIOUoUpiasxWr5ETxQ
 33EV2vGSbkdi4dHSyiN9C/QrB7x1VI9sXAump47xGFWMzUGCuI4N5fQAVX0qBuev/rdC60L2FYDh9
 ODHpvoNXhaYbiSeQ10Lf7LLxdmgc1uycXYt26gwoHTZbL0XC1+Gjet0qindXSaOb3TZvnZbAuboaI
 HN22E3v+wBZ+hcrLcLhZwXcVy/mcdUxNob3CEU5KKIhA+bVxsnM7kzudr3ruRglFMg4qYzkWFeSAU
 0geUw+7HX6J04ReGup5u3klp5srNl/OKFMBcTbMUxvNKBSbDx+BQlhppw/pBcYk5UgnY32VoJgNTi
 IOt4OMMg==;
Received: from marte.pritiviweb.com.br ([207.38.82.241]:59074
 helo=centraldev.tk) by smtp.shsmtp.com.br with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <conta@comercial.info.br>) id 1ljF8o-0000tm-Lt
 for v9fs-developer@lists.sourceforge.net; Wed, 19 May 2021 02:53:08 -0300
To: v9fs-developer@lists.sourceforge.net
Message-ID: <4ab6387e1c4fd9336091f884d3633099@centraldev.tk>
Date: Mon, 17 May 2021 21:19:05 +0000
From: "SCAN" <conta@comercial.info.br>
MIME-Version: 1.0
X-Mailer-LID: 11
X-Mailer-RecptId: 828389
X-Mailer-SID: 11
X-Mailer-Sent-By: 1
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - smtp.shsmtp.com.br
X-AntiAbuse: Original Domain - lists.sourceforge.net
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - comercial.info.br
X-Get-Message-Sender-Via: smtp.shsmtp.com.br: authenticated_id:
 smtp@comercial.inf.br
X-Authenticated-Sender: smtp.shsmtp.com.br: smtp@comercial.inf.br
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Spam-Score: 7.9 (+++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.4 NO_DNS_FOR_FROM        DNS: Envelope sender has no MX or A DNS records
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.8 DKIM_ADSP_NXDOMAIN     No valid author signature and domain not in DNS
 0.5 DATE_IN_PAST_24_48     Date: is 24 to 48 hours before Received: date
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.2 UPPERCASE_75_100       message body is 75-100% uppercase
 3.0 XM_RECPTID             Has spammy message header
 2.0 SHORT_SHORTNER Short body with little more than a link to a shortener
X-Headers-End: 1ljF8r-0006rX-KB
Subject: [V9fs-developer] =?utf-8?b?57W25a++44Gr44GK44GZ44GZ44KB44Gn44GN?=
 =?utf-8?b?44Gq44GE6KmQ5qy644Gq5L+d6Zm65Lya56S+44Gn44GZ44CC?=
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
Reply-To: conta@comercial.info.br
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

5YuV55S744Gv5pyA5b6M44G+44Gn6KaL44Gm44GP44Gg44GV44GECuOBk+OBruWLleeUu+imi+OC
ieOCjOOBn+aZguOBq+OBqeOBhuaAneOBhOOBvuOBmeOBi++8nwoKaHR0cHM6Ly95b3V0dS5iZS92
YnlRdzZsdTlfcwoKaHR0cHM6Ly95b3V0dS5iZS9BcWVUclJKdTFxYwoK44GT44KM44KS6KaL44Gm
5oSP6KaL44KS44Kz44Oh44Oz44OI5oqV56i/44GK6aGY44GE44GX44G+44GZ44CCClNOU+OBuOW6
g+OCgeOCi+OCiOOBhuOBq+WunOOBl+OBj+OBiumhmOOBhOOBl+OBvuOBmeOAggoKWW91VHViZeOD
geODo+ODs+ODjeODq+eZu+mMsuOBiumhmOOBhOOBl+OBvuOBmeOAggoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5n
IGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMu
c291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
