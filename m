Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF744DD5C4
	for <lists+v9fs-developer@lfdr.de>; Fri, 18 Mar 2022 09:04:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nV7bB-0005GK-W2; Fri, 18 Mar 2022 08:04:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ror.mcn@bookitevents.com>) id 1nV7bB-0005Fx-6Y
 for v9fs-developer@lists.sourceforge.net; Fri, 18 Mar 2022 08:04:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=V1iJXTnmd9GZroWugel7/WMzY9xAvpwR5pwEDee+W0M=; b=hKdhQInEv3IWdZoOlSoRuWs0yQ
 x54wElWChVbaNvyux+rXxTuj1R43/s8YSi2O7tr61KeTvnB+cEgFeSE1xg+rXxJao6k8JVXMNqlc8
 myAJgG7ZlnNvr2vUHiQ52XCJ8TjRpAHB9ifvspLjAEXVHz7llLjylGSVy5ujJFiAETco=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=V1iJXTnmd9GZroWugel7/WMzY9xAvpwR5pwEDee+W0M=; b=W
 T509hirHScpUzojvsDuzJFVHorlFo239N3JXBPOa1KTDqSQ+jFUYZg9oFWV0RXOwoCemV5hGzv1YA
 bG/io1XDOYO90KHNVEG4yKmrarG6zN07pUbfLCrAQEpKrQSaMfg63Uw5DYyi23kXE6LgQmh1JYksb
 fmvFWPm4JAtqVL/s=;
Received: from domination.bookitevents.com ([185.102.170.218])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nV7b8-002lG9-Om
 for v9fs-developer@lists.sourceforge.net; Fri, 18 Mar 2022 08:04:35 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=dkim; d=bookitevents.com;
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=ror.mcn@bookitevents.com; bh=lhhJsIb8wliQltwIaQ/pQ+yxZss=;
 b=cBcZud7wd9YOS7mq5Wr7LBU7Kfalwaz+ycd3yki5rFHth8YSHQMY/yqYwOoJ0IlBpR4X7iD+12yd
 kfXZhvAkWJVtc1nXzhGCrmQipIH3pwXMbYmcwL9eMyjgQfBcD1MAUkLDpOkYLQkV/CXOUqhgu1FH
 9dOpbSpY0yJ089FpoByNRakD/NQLxgOXFMCDl/EG9JIq6w1H7rFKklyTKYyQmxriSaqaxk4IyZHu
 M9yfi9BxS/JBcTl6YFnUc+5Y6hESrBMDWwIclLZcFIsy+kRtHCLDuNYD9Qx4XEzwc0bSh1cm6Ybu
 181sD5UfH/BS/3fTr8cSeaLxQ5OEZqReEsT5jQ==
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=dkim; d=bookitevents.com;
 b=EuiuPC9KMhoT3Cw36dVWK2TraLdL9sONMtvwbRI1/4YtqXmJI5NiGbD9wWltDuqlDDFpObHl4NkO
 dgNRXfsOyuvqkGZ6HXIQHG4rOVkO5N46iCSD1+Knnsr5KgFLpkNc0q5hycJMg41wauZBvH35SzBl
 nW+S7uez5cyMfgYM7QouE+5Tp1KN0Ruw4xDgnHa/DksnR2u4RaiAky+ML6Ac/UlQ7N+jZrSPY0UC
 iZV/l5diuPCHnTSuDEkzW/M2roEhUiC3A9EVV88Zan6E16dEkQ26mX8nAlbAT5pxCxTq6s4pS/7b
 I+vy/Klv5jgX40JZWkbWvLsCijrPPZaOQ6dhGw==;
From: Mustafa Ayvaz <ror.mcn@bookitevents.com>
To: v9fs-developer@lists.sourceforge.net
Date: 18 Mar 2022 09:04:26 +0100
Message-ID: <20220318090426.98BF8CBACF6651CE@bookitevents.com>
MIME-Version: 1.0
X-Spam-Score: 7.2 (+++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Lieb v9fs-developer, Grüße Ich habe Ihren Kontakt bekommen,
    als ich nach einem Verwandten meines verstorbenen Klienten Herrn Robert gesucht
    habe, der aufgrund der Coronavirus-Krankheit sein Leben verloren hat, die
    er während s [...] 
 
 Content analysis details:   (7.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.5 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [185.102.170.218 listed in dnsbl-1.uceprotect.net]
  2.9 REPTO_419_FRAUD_GM     Reply-To is known advance fee fraud collector
                              mailbox
  1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
                             bl.spamcop.net
             [Blocked - see <https://www.spamcop.net/bl.shtml?185.102.170.218>]
  0.0 RCVD_IN_MSPIKE_L4      RBL: Bad reputation (-4)
                             [185.102.170.218 listed in bl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
                             digit
                             [tomander231[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 LOTS_OF_MONEY          Huge... sums of money
  0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.0 MONEY_FREEMAIL_REPTO   Lots of money from someone using free
                             email?
  2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1nV7b8-002lG9-Om
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
