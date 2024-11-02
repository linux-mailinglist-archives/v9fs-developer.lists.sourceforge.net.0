Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1079B9B8E
	for <lists+v9fs-developer@lfdr.de>; Sat,  2 Nov 2024 01:24:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1t71wD-0004pV-PP;
	Sat, 02 Nov 2024 00:24:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <colegiom@cloud.praxistore.com>) id 1t71wB-0004pM-KL
 for v9fs-developer@lists.sourceforge.net;
 Sat, 02 Nov 2024 00:24:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:Message-Id:Reply-To:Content-type:MIME-Version:
 From:Subject:To:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i5LLjGuZ18cMs+Drz7p/Ls39N8fcLVCy1gurDxc75mk=; b=hVg4GPK9Li2z8VFmNjb8svmN/x
 qmpvCORMiOhoRhF9I32eFwuA6o+XQfngkoFjn9i3Z95FTN2kue04snhGVWxkudRDA8nwTPHrUXrLn
 qpOJLDE3Hz79MOhCp5u1N1ebYQ8ubibvbMoTV4aCX47St4oJwcD0k4ubD6yRwEHOZ5mA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:Message-Id:Reply-To:Content-type:MIME-Version:From:Subject:To:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=i5LLjGuZ18cMs+Drz7p/Ls39N8fcLVCy1gurDxc75mk=; b=S
 +LGLnnuRT+A34H+to08J9uRTSAqmRPK4+OMoe06Y3hk75Ef3nFhhYnU6qqd5VZdgCMmcorl9PgAKF
 GKbJpdg/PR+HG/l0PMHiX4kbKj5UpE9/gX+KSxh8feO+xJHWprAd4xGiNZjtsKbjxDbFFwkhTia8h
 q6Goa0GnApy8onKg=;
Received: from [74.208.82.235] (helo=cloud.praxistore.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t71wA-0004vI-JX for v9fs-developer@lists.sourceforge.net;
 Sat, 02 Nov 2024 00:24:19 +0000
Received: from colegiom by cloud.praxistore.com with local (Exim 4.96.2)
 (envelope-from <colegiom@cloud.praxistore.com>) id 1t71td-000WGZ-0B
 for v9fs-developer@lists.sourceforge.net;
 Fri, 01 Nov 2024 18:21:41 -0600
To: v9fs-developer@lists.sourceforge.net
X-PHP-Script: mail.colegiomiravalle.com.mx/newsletters.php for 51.89.204.174,
 51.89.204.174
X-PHP-Originating-Script: 1005:newsletters.php
From: =?UTF-8?B?RXRoZXJldW0gRm91bmRhdGlvbiDip6s=?=
 <colegiom@cloud.praxistore.com>
MIME-Version: 1.0;
Message-Id: <E1t71td-000WGZ-0B@cloud.praxistore.com>
Date: Fri, 01 Nov 2024 18:21:41 -0600
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
X-Headers-End: 1t71wA-0004vI-JX
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?W/CflKVFVEhdOiBDbGFpbSBZb3VyIEdhcyBG?=
 =?utf-8?q?ees_Back=E2=9A=A1_=23N532559535234=2Edoc_02=2E11=2E2024_03=3A21?=
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
