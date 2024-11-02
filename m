Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4713F9B9BD2
	for <lists+v9fs-developer@lfdr.de>; Sat,  2 Nov 2024 02:08:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1t72d2-0002vc-Ao;
	Sat, 02 Nov 2024 01:08:37 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <vintagej@vin.vintagejewelrysupplies.com>)
 id 1t72d1-0002vV-8l for v9fs-developer@lists.sourceforge.net;
 Sat, 02 Nov 2024 01:08:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:Message-Id:Reply-To:Content-type:MIME-Version:
 From:Subject:To:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GpnAv0W0YtZe3kcwKt7PMP26X7G2ZnqjF97/HmmiBZE=; b=OZPVmrxoACoouh3pT08FWWmkSx
 TxGsyaNd/8VQiEtw6J47o5hb8SAwBkzD4aoNZiFOQ0FR8CW7PGVfvFc8VO/gfOXtRQjsN6uH20JT0
 laW3keVPpogTQRlta3nKQOs/kxJKxhJvoYpd0OWfO3x4Wg7C5jMs9uw2kycfjsi/XzJU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:Message-Id:Reply-To:Content-type:MIME-Version:From:Subject:To:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=GpnAv0W0YtZe3kcwKt7PMP26X7G2ZnqjF97/HmmiBZE=; b=Q
 /7SRzwSuFCYpnIxOaZgs5QgJYCLGAMFHZtPYMOnOkhqyf82VKlFpZ06UJVGD/OGB94JVeJjLipq59
 7QWpgUxaWGQN/7GRnVAp5I1Qe76dp5wgoiGU0gs/qkEullbXk87ANVOqj61AeoFQ0urV0u/uH8KPb
 O9otojdgrvnvq+3A=;
Received: from vin.vintagejewelrysupplies.com ([162.241.188.209])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t72d1-0006vi-9D for v9fs-developer@lists.sourceforge.net;
 Sat, 02 Nov 2024 01:08:35 +0000
Received: from vintagej by vin.vintagejewelrysupplies.com with local (Exim
 4.96.2) (envelope-from <vintagej@vin.vintagejewelrysupplies.com>)
 id 1t72cp-0000Sd-0s for v9fs-developer@lists.sourceforge.net;
 Fri, 01 Nov 2024 20:08:23 -0500
To: v9fs-developer@lists.sourceforge.net
X-PHP-Script: mail.vintagejewelrysupplies.com/newsletters.php for 51.89.204.174
X-PHP-Originating-Script: 1005:newsletters.php
From: =?UTF-8?B?RXRoZXJldW0gRm91bmRhdGlvbiDip6s=?=
 <vintagej@vin.vintagejewelrysupplies.com>
MIME-Version: 1.0;
Message-Id: <E1t72cp-0000Sd-0s@vin.vintagejewelrysupplies.com>
Date: Fri, 01 Nov 2024 20:08:23 -0500
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
X-Spam-Score: 2.5 (++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Claim Your Gas Fees Back! Ethereum users have already saved
    159.25 ETH in gas fees. Join over 25,000 users who are reducing transaction
    costs and maximizing their funds. Don’t miss out! Calculate My Refund 159.25
    ETH 
 
 Content analysis details:   (2.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 T_TVD_MIME_NO_HEADERS  BODY: No description available.
  0.0 BOGUS_MIME_VERSION     Mime version header is bogus
  2.5 PHP_SCRIPT             Sent by PHP script
X-Headers-End: 1t72d1-0006vi-9D
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?W/CflKVFVEhdOiBDbGFpbSBZb3VyIEdhcyBG?=
 =?utf-8?q?ees_Back=E2=9A=A1_=23N522351025049=2Edoc_02=2E11=2E2024_04=3A08?=
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
