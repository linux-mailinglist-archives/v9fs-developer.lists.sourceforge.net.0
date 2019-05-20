Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C7123FC2
	for <lists+v9fs-developer@lfdr.de>; Mon, 20 May 2019 19:59:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Date:Message-Id:MIME-Version:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XTMzTTTqn6P14DOFjxn5T37aOn4W61I3q29s664Kl0A=; b=CzcMRgpGsnRnI0mN0AM6YAYzQA
	6EzLjFUP2yw44AOEcK+gomjho2JeKa36h/V7JsEFixjdlMpGoB21AJR7sXpH4LoCRedIflmgEIwkG
	I8WxicZWJiNQILFodCkFQHZfWLc6ppOGHEc/z84nNLcCkWaJ6mAZNa8lXrUvLITUvgiA=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hSmZK-0006yO-7F; Mon, 20 May 2019 17:59:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <apache@boombf2am.ml>) id 1hSmZJ-0006yB-3j
 for v9fs-developer@lists.sourceforge.net; Mon, 20 May 2019 17:59:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Reply-To:From:Subject:To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aCJ/pbIQmsvJs70kR3RErYMMvKB8ywWN1hLGEcVH/yE=; b=DgDeoJCfb7KmZ8w+EoAiLvUeBN
 bKACjiFI6rzDW3LR5Yng3ObGw2opotMCuON83zSvqBRgANemThqCZvT0rc/rb9WYXA2iWdqNLxa6G
 JnFRb1PnejwGoHaQJHE8apAyFSDGL8FPmwXIZORlUY2I9f3tF11AGPhM0KefMt8kzSb0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
 Reply-To:From:Subject:To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=aCJ/pbIQmsvJs70kR3RErYMMvKB8ywWN1hLGEcVH/yE=; b=T
 zJ5GuECCsDgetsWGpcxBVtGtJgNjh05/ueeyVKTdBPImFnF8qejOqAHOgPkOfxwCdYcpFh+WiTD7+
 j20MpCyGI9uZnhfv+GXzUKczH2ePAD5mEHQSj6guoM9kBmKvJKE+nOmxNulz4iU0EobK4nVl7lVUg
 sT+eZnDDpKsdYE24=;
Received: from [159.89.165.40] (helo=mail.boombf2am.ml)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.90_1)
 id 1hSmZG-000KUG-SX
 for v9fs-developer@lists.sourceforge.net; Mon, 20 May 2019 17:59:25 +0000
Received: by mail.boombf2am.ml (Postfix, from userid 48)
 id 81D035691AB; Mon, 20 May 2019 15:48:46 +0000 (UTC)
To: v9fs-developer@lists.sourceforge.net
X-PHP-Originating-Script: 0:hdahged.php
MIME-Version: 1.0
Message-Id: <20190520171027.81D035691AB@mail.boombf2am.ml>
Date: Mon, 20 May 2019 15:48:46 +0000 (UTC)
X-Spam-Score: 4.7 (++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.3 RCVD_IN_RP_RNBL        RBL: Relay in RNBL,
 https://senderscore.org/blacklistlookup/
 [159.89.165.40 listed in bl.score.senderscore.com]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hSmZG-000KUG-SX
Subject: [V9fs-developer] Trade enquiry 20/May/2019
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
From: Daniel Murray via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: danielmurray@mail.ru
Cc: Daniel Murray <sinara-group@bk.ru>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi,friend,

This is Daniel Murray and i am from Sinara Group Co.Ltd in Russia.
We are glad to know about your company from the web and we are interested in your products.
Could you kindly send us your Latest catalog and price list for our trial order.

Best Regards,

Daniel Murray
Purchasing Manager




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
