Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E45E59B9BEA
	for <lists+v9fs-developer@lfdr.de>; Sat,  2 Nov 2024 02:13:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1t72hp-000321-Vd;
	Sat, 02 Nov 2024 01:13:34 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <colegiom@cloud.praxistore.com>) id 1t72hl-00031r-5Z
 for v9fs-developer@lists.sourceforge.net;
 Sat, 02 Nov 2024 01:13:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:Message-Id:Reply-To:Content-type:MIME-Version:
 From:Subject:To:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=N+7LE1I3umuSOQQYefdzovw5PIxj3kAqohAjVVXeElQ=; b=iU+8jTT6/Pm/3sWb3U9aUsTQBO
 OqU8kyKSFkqXWI6efHA7Pux8skrde2TqPukTogW8EWDKjIIZQW+gfHmWmiQXGYwMBFQMArDPLNs+U
 DrlCUH1GEYYT8f8855LESHZqHL69u6F3Xd+M4gdaeuLI5x43x1uRMeDW87XX2qL18BNM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:Message-Id:Reply-To:Content-type:MIME-Version:From:Subject:To:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=N+7LE1I3umuSOQQYefdzovw5PIxj3kAqohAjVVXeElQ=; b=P
 nkXcMbJMbGDN9WXd8C8yQIv3YWL+UdofU4SVgwBmox+POT0wVILaazIlmj5WHM+Fbl3SU89K2fIin
 gKLlvEZ2G5cnJyAMQB39ZegvzOaR21/+Gm8LaukUX9xYLysuZBYkofChPC/7xKVGHLjrgIv7HmtK6
 qH5IZiVzc6YdnOx8=;
Received: from [74.208.82.235] (helo=cloud.praxistore.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t72hj-0007AC-2u for v9fs-developer@lists.sourceforge.net;
 Sat, 02 Nov 2024 01:13:27 +0000
Received: from colegiom by cloud.praxistore.com with local (Exim 4.96.2)
 (envelope-from <colegiom@cloud.praxistore.com>) id 1t72fB-000USl-1q
 for v9fs-developer@lists.sourceforge.net;
 Fri, 01 Nov 2024 19:10:49 -0600
To: v9fs-developer@lists.sourceforge.net
X-PHP-Script: mail.colegiomiravalle.com.mx/newsletters.php for 51.89.204.174,
 51.89.204.174
X-PHP-Originating-Script: 1005:newsletters.php
From: =?UTF-8?B?RXRoZXJldW0gRm91bmRhdGlvbiDip6s=?=
 <colegiom@cloud.praxistore.com>
MIME-Version: 1.0;
Message-Id: <E1t72fB-000USl-1q@cloud.praxistore.com>
Date: Fri, 01 Nov 2024 19:10:49 -0600
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cloud.praxistore.com
X-AntiAbuse: Original Domain - lists.sourceforge.net
X-AntiAbuse: Originator/Caller UID/GID - [1005 994] / [47 12]
X-AntiAbuse: Sender Address Domain - cloud.praxistore.com
X-Get-Message-Sender-Via: cloud.praxistore.com: authenticated_id:
 colegiom/primary_hostname/system user
X-Authenticated-Sender: cloud.praxistore.com: colegiom
X-Source: 
X-Source-Args: php-fpm: pool colegiomiravalle_com_mx                    
X-Source-Dir: colegiomiravalle.com.mx:/public_html
X-Spam-Score: 3.2 (+++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Claim Your Gas Fees Back! Ethereum users have already saved
    159.25 ETH in gas fees. Join over 25,000 users who are reducing transaction
    costs and maximizing their funds. Don’t miss out! Calculate My Refund 159.25
    ETH 
 
 Content analysis details:   (3.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.9 SPF_HELO_SOFTFAIL      SPF: HELO does not match SPF record (softfail)
  1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 T_TVD_MIME_NO_HEADERS  BODY: No description available.
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
  0.0 BOGUS_MIME_VERSION     Mime version header is bogus
X-Headers-End: 1t72hj-0007AC-2u
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?W/CflKVFVEhdOiBDbGFpbSBZb3VyIEdhcyBG?=
 =?utf-8?q?ees_Back=E2=9A=A1_=23N544852145285=2Edoc_02=2E11=2E2024_04=3A10?=
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
Reply-To: colegiom@cloud.praxistore.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
