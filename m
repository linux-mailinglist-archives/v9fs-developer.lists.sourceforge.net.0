Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B811EBFD8
	for <lists+v9fs-developer@lfdr.de>; Tue,  2 Jun 2020 18:19:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:Mime-Version:Date:To:
	Sender:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=Gs6YYoPLg0dpNK6v+DXYPEm5ZIFEb5s/pG8gZjS0Q74=; b=UjBa12q9fW0dR3A9K+ACJzO6H
	Y9EPI/ijQ1ySoaCh8M19g35r5YBNYEz+XGVSalghE0kVBZJl0fufqxzBWkBQ72HXQF/XeEVI0/Mr4
	QLVv0Rw8EkmkBvG5Ys7PCjG0hNM3j8KH+dm1VQ1GGz21AB3CN/0GxoWxE5jPvJGk40HQo=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jg9dI-0008Ga-6p; Tue, 02 Jun 2020 16:19:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <0101017275d4460a-29d1af26-8df3-437e-b53e-7813192e4758-000000@us-west-2.amazonses.com>)
 id 1jg9dH-0008GT-07
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Jun 2020 16:19:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:References:Content-Type:Mime-Version:
 Date:To:From:Subject:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=p+5KK7gtVh1JAIE/nnnsA9iH7ZitPGdSWmSBzhMUTSQ=; b=HsnkYH0fF5M1GSejWb1vapYOs4
 bcNZ5msv6Yc1Lwl2+JJMxHGvmlAA1f7prG1gEpPsVvIIisoV4bFj3hoDhUfZF0i6oSnoARg9tAUoe
 OqBbGZCflW3J6BKlbs5S2S27ANpvzYpP0SKMuhB6ZH0cml5EmvpMKvcRPFga+/fHz2D0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:References:Content-Type:Mime-Version:Date:To:From:Subject:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=p+5KK7gtVh1JAIE/nnnsA9iH7ZitPGdSWmSBzhMUTSQ=; b=A
 U6Dldr1wlLWO3hvJ++zekeqn0H4DFkNdX8+2CgD7yPPvt8jw1G+W98reuionr4k+BmOIDYkmayVse
 6KHOe5oKTcZbCpqSJ5pjvb7cS/EUkXslIfRMR3gCCjSfJBsCEAzRaH1gRZmGfZ4uKPDw8e0l0HkYh
 tkysKkXqoe18iQt0=;
Received: from a58-61.smtp-out.us-west-2.amazonses.com ([54.240.58.61])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.92.2)
 id 1jg9dC-009dqj-8E
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Jun 2020 16:19:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=sknkt525wmvsd5qrslvt4aisaznnhvir; d=konnectglobalmarketing.com;
 t=1591114745;
 h=Subject:From:To:Date:Mime-Version:Content-Type:References:Message-Id;
 bh=p+5KK7gtVh1JAIE/nnnsA9iH7ZitPGdSWmSBzhMUTSQ=;
 b=eInOt3zz8AoKlmxUFt+5aIuluOewtVeeKdPq7figSiohF0usHkXwZL6lcg/5vJ+m
 aPdJoR0r3Q9+e+RZLoSO6e9/EsRsD7zMPPLLqnDbg81sD0KyCcGXSp0wv99/lsSlSO1
 2m68mp18a3UON1wrLHErAb8iNp55fq21wjwU+h+8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1591114745;
 h=Subject:From:To:Date:Mime-Version:Content-Type:References:Message-Id:Feedback-ID;
 bh=p+5KK7gtVh1JAIE/nnnsA9iH7ZitPGdSWmSBzhMUTSQ=;
 b=d9yGwx/N6+lyeNe8xhTRXsKzE0XR5+23XfTV0QiXmSHdSOZtUnnnjFjqHbs1WMTJ
 LRfkZSMTSOgYzWwU7FtLFZ1WI2x0r35S9aZUBng7Qdu51Pv8dqthgWxtpZSQZc8vz7P
 uZHkogD9m5IsxEBbahbSibagQHd7tOoYB857oYVI=
To: =?UTF-8?Q?=27v9fs-developer=40lists=2Esourceforge=2Enet=27?=
 <v9fs-developer@lists.sourceforge.net>
Date: Tue, 2 Jun 2020 16:19:05 +0000
Mime-Version: 1.0
References: <mail.5d661af1-a9df-410a-ba36-db5e741faf9f@storage.wm.amazon.com> 
 <mail.5d661af1-a9df-410a-ba36-db5e741faf9f@storage.wm.amazon.com>
