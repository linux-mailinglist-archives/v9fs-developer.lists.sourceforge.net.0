Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B67D54E1C73
	for <lists+v9fs-developer@lfdr.de>; Sun, 20 Mar 2022 17:00:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nVxqr-0000iY-TL; Sun, 20 Mar 2022 16:00:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ror.mcn@bookitevents.com>) id 1nVxqr-0000iR-3V
 for v9fs-developer@lists.sourceforge.net; Sun, 20 Mar 2022 16:00:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=V1iJXTnmd9GZroWugel7/WMzY9xAvpwR5pwEDee+W0M=; b=OEI4p9M1Goc97iKCtiSLrX6TA/
 6CJBeQM1HXAOjM3iBxdMINXutk7n5KLZWQkgzV1QIUNKNiFVdq7M0fyteSEcv8Zcr/+ZF7kxnuNVP
 D0qfq/4X9rNvwPtkzUWzRRLn7JCi4XpjQhMi5lr2pK7vXoPidjUlIJ+IuLF5zpjDHw+k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=V1iJXTnmd9GZroWugel7/WMzY9xAvpwR5pwEDee+W0M=; b=C
 eq0FVXFNHnADAZL5LRe6sgjSNN0V/pclt8E3pdg7z84qpzB72znbVKd4xICfZ7SWKHTv9PBl1aKVP
 FdpgLPsJ5oxhMTxzuNb1W9LUBYCHC4AtRyJiXmMaXu89x1Ce2LHik78PdY5YQC28V8QDQ5eoKUNgU
 mFfrsnUdN77PsimE=;
Received: from domination.bookitevents.com ([185.102.170.218])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nVxyi-000308-6q
 for v9fs-developer@lists.sourceforge.net; Sun, 20 Mar 2022 16:00:28 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=dkim; d=bookitevents.com;
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=ror.mcn@bookitevents.com; bh=lhhJsIb8wliQltwIaQ/pQ+yxZss=;
 b=nZZnHRkYHKut+D4ZkQgVnwnJpDD8PgCPjZRmR3+nws/O5b1HmuGgQg3BItFoM6RKwA9jzcMyfrSK
 M40uHHpfiHGguLdItVOv0/k83rQWnz/0CEMs4tzqt9kJHdeivd5m2JOxCGgO1h9zkCW1Hnv1Ahev
 HuFy/P/xQs7QCHJ7X+W/WzY7D2HDetoaBHROHpTtN5j5jRCf1cYCVXuEVHVkDG3BH9CA47kzC2V3
 n0PSDh0rinqZhVHZOu9mKpvuLoz3n+ibxeH9Ew+wraIQ0zuTG/GXxWq1YKKTzKXNXy0mSxBjZLD/
 EReVIROmSpplXJtiwP7g7wb9MJvN4Kl8IzyU0A==
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=dkim; d=bookitevents.com;
 b=cpXPpLCOEm/HzpNMAta/HTOAw+GBJDopHDLNr/674JPApl3uY/zRx4j0qJgEVaEiXAJEGWPVdrjp
 m3WXXKISns5MiunQQPQl9UjGpZr+VLd5qxypXx+lNz/oIYGQuh79Sb2AY6OgZMK7k2L2I7SpdtIr
 cXjuynWlkaNKdEgIhNCU5YAcUpa+N9JLWFQBA3rjkHGWLjXjIB+0c6FCFkoYl0/Ulo4jLjrcRsUw
 9KLj9ZcHD9uXOkgAktxnYZ+ZkTphLW1IKjVK6pzBZwI3SxpsGStcHOg3Pzegz9v6j6glGFRXGzx9
 30Z6NpMfAs/6wTXy/4Si4kSz/UNc3vOnzdSnKQ==;
From: Mustafa Ayvaz <ror.mcn@bookitevents.com>
To: v9fs-developer@lists.sourceforge.net
Date: 20 Mar 2022 17:00:07 +0100
Message-ID: <20220320170007.CC4223AFCE350F2E@bookitevents.com>
MIME-Version: 1.0
X-Spam-Score: 6.0 (++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Lieb v9fs-developer, Grüße Ich habe Ihren Kontakt bekommen,
    als ich nach einem Verwandten meines verstorbenen Klienten Herrn Robert gesucht
    habe, der aufgrund der Coronavirus-Krankheit sein Leben verloren hat, die
    er während s [...] 
 
 Content analysis details:   (6.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  3.0 REPTO_419_FRAUD_GM     Reply-To is known advance fee fraud collector
                              mailbox
  0.5 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [185.102.170.218 listed in dnsbl-1.uceprotect.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
                             digit
                             [tomander231[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.0 LOTS_OF_MONEY          Huge... sums of money
  0.0 MONEY_FREEMAIL_REPTO   Lots of money from someone using free
                             email?
  2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1nVxyi-000308-6q
Subject: [V9fs-developer] Aufmerksamkeit:
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
Reply-To: tomander231@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CkxpZWIgdjlmcy1kZXZlbG9wZXIsCgpHcsO8w59lCgpJY2ggaGFiZSBJaHJlbiBLb250YWt0IGJl
a29tbWVuLCBhbHMgaWNoIG5hY2ggZWluZW0gVmVyd2FuZHRlbiAKbWVpbmVzIHZlcnN0b3JiZW5l
biBLbGllbnRlbiBIZXJybiBSb2JlcnQgZ2VzdWNodCBoYWJlLCBkZXIgCmF1ZmdydW5kIGRlciBD
b3JvbmF2aXJ1cy1LcmFua2hlaXQgc2VpbiBMZWJlbiB2ZXJsb3JlbiBoYXQsIGRpZSAKZXIgd8Ok
aHJlbmQgc2VpbmVyIEdlc2Now6RmdHNyZWlzZSBpbiBDaGluYSBrb250YWt0aWVydCBoYXQuIElj
aCAKYmluIHNlaW4gcGVyc8O2bmxpY2hlciBBbndhbHQgdW5kIHN1Y2hlIG5hY2ggc2VpbmVtIE7D
pGNoc3RlbiAKQW5nZWjDtnJpZ2VuLiBCaXR0ZSBhcmJlaXRlbiBTaWUgbWl0IG1pciB6dXNhbW1l
biwgdW0gZGllIArDnGJlcndlaXN1bmcgZWluZXMgRm9uZHMgenUgc2ljaGVybiwgVmllciBNaWxs
aW9uZW4gClZpZXJodW5kZXJ0endhbnppZ3RhdXNlbmQgRG9sbGFyLCBkaWUgZXIgenVyw7xja2dl
bGFzc2VuIGhhdC4gCgpCaXR0ZSBrb250YWt0aWVyZW4gU2llIG1pY2ggc29mb3J0IGbDvHIgd2Vp
dGVyZSBJbmZvcm1hdGlvbmVuLgoKR3LDvMOfZQpNdXN0YWZhIEF5dmF6LgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxp
bmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0
cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
