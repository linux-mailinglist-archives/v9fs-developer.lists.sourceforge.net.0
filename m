Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 89613B0BF0F
	for <lists+v9fs-developer@lfdr.de>; Mon, 21 Jul 2025 10:36:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-Id:Date:MIME-Version:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5QqUwb81dIcEsebvDotv1xoJkmfxzwl8XJDASnR8PV0=; b=AIhfsAJOfNxMNs55Z8c7jpNNku
	Aac48nHBrz8/wAE4XCd0NattxbG9CjYe/HL7Pj4a0JtgUIadniCUoyf5kAImVqL0ZQywPKaLoV181
	/g4DJrjdu5bo5tnbWYSkbMXp1L9dHIrsMaSUlr97dEojbk1q4ZZrfsOJHvdPjHfr5/yU=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1udm0j-0007O8-63;
	Mon, 21 Jul 2025 08:36:38 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <bounces+46028984-9bbc-v9fs-developer=lists.sourceforge.net@em3971.sar.sa.com>)
 id 1udm0h-0007O0-J5 for v9fs-developer@lists.sourceforge.net;
 Mon, 21 Jul 2025 08:36:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:Reply-To:Message-Id:Date:MIME-Version:
 Content-Type:Subject:From:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iT/RBIs5sj8Gu23MUmy/8EKaADPG3Hjp0al3gmN5f3k=; b=GgRCZa7RCVM1qQ6FSWaDTHPNp0
 3RJkBbSZ0Ti4MWZGBLZLALu0bEqbTsYCnaEA52eWIHviOvFq4d8H7MIej5FNlRkascP/svRwivE7H
 yPh8cokA1FG8reCOCSRHr8crxMyZpcHomKuIM8GD10mVlt3xo6SstV9vpdrXt8C2OS6s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:Reply-To:Message-Id:Date:MIME-Version:Content-Type:Subject:From:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=iT/RBIs5sj8Gu23MUmy/8EKaADPG3Hjp0al3gmN5f3k=; b=B
 rhlVPjRosB5HeeIqFAHVtL63V7HEH47zhrEeU3cQka9bvRJldRaWI0ihCl29AGU9CgU02X5gpQTwq
 1Qx94zkOwr3KuwK9qK934mocbCbiBtIrtGkdafk4r+Vj81/oEL6FHinOMh9nIhIwtaaBKYnoHHrsb
 9h4gF65LyFuVkdZA=;
Received: from xvfrrdcs.outbound-mail.sendgrid.net ([168.245.93.198])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1udm0h-0006X4-Mf for v9fs-developer@lists.sourceforge.net;
 Mon, 21 Jul 2025 08:36:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sar.sa.com;
 h=from:subject:content-type:mime-version:date:reply-to:to:cc:
 content-type:date:from:subject:to;
 s=s1; bh=iT/RBIs5sj8Gu23MUmy/8EKaADPG3Hjp0al3gmN5f3k=;
 b=hBgrCRRdYtnNPJJPJazTwLYBnpWj3tMnwgOJYZwDFvJICuBsB+RUnit8MYpYv57bWPdv
 qMHfgnUrN3cIzRoVO9YZQrwPZq3+kxpsART5CHOS4eVYSmloScmQn8he/WEv74eWa9PWWw
 ZoJkKb7fyc1F4D0QXSnzmzaAaLNRG9PTqdIZeWG8rTm6cFxlaHjcLBbZf4bYGDM8UIrlHV
 hu4tEFu9B28/HCgGIxKff0X5nEc7YV6BroWr8XBQQdER8xFSSC7I9XDZE4VhD9pH0u/My4
 iBJ+sZTHBnYnXPZXbGlj4PGw9p3kaJTSqPxxDeCf9Meka8VQVYeo32kpQdAERUxQ==
Received: by recvd-7b5d7c7745-nftc8 with SMTP id
 recvd-7b5d7c7745-nftc8-1-687DFC09-1
 2025-07-21 08:36:25.022870286 +0000 UTC m=+4032182.773084065
Received: from EC2AMAZ-8FRJNCM (unknown) by geopod-ismtpd-37 (SG) with ESMTP
 id YN6umuNwQNGy1gDTIl1MEA for <v9fs-developer@lists.sourceforge.net>;
 Mon, 21 Jul 2025 08:36:24.986 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 21 Jul 2025 08:36:25 +0000 (UTC)
