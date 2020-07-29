Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2875723210A
	for <lists+v9fs-developer@lfdr.de>; Wed, 29 Jul 2020 16:55:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:Mime-Version:Date:To:
	Sender:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=hI2r/JmjDqrhsj//fLZSC78AwqhGjv6vYxv5fbXH0NI=; b=AddLBEkrTHV7MCmIJdei9sLln
	1O/27pr2gs+UwD3jLMKh98J78A8GFrBNtpHhm8fqORvUl/hk2Ozfqd03pvXbs4G82f3Lm2B5TqDP5
	kaR3aPoNqM2e9fjlYg/n/Iz/qsp5kqYe1sSm9RbS7vPvL47kOc+yR1lH0jOMg3FsMmLWU=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k0nTu-0000fb-UP; Wed, 29 Jul 2020 14:54:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <010101739b1184d9-529aeb3b-1122-40dd-bac3-73e4d0672c13-000000@us-west-2.amazonses.com>)
 id 1k0nTu-0000fP-3v
 for v9fs-developer@lists.sourceforge.net; Wed, 29 Jul 2020 14:54:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:References:Content-Type:Mime-Version:
 Date:To:From:Subject:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=boF21054gDxZdn2b+JWyla0krMGy6W7qPQNRoZ/ZKFg=; b=W9ZrNrnROMGwrat7mO29HIebWV
 NhEEa4LbfX2ouUJdCxTNfykFXfvTWavRz8b19uIQuw84SkpffkGXseopUiK/9+wm1rX0d1au/n1gu
 0AmqGN42yImIeVXiPMKf6E+pxSfk2KmJSt/S/MdznGqL9yoJSzSd0YVWDulvvZMt293U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:References:Content-Type:Mime-Version:Date:To:From:Subject:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=boF21054gDxZdn2b+JWyla0krMGy6W7qPQNRoZ/ZKFg=; b=k
 lB9tA+vGR9TILuj6JrUfC26RsuAva9rm5NR+qCySFZ8rYBoHHTyLminlvVLKUg6xpnVn620VoYWJx
 esaKy3NV2r6IOMytpxh3YX4DlJNcuyBDcnuL1I6Gt4vVCDj+KascKB3gS841W+F5hhISflCQqrR3O
 T769v32ShMcGsIUY=;
Received: from a58-46.smtp-out.us-west-2.amazonses.com ([54.240.58.46])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.92.2)
 id 1k0nTs-003J76-6G
 for v9fs-developer@lists.sourceforge.net; Wed, 29 Jul 2020 14:54:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=sknkt525wmvsd5qrslvt4aisaznnhvir; d=konnectglobalmarketing.com;
 t=1596034483;
 h=Subject:From:To:Date:Mime-Version:Content-Type:References:Message-Id;
 bh=boF21054gDxZdn2b+JWyla0krMGy6W7qPQNRoZ/ZKFg=;
 b=jVT3MP9y3RV2674VhOveklI6HWchfOZ3Bsvg/yOvfSkN+2dFxcX/iepuaG+AvcHY
 ISLc2Prwz8RkQgFM746drmFjmw6mbG7/D3f3O1wgnxDN75gs6dnE5i+xQXwwCdnd0wh
 bwuy3uXXxs+UZSwTY+147iGvTjMs/iQU+EoGQhP4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1596034483;
 h=Subject:From:To:Date:Mime-Version:Content-Type:References:Message-Id:Feedback-ID;
 bh=boF21054gDxZdn2b+JWyla0krMGy6W7qPQNRoZ/ZKFg=;
 b=bb76OItneM/xSvKMwcUf81RCKABfKya88C4KkIfOhQu5YP+2ypA4bpY+DszO44yc
 HVX0one4r5kHfhBSeBzxYk7+jx/GZ+41X+D381WZKd8mBRLa+bIcQIyEGl2OMN9t8JG
 pmscM8hpddzT3SfR75Y5r8B08yBWWIJD4y1dDQnE=
To: =?UTF-8?Q?v9fs-developer=40lists=2Esourceforge=2Enet?=
 <v9fs-developer@lists.sourceforge.net>
Date: Wed, 29 Jul 2020 14:54:43 +0000
Mime-Version: 1.0
References: <mail.12c01978-5f29-4615-a699-d1fd8386b033@storage.wm.amazon.com> 
 <mail.12c01978-5f29-4615-a699-d1fd8386b033@storage.wm.amazon.com>
X-Priority: 3 (Normal)
X-Mailer: Amazon WorkMail
Thread-Index: AdZltxURwgnkHtQkROS9aubSHOzpMQ==
Thread-Topic: Altium - Proposal
X-Wm-Sent-Timestamp: 1596034482
Message-ID: <010101739b1184d9-529aeb3b-1122-40dd-bac3-73e4d0672c13-000000@us-west-2.amazonses.com>
X-SES-Outgoing: 2020.07.29-54.240.58.46
Feedback-ID: 1.us-west-2.An468LAV0jCjQDrDLvlZjeAthld7qrhZr+vow8irkvU=:AmazonSES
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [54.240.58.46 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [54.240.58.46 listed in list.dnswl.org]
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k0nTs-003J76-6G
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Altium - Proposal
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

SGksCgrCoApXb3VsZCB5b3UgbGlrZSB0byBzZW5kIGluIHlvdXIgQnVzaW5lc3MgUHJvcG9zYWxz
L05ld3NsZXR0ZXIgdG8ga2V5IGRlY2lzaW9uIE1ha2VycyBmcm9tIGNvbXBhbmllcyBjdXJyZW50
bHkgdXNpbmcgQWx0aXVtIFNvZnR3YXJlPwoKwqAKVGl0bGVzIExpa2U6wqAgSVQgRGVjaXNpb24g
TWFrZXJzLCBDLWxldmVsLCBNYW5hZ2VycyBhbmQgb3RoZXIgam9iIHRpdGxlcyBhcyBwZXIgeW91
ciByZXF1aXJlbWVudC4gCgrCoApLaW5kbHkgbGV0IG1lIGtub3cgdGhlIEpvYiBUaXRsZXMgJiBH
ZW9ncmFwaHkgdGhhdCB5b3Ugd2lzaCB0byB0YXJnZXQsIHNvIHRoYXQgSSBjYW4gZ2V0IGJhY2sg
d2l0aCB0aGUgc2FtcGxlcywgY291bnRzIGFuZCBtb3JlIGRldGFpbHMgZm9yIHlvdXIgcmV2aWV3
LiAKCsKgCldlIGNhdGVyIG90aGVyIEluZHVzdHJ5IGNvbnRhY3RzIHN1Y2ggYXM6IE1hbnVmYWN0
dXJpbmcswqBDb25zdHJ1Y3Rpb24swqBFZHVjYXRpb24swqBSZXRhaWwswqBIZWFsdGhjYXJlLCBF
bmVyZ3ksIFV0aWxpdGllcyAmIFdhc3RlIFRyZWF0bWVudCwgVHJhbnNwb3J0YXRpb24sIGV0Yy4g
CgrCoApMb29raW5nIGZvcndhcmQgdG8geW91ciByZXNwb25zZS4KCsKgClJlZ2FyZHMsCgpLZWxz
ZXkgQ29vcGVyIC0gTWFya2V0aW5nIEV4ZWN1dGl2ZQoKwqAKU3RheSBzYWZlLgoKUmVwbHkgYmFj
ayDigJxQYXNz4oCdIGZvciBubyBmdXJ0aGVyIGVtYWlscy4KCsKgCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxp
c3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291
cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
