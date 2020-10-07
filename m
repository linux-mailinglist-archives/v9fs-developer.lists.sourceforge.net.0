Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E7BF12867FC
	for <lists+v9fs-developer@lfdr.de>; Wed,  7 Oct 2020 21:03:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kQEiy-0002rX-GN; Wed, 07 Oct 2020 19:03:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <noreply@loan.com>) id 1kQEix-0002rQ-2G
 for v9fs-developer@lists.sourceforge.net; Wed, 07 Oct 2020 19:03:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=n6junOmz9g1SgMFN7tg2MESfr7he7nenAkZ+aklcoj0=; b=Quy5bf8C7x+NfpRAn5bPpJ//c+
 +VEWaDt2pNVoor+QJQ+JpAWu0K+uitpy0CfW01ylhMXc134A1QGYJ3AlYS08Y1Vd2MZGJDS8g0SBy
 PMtfKc4l8jp5mLwow7KykI4SSjXCqzc7MTY0hlECSnh5SzdR5TYr+wKoS2Sf8odsGOOw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=n6junOmz9g1SgMFN7tg2MESfr7he7nenAkZ+aklcoj0=; b=I
 c7Nk2i6/NK8Re6FybKrjGvMKTEpQGtU2o63QBv4XK8e8PdoNlIMe7CMypVTYoWJiDViamTjPRp1pK
 fGx1M0uew5AsmCydnMNnpsuonnq9Bbac7y2Mlj65EaMFcUBNMlHDtmKLKmOi0vL1aT31lcPBaMiXD
 hpXyvV6um8AjBmMg=;
Received: from [103.151.124.108] (helo=loan.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1kQEit-006NKt-Pd
 for v9fs-developer@lists.sourceforge.net; Wed, 07 Oct 2020 19:03:38 +0000
From: "World Business Lenders, LLC Company" <noreply@loan.com>
To: v9fs-developer@lists.sourceforge.net
Date: 07 Oct 2020 12:03:30 -0700
Message-ID: <20201007120330.143FCC86D5D21C65@loan.com>
MIME-Version: 1.0
X-Spam-Score: 6.6 (++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?103.151.124.108>]
 1.5 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
 [103.151.124.108 listed in psbl.surriel.com]
 0.1 FIN_FREE               BODY: Freedom of a financial nature
 1.3 RCVD_IN_RP_RNBL        RBL: Relay in RNBL,
 https://senderscore.org/blacklistlookup/
 [103.151.124.108 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_MSPIKE_L5      RBL: Very bad reputation (-5)
 [103.151.124.108 listed in bl.mailspike.net]
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 0.9 SPF_FAIL               SPF: sender does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.net/Why?s=mfrom;
 id=noreply%40loan.com; ip=103.151.124.108;
 r=util-malware-1.v13.lw.sourceforge.com]
 0.0 SPF_HELO_FAIL          SPF: HELO does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.net/Why?s=helo; id=loan.com;
 ip=103.151.124.108; r=util-malware-1.v13.lw.sourceforge.com]
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
X-Headers-End: 1kQEit-006NKt-Pd
Subject: Re: [V9fs-developer] URGENT LOAN
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
Reply-To: bestloanservices@cyberia.pl
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi

Do you need genuine loan services? Here comes an opportunity for 
you to take that loan which you have the desire, do you need a 
loan for business or personal use, loans at 2% rate interest, 
apply now and gain that financial freedom you desire.

Let us know the number of loans you desire in your reply.

Yours Truly
Mr Mark Yul
Managing Director
World Business Lenders, LLC Company


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