Message-Id: <21242025073604EE601ACDF4-D85405FE78@sar.sa.com>
X-SG-EID: =?us-ascii?Q?u001=2EiXOETLupYwZoE35oR+Ydwf7uPedSMlbIuZjjzUNb28fgwCaoCyRyoZjs1?=
 =?us-ascii?Q?xzirA+JRhMbbCY9khwGAD8NarhDAnpLASL=2FQHPO?=
 =?us-ascii?Q?s050Ez1igKwnBOPUPPa2DkTmNXppFi4foAfIskA?=
 =?us-ascii?Q?601H6xe2xZcDgJ2mRnpQejktV0uBhgd46E20r8g?=
 =?us-ascii?Q?=2F2BNBfFrGk9c7eIxyALQApyq1uhJSJcmxc8Fl8C?=
 =?us-ascii?Q?ynSEjbfMsRpFrdb4QOW8Eb4liM2O+wvMNNzcoOI?= =?us-ascii?Q?c4yX?=
To: v9fs-developer@lists.sourceforge.net
X-Entity-ID: u001.oi3JnLrixfO4rf9syBHrYw==
X-Spam-Score: 3.4 (+++)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  I represent Velositi Consultancy Group,
 a Finnish-owned advisory
 firm based in Ontario, Canada. We work with top-tier financial institutions
 in the Middle East, offering private financing at 3% annual interest, with
 a 2-year grace period and no collateral required. 
 Content analysis details:   (3.4 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 [om231101231(at)gmail.com]
 0.7 HTML_IMAGE_ONLY_20     BODY: HTML: images with 1600-2000 bytes of words
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [168.245.93.198 listed in wl.mailspike.net]
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 0.0 T_REMOTE_IMAGE         Message contains an external image
X-Headers-End: 1udm0h-0006X4-Mf
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Financing & Referral Partnership Proposal
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
From: Liam Gill via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: om231101231@gmail.com
Cc: Liam Gill <liamgill@sar.sa.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CkkgcmVwcmVzZW50IFZlbG9zaXRpIENvbnN1bHRhbmN5IEdyb3VwLCBhIEZpbm5pc2gtb3duZWQg
YWR2aXNvcnkgZmlybSBiYXNlZCBpbiBPbnRhcmlvLCBDYW5hZGEuCgpXZSB3b3JrIHdpdGggdG9w
LXRpZXIgZmluYW5jaWFsIGluc3RpdHV0aW9ucyBpbiB0aGUgTWlkZGxlIEVhc3QsIG9mZmVyaW5n
IHByaXZhdGUgZmluYW5jaW5nIGF0IDMlIGFubnVhbCBpbnRlcmVzdCwgd2l0aCBhIDIteWVhciBn
cmFjZSBwZXJpb2QgYW5kIG5vIGNvbGxhdGVyYWwgcmVxdWlyZWQuCgpHaXZlbiB5b3VyIHJlY2Vu
dCByZWNvZ25pdGlvbiBhdCB0aGUgU2F1ZGkgQnVzaW5lc3MgU3VtbWl0IGZvciBidXNpbmVzcyBy
ZWxpYWJpbGl0eSwgd2Ugc2VlIHN0cm9uZyBwb3RlbnRpYWwgZm9yIGNvbGxhYm9yYXRpb24uCgpX
ZSdyZSBhbHNvIGV4cGFuZGluZyBvdXIgcmVmZXJyYWwgbmV0d29yayBhbmQgd2VsY29tZSB0cnVz
dGVkIHByb2Zlc3Npb25hbHMgdG8gaW50cm9kdWNlIGNsaWVudHMgaW4gbmVlZCBvZiBjYXBpdGFs
LgoKSeKAmWQgYmUgZ2xhZCB0byBhcnJhbmdlIGEgYnJpZWYgY2FsbCBhdCB5b3VyIGNvbnZlbmll
bmNlIHRvIGV4cGxvcmUgYSBwb3RlbnRpYWwgcGFydG5lcnNoaXAuCgpTaW5jZXJlbHksCkxpYW0g
R2lsbApDaGFpcm1hbiwgQnVzaW5lc3MgRGV2ZWxvcG1lbnQKVmVsb3NpdGkgQ29uc3VsdGFuY3kg
R3JvdXAKMzAwIEpvaG4gU3RyZWV0LCBTdWl0ZSA1MDYKVGhvcm5oaWxsLCBPTiBMM1QgNk04LCBD
YW5hZGEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5
ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1k
ZXZlbG9wZXIK
