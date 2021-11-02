Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 527B6443891
	for <lists+v9fs-developer@lfdr.de>; Tue,  2 Nov 2021 23:38:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mi2Q0-0008SF-6N; Tue, 02 Nov 2021 22:38:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <lily.castillo@tome.cl>) id 1mi2Py-0008S9-IY
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Nov 2021 22:38:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:Message-ID:Content-Type:
 Content-Transfer-Encoding:Subject:MIME-Version:From:Date:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iuZqzoQRRxfR7u4/2vLppr62jTkqVhwj4893b9utrmI=; b=mpCfwp7zDKQpX+jqzUzAidOn1
 rNlgyiTe6W4CSp9RbPVlxKGJ36WZf/4/iJ8oT6SJAm9rEJ+dcdUqUbIXNWeJocvtWDbQYRtvMA9+1
 Man2hm9ERrsn8rrM5S1KKVr7TpUmav8HijrrEZv4MiYSZ16n4rbkbWbocisey1FJyWLOM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:Message-ID:Content-Type:Content-Transfer-Encoding:Subject:MIME-Version
 :From:Date:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=iuZqzoQRRxfR7u4/2vLppr62jTkqVhwj4893b9utrmI=; b=R
 zcw5x21lyohM5at9LXQ2e7ffT1vJ+YFuEQPTIiaekDsUW57Cr/W+6RaJDdbwfkWEhJb+7PVwfPtVy
 ZWN4wmpeiujyuKLY/xeDfejGQnz8w6WYwQxrd6BNNLMzv55ztV+7MUBv9bmg6fKknqIpcHIJ+4NBh
 U7KKClu5V09qltqw=;
Received: from mail.tome.cl ([190.13.182.202])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mi2Pw-00FY8U-CC
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Nov 2021 22:38:09 +0000
Received: from mail.tome.cl (mail.tome.cl [127.0.0.1])
 by mail.tome.cl (Postfix) with ESMTP id 4HkPWk5J2Xz516R0
 for <v9fs-developer@lists.sourceforge.net>;
 Tue,  2 Nov 2021 19:21:38 -0300 (-03)