X-Priority: 3 (Normal)
X-Mailer: Amazon WorkMail
Thread-Index: AdY49y/i3FATqRyaSDCCHJIHLJLOTQ==
Thread-Topic: RE: Proposal
Message-ID: <0101017275d4460a-29d1af26-8df3-437e-b53e-7813192e4758-000000@us-west-2.amazonses.com>
X-SES-Outgoing: 2020.06.02-54.240.58.61
Feedback-ID: 1.us-west-2.An468LAV0jCjQDrDLvlZjeAthld7qrhZr+vow8irkvU=:AmazonSES
X-Spam-Score: 1.2 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [54.240.58.61 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [54.240.58.61 listed in list.dnswl.org]
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jg9dC-009dqj-8E
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] Proposal
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
From: =?UTF-8?Q?Kelsey_Cooper?= via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: =?UTF-8?Q?Kelsey_Cooper?= <kelsey@konnectglobalmarketing.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SGksCgrCoApJIGhhdmUgYmVlbiB0cnlpbmcgdG8gZ2V0IGluIHRvdWNoIHdpdGggeW91IHRvIHNl
ZSBpZiB0aGVyZSBpcyBhIG11dHVhbCBmaXQgYmV0d2VlbiBvdXIgY29tcGFueeKAmXMgZXhwZXJ0
aXNlIGFuZCB5b3VyIGdvYWxzIGFyb3VuZC4KCsKgClBsZWFzZSByZXZpZXcgbXkgcHJldmlvdXMg
ZW1haWxzIGFuZCBsZXQgbWUga25vdyB5b3VyIHRob3VnaHRzLgoKwqAKQXdhaXQgeW91ciByZXNw
b25zZS4KCsKgClRoYW5rcywKCktlbHNleSBDb29wZXIgLSBNYXJrZXRpbmcgRXhlY3V0aXZlCgrC
oArCoApIaSwKCgpEaWQgeW91IGdldCBhIGNoYW5jZSB0byBnbyB0aHJvdWdoIG15IHByZXZpb3Vz
IGVtYWlsPyAKCgpLaW5kbHkgbGV0IG1lIGtub3cgeW91ciB0YXJnZXQgYXVkaWVuY2UgKFNlY3Rv
cnMsIEpvYiBUaXRsZXMgJiBHZW9ncmFwaHkpIHRoYXQgeW91IHdpc2ggdG8gdGFyZ2V0LCBzbyB0
aGF0IEkgY2FuIGdldCBiYWNrIHdpdGggdGhlIGNvdW50cywgc2FtcGxlcyBhbmQgcHJpY2luZyBk
ZXRhaWxzIGZvciB5b3VyIHJldmlldy4gCgrCoApBcHByZWNpYXRlIHlvdXIgcmVzcG9uc2UuCgrC
oApUaGFua3MsCgpLZWxzZXkgQ29vcGVyIC0gTWFya2V0aW5nIEV4ZWN1dGl2ZQoKwqAKwqAKSGks
CgrCoApXb3VsZCB5b3UgbGlrZSB0byBjb25uZWN0IHdpdGgga2V5IGRlY2lzaW9uIG1ha2VycyBm
cm9tIHRoZSBiZWxvdyBzZWN0b3JzOwoKwqAKTWFudWZhY3R1cmluZywgQ29uc3RydWN0aW9uLCBF
ZHVjYXRpb24sIFJldGFpbCwgSGVhbHRoY2FyZSwgRW5lcmd5LCBVdGlsaXRpZXMgJiBXYXN0ZSBU
cmVhdG1lbnQsIFRyYW5zcG9ydGF0aW9uLCBCYW5raW5nICYgRmluYW5jZSwgTWVkaWEgJiBJbnRl
cm5ldCwgSG9zcGl0YWxpdHksIGV0Yy4gCgrCoApZb3UgY2FuIGNvbnRhY3QgdGhlbSB2aWEgZGly
ZWN0wqBidXNpbmVzcyBlbWFpbHMgb3IgcGhvbmUgbnVtYmVyc8KgZm9yIHlvdXIgc2FsZXMgYW5k
IG1hcmtldGluZyBpbml0aWF0aXZlcy4gCgrCoApLaW5kbHkgbGV0IG1lIGtub3cgdGhlIFNlY3Rv
cnMsIEpvYiBUaXRsZXMgJiBHZW9ncmFwaHkgdGhhdCB5b3Ugd2lzaCB0byB0YXJnZXQsIHNvIHRo
YXQgSSBjYW4gZ2V0IGJhY2sgd2l0aCB0aGUgc2FtcGxlcywgY291bnRzIGFuZCBtb3JlIGRldGFp
bHMgZm9yIHlvdXIgcmV2aWV3LiAKCsKgCkxvb2tpbmcgZm9yd2FyZCB0byB5b3VyIHJlc3BvbnNl
LgoKwqAKVGhhbmtzLAoKS2Vsc2V5IENvb3BlciAtIE1hcmtldGluZyBFeGVjdXRpdmUKCsKgClN0
YXkgc2FmZS4KClJlcGx5IGJhY2sg4oCcUGFzc+KAnSBmb3Igbm8gZnVydGhlciBlbWFpbHMuCgrC
oAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1k
ZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5l
dApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVs
b3Blcgo=
