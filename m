Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C4BB49A5505
	for <lists+v9fs-developer@lfdr.de>; Sun, 20 Oct 2024 18:21:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1t2Yfo-0000qt-L6;
	Sun, 20 Oct 2024 16:20:56 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <bounces+us.1.1165122.21255-soporteose=conose.pe@emailus.freshdesk.com>)
 id 1t2Yfn-0000qn-EZ for v9fs-developer@lists.sourceforge.net;
 Sun, 20 Oct 2024 16:20:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 Message-ID:To:Reply-To:From:Date:MIME-Version:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OhRy9r6dEgO3033j/Q3MIskOjIuVSceAcV/iegRJ/VI=; b=S0+d/zbrvhDFLEootWZv+1a1/h
 qP/Lw3cUirb0VaQwn9eVhSe9pZFpc2hGncYOyxSqqy+4MdKyg4vWeFTwaxljTw3eEcmB/78soG6N2
 Z/k2XaTJw9FEL21fwVG6NIZp1m36x/K9qryzyI4GfI40x8h8Gv9S8YhY64flsggvxljk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:Message-ID:To:Reply-To:
 From:Date:MIME-Version:Sender:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=OhRy9r6dEgO3033j/Q3MIskOjIuVSceAcV/iegRJ/VI=; b=b
 ldeRxWdFNhrDshkdUYZxvoS3wWNGkNaLpQrEVgJTkbRWvFPVjr3+4dJm4hox7OYcK1xrqNwUMP7GO
 NYPd8Fux4r0E3vZBziEwYX7j0BClSyWsa2Sgj9pcJhOlqsDzlCMtZBUmhZNinCDK3z8uqTVLyuBRh
 PzHSy1gs/CPiQHHQ=;
Received: from mail-usn94.freshemail.io ([44.192.35.93])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t2Yfm-0000j7-J2 for v9fs-developer@lists.sourceforge.net;
 Sun, 20 Oct 2024 16:20:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1729441254; 
 s=fdusmail; d=freshdesk.com;
 h=MIME-Version:Date:From:Reply-To:To:Message-ID:Subject:Content-Type:Content-Transfer-Encoding;
 bh=OhRy9r6dEgO3033j/Q3MIskOjIuVSceAcV/iegRJ/VI=;
 b=uXZSpO7zlh/CgUqxt+6zHgwQziYIY2tnwQmQgbp4vO3Sxcvn+Jt2WHzRUZuBg9+7
 OMJ33r6isPqA5oXtsH+jlxn/1o4J29SF4lcYi6OA8v+yQ+Yd01b2GNNecf/DvdZ8fdi
 8L7TqM8sljxlTZoDSs5dMWxi39spift09nOpcii2xrA9pFUwpfH39GxGRn70A2xPL5D
 /6JIfVXgHqfqL5AT3Gi/Nc58SOKAaOazGO9nmYV13Q6gL6cGkyMDBQQ7I9QrLfsjwKi
 JvPlV3qJs6D0RXWXJrPLfr/myJeUa5oYS/soPkIPp6S9SIFnkkbSYvzWh4n4DBf6+aP
 nfqJ+vTQHA==
MIME-Version: 1.0
X-Received: from ip-172-16-182-96.ec2.internal (EHLO freshdesk.com)
 ([172.16.182.96])
 by smtpout.freshdesk.com (Freshworks SMTP Server) with ESMTPA ID 5c7b0327.;
 Sun, 20 Oct 2024 16:20:02 +0000 (UTC)
Date: Sun, 20 Oct 2024 16:20:02 +0000
From: Lido Liquid Staking <soporteose@conose.pe>
To: wedo@wedo.org, mskud@icloud.com, mardra4@icloud.com, hotelhrad@meta.ua, 
 386908487@qq.com, fe.macedo@gmail.com, carla.ruiz@watts.cl, 
 mrmsam@me.com, haileyweiand@icloud.com, jamiegmac@mac.com, 
 v9fs-developer@lists.sourceforge.net, ladevincountry83@icloud.com, 
 tjacobs2@me.com, marneyjo@mac.com, mcharlton20@icloud.com, 
 baki@sowireless.org, vendas07@vivamedicamentos.com.br, 
 juanny91267@icloud.com, martymcflyshit@icloud.com, itravis@gmx.com, 
 mkrombel@icloud.com, samgov@lodestone-group.com, 
 johann.arnold@siemens.com, mvwilson@icloud.com, paulschuette@mac.com, 
 sfitzhugh@mac.com, terrytomsick@mac.com, ib4ksu@icloud.com, 
 tonyarranaga@mac.com, sales@officestoredepot.com
Message-ID: <67152db2a9bc1_1f63fdb3d9ddf2033422631.sidekiq-frequent-fd-poduseast1-main3-blue-5b968c8fdd-nrh5j@notification.freshdesk.com>
sent-on: 2024-10-20 16:20:02 +0000
Auto-Submitted: auto-generated
X-Auto-Response-Suppress: DR, RN, OOF, AutoReply
X-FUP-PRIORITY: 1
X-MESSAGEID: 6HaPV8Z//j7Krkms4V4dtM/aahLFNyNvl8OAhcPXAdO9OY1XSvtTqsDM32Wz1yXAZ5HoFj0rigOEW7TK9V4470Hd5M+VupCx7vnz4/uYTSnVc2CsJh/RUEHMdwK7lVUsbJoNajXFp7TPmTCUveSfpopFmT/JQlmUExAYxc7cUnY=
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: stETH Airdrop Rewards Portal You've been selected for a
 special
 reward worth up to 100 ETH! This is your chance to enhance your crypto
 portfolio
 with an exclusive stETH airdrop from Lido Liquid Staking. 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [44.192.35.93 listed in wl.mailspike.net]
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
 identical to background
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1t2Yfm-0000j7-J2
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] [Last Chance]: Claim Your Exclusive stETH Airdrop
 20.10.2024 16:20 (UTC)
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Reply-To: Lido Liquid Staking <soporteose@conose.pe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

ICBzdEVUSCBBaXJkcm9wIFJld2FyZHMgUG9ydGFsIAogICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFlvdSd2ZSBiZWVuIHNlbGVjdGVk
IGZvciBhIHNwZWNpYWwgcmV3YXJkIHdvcnRoIHVwIHRvIDEwMCBFVEghCiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgVGhpcyBpcyB5b3VyIGNoYW5jZSB0byBlbmhhbmNlIHlvdXIg
Y3J5cHRvIHBvcnRmb2xpbyB3aXRoIGFuIGV4Y2x1c2l2ZSBzdEVUSCBhaXJkcm9wIGZyb20gTGlk
byBMaXF1aWQgU3Rha2luZy4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBBY3Qg
RmFzdCEKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBUaGlzIGlzIGEgbGltaXRl
ZC10aW1lIGFpcmRyb3AuIERvbuKAmXQgbWlzcyBvdXQgb24gc2VjdXJpbmcgeW91ciBzcG90Lgog
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgCiAg
ICAgICAgICAgICAgICAgICAgCiAKICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAg
ICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBDbGFpbSBub3chCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAg
ICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgIAoKICAgICAgICAgICAg
ICAgICDCqSAyMDI0IExpZG8uIEFsbCByaWdodHMgcmVzZXJ2ZWQuICAxMDAgQmxhY2sgUHJpbmNl
IFJkLCBOZXcgWW9yayAxMTU5MCwgVVNBICAgVW5zdWJzY3JpYmXCoHzCoFByaXZhY3kgUG9saWN5
ICAgCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpW
OWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9y
Z2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMt
ZGV2ZWxvcGVyCg==
