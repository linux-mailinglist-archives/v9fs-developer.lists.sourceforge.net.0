Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BA0B1E895F
	for <lists+v9fs-developer@lfdr.de>; Fri, 29 May 2020 23:01:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:Mime-Version:Date:To:
	Sender:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=OXd5d/bMitXTaxkWR8a3VCbQUdt9TlEQMvwk8Jnda38=; b=EiS9qrhAso/L7SDiik3mmSvnY
	sL3bnRohiLeZO+DEGbk6YoBXRhvB796LL09soMP1ZfjCn5rF2qVzS0SuubjT6uOF1vXrl1AZdpqHj
	ipoKRKhNxtQPp50xxX32SdKt8bSy8vZSuPMlE73VE/o88b96zOvOs1hWzp120tOf03aAw=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jem7s-0003ik-JM; Fri, 29 May 2020 21:01:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <01010172623cdc71-f213331a-7af5-4d58-94f9-bbfa89df8094-000000@us-west-2.amazonses.com>)
 id 1jem7r-0003id-9t
 for v9fs-developer@lists.sourceforge.net; Fri, 29 May 2020 21:01:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:References:Content-Type:Mime-Version:
 Date:To:From:Subject:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=J8IbnR28XfkV46YSCzZtyouPXqqKteI4n+ag9FwBFlo=; b=Ya+hM2ZctClJMFjQbCDIAC76vT
 2xJzZM1ita1a2isWgMVM2Fyv13dPvjM2RPypyZB9jc/n1BvcJMfP+iGqZ2qLdYrzWJECIR/uhd8QC
 0ET/nmlQP0F4yYyt+19oct9XWpvkZkw5lqni0wNNnaAWsLWmR9TLHHmMsS+uPN30Tis4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:References:Content-Type:Mime-Version:Date:To:From:Subject:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=J8IbnR28XfkV46YSCzZtyouPXqqKteI4n+ag9FwBFlo=; b=R
 /4UqMot1eAV+wAJTHR7Z+fRPOAqNMGLAIIbz4c+c7Ee8tJ2OKNLxD6TPekGLOW1ul5ZEoS4oTSpjg
 W+Jtxp7zao2lVCAYFgHU4ScnpDUUjV8Jg6aWAFFbwhL/Lb4LLsOikwkzqo84fPIigFLhpo+VmHyzf
 UX5zFZR9pQAPQVl4=;
Received: from a27-223.smtp-out.us-west-2.amazonses.com ([54.240.27.223])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.92.2)
 id 1jem7n-000AKq-Gx
 for v9fs-developer@lists.sourceforge.net; Fri, 29 May 2020 21:01:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=sknkt525wmvsd5qrslvt4aisaznnhvir; d=konnectglobalmarketing.com;
 t=1590786055;
 h=Subject:From:To:Date:Mime-Version:Content-Type:References:Message-Id;
 bh=J8IbnR28XfkV46YSCzZtyouPXqqKteI4n+ag9FwBFlo=;
 b=JOvYhaXhbeTYfuQakN6nMNIUkK25ij9BVeBsE/DzB/YYIBFZX3/bUq63PJbW7PPm
 Maggv0GTLrF08QaLH0xvq+aR5+sO6Q5E4nS3/jIrcGqWFEuHgeiO7Z0sQRX7PnC+Ral
 MVBooWWVrcHwODBo5U2Y5XYpZMxH/+pWNjx8N4cE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1590786055;
 h=Subject:From:To:Date:Mime-Version:Content-Type:References:Message-Id:Feedback-ID;
 bh=J8IbnR28XfkV46YSCzZtyouPXqqKteI4n+ag9FwBFlo=;
 b=FDgLf6lWnFbWpJK/LqAdr02vcnfVqVv9Mlw6MCbCoEpsNsOfKmJmxYYmiM6kl0+2
 sJvMhd5G24qP3bJMkSD01ZWKt6F3Lo8QVDSRhae/9Fb2kskXKdjHWd0w6mITbRnxnzk
 qDOsEHWUEpnIIRmkXCzwS9+ELPh8QasRXWwyAiiU=
To: =?UTF-8?Q?v9fs-developer=40lists=2Esourceforge=2Enet?=
 <v9fs-developer@lists.sourceforge.net>
Date: Fri, 29 May 2020 21:00:55 +0000
Mime-Version: 1.0
References: <mail.92ee515b-eed3-4be9-bc51-9c0c58678099@storage.wm.amazon.com> 
 <mail.92ee515b-eed3-4be9-bc51-9c0c58678099@storage.wm.amazon.com>
X-Priority: 3 (Normal)
X-Mailer: Amazon WorkMail
Thread-Index: AdY176UF3Pmp6jIaStWyR6C3XdOUTw==
Thread-Topic: Proposal
Message-ID: <01010172623cdc71-f213331a-7af5-4d58-94f9-bbfa89df8094-000000@us-west-2.amazonses.com>
X-SES-Outgoing: 2020.05.29-54.240.27.223
Feedback-ID: 1.us-west-2.An468LAV0jCjQDrDLvlZjeAthld7qrhZr+vow8irkvU=:AmazonSES
X-Spam-Score: 1.2 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [54.240.27.223 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [54.240.27.223 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jem7n-000AKq-Gx
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Proposal
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

SGksCgrCoApXb3VsZCB5b3UgbGlrZSB0byBjb25uZWN0IHdpdGgga2V5IGRlY2lzaW9uIG1ha2Vy
cyBmcm9tIHRoZSBiZWxvdyBzZWN0b3JzOwoKwqAKTWFudWZhY3R1cmluZywgQ29uc3RydWN0aW9u
LCBFZHVjYXRpb24sIFJldGFpbCwgSGVhbHRoY2FyZSwgRW5lcmd5LCBVdGlsaXRpZXMgJiBXYXN0
ZSBUcmVhdG1lbnQsIFRyYW5zcG9ydGF0aW9uLCBCYW5raW5nICYgRmluYW5jZSwgTWVkaWEgJiBJ
bnRlcm5ldCwgSG9zcGl0YWxpdHksIGV0Yy4gCgrCoApZb3UgY2FuIGNvbnRhY3QgdGhlbSB2aWEg
ZGlyZWN0wqBidXNpbmVzcyBlbWFpbHMgb3IgcGhvbmUgbnVtYmVyc8KgZm9yIHlvdXIgc2FsZXMg
YW5kIG1hcmtldGluZyBpbml0aWF0aXZlcy4gCgrCoApLaW5kbHkgbGV0IG1lIGtub3cgdGhlIFNl
Y3RvcnMsIEpvYiBUaXRsZXMgJiBHZW9ncmFwaHkgdGhhdCB5b3Ugd2lzaCB0byB0YXJnZXQsIHNv
IHRoYXQgSSBjYW4gZ2V0IGJhY2sgd2l0aCB0aGUgc2FtcGxlcywgY291bnRzIGFuZCBtb3JlIGRl
dGFpbHMgZm9yIHlvdXIgcmV2aWV3LiAKCsKgCkxvb2tpbmcgZm9yd2FyZCB0byB5b3VyIHJlc3Bv
bnNlLgoKwqAKVGhhbmtzLAoKS2Vsc2V5IENvb3BlciAtIE1hcmtldGluZyBFeGVjdXRpdmUKCsKg
ClN0YXkgc2FmZS4KClJlcGx5IGJhY2sg4oCcUGFzc+KAnSBmb3Igbm8gZnVydGhlciBlbWFpbHMu
CgrCoAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlm
cy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdl
Lm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRl
dmVsb3Blcgo=
