Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 454101B98D3
	for <lists+v9fs-developer@lfdr.de>; Mon, 27 Apr 2020 09:43:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jSyPs-0001Qr-FJ; Mon, 27 Apr 2020 07:43:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <masud.m@ttx-group.com>) id 1jSyPk-0001QI-Si
 for v9fs-developer@lists.sourceforge.net; Mon, 27 Apr 2020 07:42:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Date:From:To:Subject:Content-Description:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Message-ID:Cc:
 Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:
 Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pdkKnXKpODu5KSLBUytxsncgrtr37kakgTEOJ+IzAwA=; b=YjceeIhLd35Kw6EeVFvd5rJ8MR
 B5mHDba7rpVGiWBxml9c1lzSQwPSSwUGWQ/PgMyS7t+kgdeOh0nk/cQ1DkADec7kyJzYOlSDo53YP
 NLaaiCz0PuYSrcuSyaY/c0IkTmbNOR4dotAf/AZvIfooD65p1USOOsb0R/wgm88/Fauc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Reply-To:Date:From:To:Subject:Content-Description:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Message-ID:Cc:
 Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:
 Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pdkKnXKpODu5KSLBUytxsncgrtr37kakgTEOJ+IzAwA=; b=dEanLvSMu4ZezzhERtyavPkQ16
 rtpvTD7P4oGeqvJ2kGL4/5CvUxpOdBIoYBoAwR+kge39FHLT08J121UDbIj5Kj2n+3VJNCspnD8vi
 iKE3m61umAsaTFyEOwHwRg8rxqSYVPKbQweguvphlgwLCruh+C7m/lP3dqdelKb6zzIg=;
Received: from mail.ttx-group.com ([182.160.106.194] helo=ttx-group.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jSyPh-00HC2r-0f
 for v9fs-developer@lists.sourceforge.net; Mon, 27 Apr 2020 07:42:50 +0000
Received: (qmail 4359 invoked by uid 1008); 27 Apr 2020 05:31:59 +0600
Received: from unknown (HELO ?204.10.162.134?)
 (masud.m@ttx-group.com@204.10.162.134)
 by ttx-group.com with SMTP; 27 Apr 2020 05:31:59 +0600
MIME-Version: 1.0
Content-Description: Mail message body
To: v9fs-developer@lists.sourceforge.net
From: "Mr. Okrapah Adjei" <masud.m@ttx-group.com>
Date: Sun, 26 Apr 2020 16:29:47 -0700
X-Spam-Score: 6.8 (++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.7 DEAR_SOMETHING         BODY: Contains 'Dear (something)'
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 1.3 RCVD_IN_RP_RNBL        RBL: Relay in RNBL,
 https://senderscore.org/blacklistlookup/
 [182.160.106.194 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (okrapahadjei233[at]gmail.com)
 1.0 MISSING_MID            Missing Message-Id: header
 0.0 HK_NAME_MR_MRS         No description available.
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jSyPh-00HC2r-0f
Subject: [V9fs-developer] Product Inquiry
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
Reply-To: okrapahadjei233@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net
Message-Id: <E1jSyPs-0001Qr-FJ@sfs-ml-2.v29.lw.sourceforge.com>

Dear Sir,

We got your company information through an exhaustive search.

Our scope is basically to search for foreign companies to bid for contract supply on commission basis.

We are interested in buying your products in a larger quantity if only you can supply and open for business.

Best Regard,
Mr. Okrapah Adjei
CEO
OK-Adjei Sourcing Ltd
Accra,Ghana


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
