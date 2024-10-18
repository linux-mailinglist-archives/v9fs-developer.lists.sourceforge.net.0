Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 133D39A4948
	for <lists+v9fs-developer@lfdr.de>; Fri, 18 Oct 2024 23:52:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1t1utl-00033J-Qf;
	Fri, 18 Oct 2024 21:52:41 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <vintagej@vin.vintagejewelrysupplies.com>)
 id 1t1utj-00033D-UY for v9fs-developer@lists.sourceforge.net;
 Fri, 18 Oct 2024 21:52:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:Message-Id:Reply-To:Content-type:MIME-Version:
 From:Subject:To:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WCwzL/bvqpMXq40C8MEGW7ZMn6nRQmR41q80uVejdsU=; b=JQ4ufjSa3H5YxLHheG23gzUNIo
 XnA1Aw1wwGIyZZBxTk1uC4wti5evEhJNOnis8gv2IaMQQrOuyeWUbRJwTH1PB7NtZ4mRAIQRoCtkc
 aPTEujZENN89A7QIpUvUd3zAyzEOM7k0yOJ0bpcJSmdt3BWkvuWr9sXHOzi8Khsm3oLk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:Message-Id:Reply-To:Content-type:MIME-Version:From:Subject:To:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=WCwzL/bvqpMXq40C8MEGW7ZMn6nRQmR41q80uVejdsU=; b=P
 oK0ghy91OnGfCxgfUErF68j5hPV1fyuAngn/9Qk1yFJuy3k47wXFKH1WEbojYzWrLe36XntyzPpgU
 3BS3f0wurhbERRVrwDdql7QU0Z2Fzljjt8E/pi2TWFPYXqOO0wrOJCQvZpTlcHchMVZ58d0DcKj/b
 6kjw3jgE6nhEKlfM=;
Received: from vin.vintagejewelrysupplies.com ([162.241.188.209])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t1uti-0005fT-H0 for v9fs-developer@lists.sourceforge.net;
 Fri, 18 Oct 2024 21:52:39 +0000
Received: from vintagej by vin.vintagejewelrysupplies.com with local (Exim
 4.96.2) (envelope-from <vintagej@vin.vintagejewelrysupplies.com>)
 id 1t1utX-0000uJ-04 for v9fs-developer@lists.sourceforge.net;
 Fri, 18 Oct 2024 16:52:27 -0500
To: v9fs-developer@lists.sourceforge.net
X-PHP-Script: mail.vintagejewelrysupplies.com/newsletters.php for
 176.180.148.156
X-PHP-Originating-Script: 1005:newsletters.php
From: =?UTF-8?B?8J+SjiBMaWRvIExpcXVpZCBTdGFraW5nIPCfko4=?=
 <vintagej@vin.vintagejewelrysupplies.com>
MIME-Version: 1.0;
Message-Id: <E1t1utX-0000uJ-04@vin.vintagejewelrysupplies.com>
Date: Fri, 18 Oct 2024 16:52:27 -0500
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - vin.vintagejewelrysupplies.com
X-AntiAbuse: Original Domain - lists.sourceforge.net
X-AntiAbuse: Originator/Caller UID/GID - [1005 991] / [47 12]
X-AntiAbuse: Sender Address Domain - vin.vintagejewelrysupplies.com
X-Get-Message-Sender-Via: vin.vintagejewelrysupplies.com: authenticated_id:
 vintagej/primary_hostname/system user
X-Authenticated-Sender: vin.vintagejewelrysupplies.com: vintagej
X-Source: 
X-Source-Args: php-fpm: pool vintagejewelrysupplies_com                 
X-Source-Dir: vintagejewelrysupplies.com:/public_html
X-Spam-Score: 6.1 (++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: stETH Airdrop Rewards Portal You've been selected for a
 special
 reward worth up to 100 ETH! This is your chance to enhance your crypto
 portfolio
 with an exclusive stETH airdrop from the Lido Staking. 
 Content analysis details:   (6.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_RED              Contains an URL listed in the URIBL redlist
 [URIs: reward-io.com]
 2.5 URIBL_DBL_PHISH        Contains a Phishing URL listed in the Spamhaus
 DBL blocklist [URIs: reward-io.com]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [162.241.188.209 listed in zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_IMAGE_RATIO_08    BODY: HTML has a low ratio of text to image
 area 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 T_TVD_MIME_NO_HEADERS  BODY: No description available.
 0.0 BOGUS_MIME_VERSION     Mime version header is bogus
X-Headers-End: 1t1uti-0005fT-H0
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?8J+agCBbTGFzdCBDaGFuY2VdOiDwn5SlIENs?=
 =?utf-8?q?aim_Your_Exclusive_stETH_Airdrop_=F0=9F=8E=81_=23N519856675145?=
 =?utf-8?b?LmRvYyAxOS4xMC4yMDI0IDAwOjUyIChVVEMpIOKPsA==?=
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
Reply-To: vintagej@vin.vintagejewelrysupplies.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
