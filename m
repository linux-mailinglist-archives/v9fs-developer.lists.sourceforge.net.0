Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F8B9443AAF
	for <lists+v9fs-developer@lfdr.de>; Wed,  3 Nov 2021 02:00:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mi4e0-0003wz-MS; Wed, 03 Nov 2021 01:00:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1mi4e0-0003ws-0C
 for v9fs-developer@lists.sourceforge.net; Wed, 03 Nov 2021 01:00:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lWGWUPlNU15YUMqghMH2m2/toiDn+Ja68kA6ffuNuP0=; b=iyNYpfJppqktrbrwyIqyrtOhay
 syJQ+q08d0H3LO+2nBG0C3p9+UB9b4yHP2u2yNblcRBXBIxPR2K3AChCz/IL7SyzgssC8mbdNcI+j
 QX5A4KyMk0CL76HaHmREhYtpp1cICUNGQBfKqLiFvRIMuzm9p/LHJegJKAOG2XQ7SmYk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lWGWUPlNU15YUMqghMH2m2/toiDn+Ja68kA6ffuNuP0=; b=iLWLXH6b4eEFBEA0b83o9kT5ev
 yyUZ8i6/gBvJ35fRtfY+3fef7Tbae9uUXLgPk2NxjqvuD21kpFOlIRnTfgMl2f07w5FFO/nJqEJYW
 UyS2gYmX1ek9q1XCh86YS3U4XP5rLGS/T1cJQeurtR9SWYpP+PL5vbkUWvvEo1mPAGNY=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mi4dv-00FeB1-0s
 for v9fs-developer@lists.sourceforge.net; Wed, 03 Nov 2021 01:00:46 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 4549CC01D; Wed,  3 Nov 2021 02:00:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1635901234; bh=lWGWUPlNU15YUMqghMH2m2/toiDn+Ja68kA6ffuNuP0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rJxwFKUhVkvdd5ERg0zv6Bi0rYJhVVr0LmpPssvLTa0v35TVaSmP/3Gr1hnIAUY/7
 yQSl0FQ9Wk7n3AcenYZGmHGdZuyfGwLTgBQk2onlvM9RPDGiAI/kPE7cAl4pgNntuo
 +PgvZkk9ULEgBlIzV8YgOmBUoJ5qlyk8JQaMw5J4t/Je9sGWwAVVhVApk91NVK95/V
 8Dq3LsP5uy87EAImW1zCQ3PIIsNzD0hMxlCAguENVCmpXR+ZNIwLauDo0w90m6OLTx
 rA3lOaBjdM+k+XRfB2pgfA94CgfioHSXEubr17WcJ7KZJbYuU+F6quSyHCsxqCuSf9
 HSS6l1Ml832jA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 2BA56C009;
 Wed,  3 Nov 2021 02:00:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1635901233; bh=lWGWUPlNU15YUMqghMH2m2/toiDn+Ja68kA6ffuNuP0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RWM4RZtZ0qH38c8CL6Jw3wuxKQG7SEGSL1RAfQPFk6GjWPwJ8wtIpb03FtJw7EyYL
 aQSQRuFm5w4MnHpceXATLzkw3uDu9KeXD3BqjxxkhPTAnmqx7gpkZo9w1gWOVtydlV
 jSNTXNR5Pko8KTedTIQUn4kXxHLqS85eCNSEYkZoECIriNnPv2GO71++l4A4R/Vq0z
 Kg6lRIZA1anx2oZT3kcqtceCmzA/ktLFQ2plWFFOwylfFqODx4HKFhK4eazPBo0HEX
 U5jCIrR4mDpDX3BRZHxKDZ8q3VPlGbYi6JbS2ofVd0pD1ZtRWMkzu2DB7YxaqeOTbo
 Oqr8sCmruNjfw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 4eba7d17;
 Wed, 3 Nov 2021 01:00:28 +0000 (UTC)