X-Virus-Scanned: amavisd-new at mail.tome.cl
Received: from mail.tome.cl ([127.0.0.1])
 by mail.tome.cl (mail.tome.cl [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LQhhsr1GSjR4 for <v9fs-developer@lists.sourceforge.net>;
 Tue,  2 Nov 2021 19:21:37 -0300 (-03)
Received: from [127.0.0.1] (unknown [185.164.75.244])
 by mail.tome.cl (Postfix) with ESMTPSA id 4HkPWh19mzz516TQ
 for <v9fs-developer@lists.sourceforge.net>;
 Tue,  2 Nov 2021 19:21:35 -0300 (-03)
Date: Wed, 3 Nov 2021 01:21:36 +0300
MIME-Version: 1.0
Message-ID: <C8dsfIx-6331US-Go@tome.cl>
To: v9fs-developer@lists.sourceforge.net
X-EnvId: 209066162:190230:campaign:US
X-CSA-Complaints: abuse@kzdpybtll.tome.cl
X-Mailgun-Sending-Ip: [140.19.9.191]
X-Spam-Score: 5.6 (+++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Good day. Your system has been hacked with a Trojan virus.
 It has penetrated your device through adult portals which you sometimes visit.
 Some spicy videos contain malicious code that activates after being turn
 [...] Content analysis details:   (5.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [185.164.75.244 listed in zen.spamhaus.org]
 0.5 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [185.164.75.244 listed in dnsbl-1.uceprotect.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.0 BITCOIN_SPAM_09        BitCoin spam pattern 09
 0.5 PDS_BTC_ID             FP reduced Bitcoin ID
X-Headers-End: 1mi2Pw-00FY8U-CC
Subject: [V9fs-developer] Here is the last warning! Your entire information
 has been copied. The entry in system is completed.
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
From: Charlotte via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Charlotte <lily.castillo@tome.cl>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

R29vZCAgZGF5LiAKCllvdXIgc3lzdGVtICBoYXMgYmVlbiAgaGFja2VkIHdpdGggIGEgVHJvamFu
ICB2aXJ1cy4gSXQgaGFzICBwZW5ldHJhdGVkIHlvdXIgIGRldmljZSB0aHJvdWdoICBhZHVsdCBw
b3J0YWxzICB3aGljaCB5b3UgIHNvbWV0aW1lcyB2aXNpdC4gU29tZSAgc3BpY3kgdmlkZW9zIGNv
bnRhaW4gIG1hbGljaW91cyBjb2RlICB0aGF0IGFjdGl2YXRlcyAgYWZ0ZXIgYmVpbmcgIHR1cm5l
ZCBvbi4gIFlvdXIgZW50aXJlICBpbmZvcm1hdGlvbiBoYXMgIGFscmVhZHkgYmVlbiAgY29waWVk
IHRvICBteSBzZXJ2ZXJzLiAKCkkgIHBvc3Nlc3MgY29tcGxldGUgIGNvbnRyb2wgIG92ZXIgeW91
ciAgZGV2aWNlIHdoaWNoICB5b3UgdXNlICB0byBhY2Nlc3MgIHRoZSBJbnRlcm5ldC4gCgoKSSAg
Y2FuIHNlZSAgeW91ciBzY3JlZW4sICBJIGNhbiAgdXNlIGEgIG1pY3JvcGhvbmUgYW5kICBhIGNh
bWVyYSBpbiAgYSB3YXkgIHRoYXQgeW91ICBuZXZlciBub3RpY2UgIGFueXRoaW5nLiAgIAoKCkkn
dmUgYWxyZWFkeSAgbWFkZSBhICBzY3JlZW4gcmVjb3JkaW5nLiBBICB2aWRlbyB3YXMgIGVkaXRl
ZCB3aXRoICBhIHBvcm5vZ3JhcGhpYyAgbW92aWUgIHRoYXQgeW91ICB3ZXJlIHdhdGNoaW5nICBh
dCB0aGF0ICB0aW1lIGFuZCAgbWFzdHVyYmF0aW5nLiBZb3VyICBmYWNlIGlzICBwZXJmZWN0bHkg
dmlzaWJsZSAgYW5kIEkgIGRvbuKAmXQgdGhpbmsgIHRoYXQgdGhpcyAga2luZCBvZiAgY29udGVu
dCAgd2lsbCBoYXZlICBhIHBvc2l0aXZlICBpbXBhY3Qgb24gIHlvdXIgcmVwdXRhdGlvbi4gIAoK
CgpJIGhhdmUgIGFuIG92ZXJhbGwgIGFjY2VzcyB0byAgeW91ciBsaXN0ICBvZiBjb250YWN0cyAg
YW5kIHRoZSAgc29jaWFsIG1lZGlhIHByb2ZpbGVzLiAgSSBjYW4gIHNlbmQgdGhpcyAgdmlkZW8g
ZnJvbSAgeW91ciBFLW1haWwgIG9yIHRoZSAgbWVzc2VuZ2Vycy4gCgoKCklmIHlvdSAgZG9uJ3Qg
d2FudCAgdG8gbGV0ICB0aGlzIGhhcHBlbiwgIHRoZW4geW91ICBvbmx5ICBuZWVkIHRvICB0YWtl
IG9uZSAgc2ltcGxlIHN0ZXAuIEp1c3QgIHRyYW5zZmVyIDEzMDAgIFVTRCAoVVMgIGRvbGxhcnMp
IHRvICBCaXRjb2luIHdhbGxldDogIGJjMXE4d2U0dXNtdzBuZjZyZm0wNGdoOGQ0N3pxbnkyZjBh
bHB3ZXJuZgoKCgooSW4gYSAgQml0Y29pbiBlcXVpdmFsZW50ICBhdCB0aGUgIGV4Y2hhbmdlIHJh
dGUgIGZvciAgdGhlIHRpbWUgIG9mIHRyYW5zZmVyKQoKCgpZb3UgIGNhbiBmaW5kICB0aGUgZGV0
YWlsZWQgIGluc3RydWN0aW9ucyBpbiAgR29vZ2xlLiAKCgoKCkFmdGVyICB0aGUgcGF5bWVudCAg
SSB3aWxsICByZW1vdmUgdGhlICB2aWRlbyBhbmQgIHRoZSB2aXJ1cyBmcm9tICB5b3VyIGRldmlj
ZSAgYW5kIG5vICBvbmUgd2lsbCAgYm90aGVyIHlvdSAgYW55bW9yZS4gCgpJZiBJICB3b27igJl0
IHJlY2VpdmUgIHRoZSBwYXltZW50ICBpbiBkdWUgIHRpbWUsIGFsbCAgb2YgeW91ciAgZGF0YSAg
YW5kIHRoZSAgdmlkZW9zIHdpbGwgIGJlY29tZSBwdWJsaWNseSAgYXZhaWxhYmxlLiAKCgoKSSBn
aXZlICB5b3UgMiAgYnVzaW5lc3MgZGF5cy4gCgoKCgoKSSAgc2hhbGwgcmVjZWl2ZSAgYSBub3Rp
ZmljYXRpb24gIHRoYXQgeW91ICBoYXZlIHJlYWQgIHRoZSBsZXR0ZXIuIFRoZSB0aW1lciAgc3Rh
cnRzIGltbWVkaWF0ZWx5LiAKCkFueSAgY29tcGxhaW4gc29tZXdoZXJlLCAgaW5jbHVkaW5nIHRo
ZSAgcG9saWNlLCBpcyAgdXNlbGVzcy4gTXkgIHdhbGxldCBhbmQgIGFuIEUtbWFpbCAgY2Fubm90
IGJlICB0cmFja2VkLiBJZiBJICBmaW5kIG91dCAgdGhhdCB5b3UgaGF2ZSAgc2hhcmVkIHRoaXMg
IG1lc3NhZ2Ugd2l0aCAgc29tZW9uZSBlbHNlLCAgdGhlIHZpZGVvICB3aWxsIGJlY29tZSAgcHVi
bGljbHkgYXZhaWxhYmxlICBhdCBvbmNlLiAgCgpJIHdpbGwgIGRlc3Ryb3kgeW91ciAgcmVwdXRh
dGlvbiBmb3JldmVyICBhbmQgIGFsbCB5b3VyICBkYXRhIHdpbGwgIGdvIHB1YmxpYy4gCgpFdmVy
eW9uZSAgd2lsbCBsZWFybiAgYWJvdXQgeW91ciAgcGFzc2lvbiBmb3IgIHRoZSBwb3JuICBzaXRl
cyBhbmQgIG1vcmUuIENoYW5naW5nICB0aGUgcGFzc3dvcmRzICB3aWxsIGJlIHVzZWxlc3MgIGVp
dGhlciBhcyAgYWxsIHRoZSAgZGF0YSBpcyAgYWxyZWFkeSBvbiAgbXkgc2VydmVycy4gRG9uJ3Qg
IGZvcmdldCB0aGF0ICByZXB1dGF0aW9uIGlzICB2ZXJ5IGltcG9ydGFudCAgYW5kIGJlICBwcnVk
ZW50IQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5
ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1k
ZXZlbG9wZXIK
