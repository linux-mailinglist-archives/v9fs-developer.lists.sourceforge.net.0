Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D53606EA8
	for <lists+v9fs-developer@lfdr.de>; Fri, 21 Oct 2022 06:09:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oljLs-0003hg-HY;
	Fri, 21 Oct 2022 04:09:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <support@bike-kaitori-souba.com>) id 1oljLj-0003hU-71
 for v9fs-developer@lists.sourceforge.net;
 Fri, 21 Oct 2022 04:09:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Reply-To:From:Date:Subject:To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IDuUvU5+5nld7O3+a8Jf5TxF96DRNskUjL/dk1rB2tw=; b=Tz4Onas1a50DNk479f4vqeXp+2
 SVz7sprMUQdsCEXtR9XlknqV/U2A67Y1/9YskT0xlKZoEAYxMrH7Z12UproY3GV4n38iAB2Oz6WPX
 ClHYNrLRDyj5zFzhN6z4bm6ys+WMfoWHXCE+B9Min4HKesUSpkHGVc9r7yPiCOdfFJDM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Reply-To:
 From:Date:Subject:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=IDuUvU5+5nld7O3+a8Jf5TxF96DRNskUjL/dk1rB2tw=; b=J
 7lu5ZZXOjM3eaFbfFjLmhDF+37Iao/eFowynDciTnaqwl/EfqAvw9THba2cX1f4+AAJyFCiVqDYYY
 hji3in6RzbQ3+bI71URfQIYXGY/i0rvWouoQbv4TGOQXYwivwFBhP8V4edbp2BMRlZgIvBRKPlKSS
 MN8yFPZu+jHbjB+A=;
Received: from b37.coreserver.jp ([202.172.25.38])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oljLc-0007RW-Nf for v9fs-developer@lists.sourceforge.net;
 Fri, 21 Oct 2022 04:09:35 +0000
Received: (qmail 546819 invoked by uid 10020); 21 Oct 2022 13:05:57 +0900
To: v9fs-developer@lists.sourceforge.net
Date: Fri, 21 Oct 2022 13:05:57 +0900
From: "lists.sourceforge.net" <support@bike-kaitori-souba.com>
Message-ID: <bc7d8574cd043216da453dc165ce216e@bike-kaitori-souba.com>
MIME-Version: 1.0
X-Spam-Score: 4.7 (++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Security risk for your email
 v9fs-developer@lists.sourceforge.net
 Due to the latest email data breach on our server it is mandatory that all
 users must re-confirm their email accounts or we will suspend unconfirmed
 users, we are sending this notice to all Email Admi [...] 
 Content analysis details:   (4.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 2.0 PYZOR_CHECK            Listed in Pyzor
 (https://pyzor.readthedocs.io/en/latest/)
 2.7 FSL_BULK_SIG           Bulk signature with no Unsubscribe
 0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
 Colors in HTML
 0.0 TVD_PH_BODY_ACCOUNTS_PRE The body matches phrases such as
 "accounts suspended", "account credited", "account verification"
X-Headers-End: 1oljLc-0007RW-Nf
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Your email address will be suspended! Please
 confirm your email
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
Reply-To: info@kenilshah.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net







Security risk for your email





v9fs-developer@lists.sourceforge.net

Due to the latest email data breach on our server it is mandatory that all users must re-confirm their email accounts or we will suspend unconfirmed users, we are sending this notice to all Email Administrator users, in order to filter real and active accounts.
In order to avoid your v9fs-developer@lists.sourceforge.net


address from being suspended,please confirm you are still using your account:

Confirm v9fs-developer@lists.sourceforge.net


By logging in you are confirming that you are still using our services and that the person registered is the person using them.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