Date: Wed, 3 Nov 2021 10:00:12 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <thomas@t-8ch.de>
Message-ID: <YYHfHIcVSDOSuJnx@codewreck.org>
References: <20211017134611.4330-1-linux@weissschuh.net>
 <YYEYMt543Hg+Hxzy@codewreck.org>
 <922a4843-c7b0-4cdc-b2a6-33bf089766e4@t-8ch.de>
 <YYEmOcEf5fjDyM67@codewreck.org>
 <ddf6b6c9-1d9b-4378-b2ee-b7ac4a622010@t-8ch.de>
 <YYFSBKXNPyIIFo7J@codewreck.org>
 <3e8fcaff-6a2e-4546-87c9-a58146e02e88@t-8ch.de>
 <YYHHHy0qJGlpGEaQ@codewreck.org>
 <778dfd93-ace5-4cab-9a08-21d279f18c1f@t-8ch.de>
 <YYHXOOwkmJW8bhHW@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YYHXOOwkmJW8bhHW@codewreck.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dominique Martinet wrote on Wed, Nov 03, 2021 at 09:26:32AM
 +0900: > Feel free to resend in a proper form though, I could make up a commit
 > message but it might as well be your words! Ah, just a couple more things:
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1mi4dv-00FeB1-0s
Subject: Re: [V9fs-developer] [PATCH] net/9p: autoload transport modules
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org,
 Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <linux@weissschuh.net>,
 linux-kernel@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 v9fs-developer@lists.sourceforge.net, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

RG9taW5pcXVlIE1hcnRpbmV0IHdyb3RlIG9uIFdlZCwgTm92IDAzLCAyMDIxIGF0IDA5OjI2OjMy
QU0gKzA5MDA6Cj4gRmVlbCBmcmVlIHRvIHJlc2VuZCBpbiBhIHByb3BlciBmb3JtIHRob3VnaCwg
SSBjb3VsZCBtYWtlIHVwIGEgY29tbWl0Cj4gbWVzc2FnZSBidXQgaXQgbWlnaHQgYXMgd2VsbCBi
ZSB5b3VyIHdvcmRzIQoKQWgsIGp1c3QgYSBjb3VwbGUgbW9yZSB0aGluZ3M6CgoqIG1ha2Ugd2l0
aCBXPTEgY29tcGxhaW5zIGFib3V0IG1pc3NpbmcgcHJvdG90eXBlczoKCm5ldC85cC90cmFuc19m
ZC5jOjExNTU6NTogd2FybmluZzogbm8gcHJldmlvdXMgcHJvdG90eXBlIGZvciDigJhwOV90cmFu
c19mZF9pbml04oCZIFstV21pc3NpbmctcHJvdG90eXBlc10KIDExNTUgfCBpbnQgcDlfdHJhbnNf
ZmRfaW5pdCh2b2lkKQogICAgICB8ICAgICBefn5+fn5+fn5+fn5+fn5+Cm5ldC85cC90cmFuc19m
ZC5jOjExNjQ6Njogd2FybmluZzogbm8gcHJldmlvdXMgcHJvdG90eXBlIGZvciDigJhwOV90cmFu
c19mZF9leGl04oCZIFstV21pc3NpbmctcHJvdG90eXBlc10KIDExNjQgfCB2b2lkIHA5X3RyYW5z
X2ZkX2V4aXQodm9pZCkKICAgICAgfCAgICAgIF5+fn5+fn5+fn5+fn5+fn4KCgoqIFRoaXMgYWN0
dWFsbHkgYnJlYWsgdGhlICdubyB0cmFucz10Y3AnIHNwZWNpZmllZCBjYXNlIHdoZW4gbm8gZXh0
cmEKbW9kdWxlIGlzIGxvYWRlZCwgYnV0IEknbSBub3Qgc3VyZSBob3cgaW1wYWN0ZnVsIHRoYXQg
aXMuClNlZSB2OWZzX2dldF9kZWZhdWx0X3RyYW5zKCksIHRoZXkgaXRlcmF0ZSB0aHJvdWdoIGxv
YWRlZCB0cmFuc3BvcnRzCih0aHJvdWdoIHJlZ2lzdGVyX3RyYW5zKCkpLCB3ZSBtaWdodCB3YW50
IHRvIGJha2UgaW4gYSBsaXN0IHRoYXQKYWRkaXRpb25hbGx5IHRyaWVzIHRvIGxvYWQgbW9kdWxl
cyBpZiBubyBtb2R1bGUgaXMgbG9hZGVkIGF0IGFsbAooaW4gbXkgb3BpbmlvbiB2aXJ0aW8gbWFr
ZXMgc2Vuc2UgYmVmb3JlIHRjcCwgdGhlbiBmZCwgdW5peCwgeGVuLCByZG1hPykKCldlbGwsIHRo
YXQgY2FuIHByb2JhYmx5IGNvbWUgbGF0ZXIuCgotLSAKRG9taW5pcXVlCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGlu
ZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3Rz
LnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
