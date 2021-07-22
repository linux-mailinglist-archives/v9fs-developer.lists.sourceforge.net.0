Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8BD3D235A
	for <lists+v9fs-developer@lfdr.de>; Thu, 22 Jul 2021 14:32:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1m6XsE-0006Fs-4g; Thu, 22 Jul 2021 12:32:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <info@consultant.com>) id 1m6XsD-0006Fk-PU
 for v9fs-developer@lists.sourceforge.net; Thu, 22 Jul 2021 12:32:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Reply-To:Date:From:To:Subject:
 MIME-Version:Content-Type:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j7r+si5E2bvjGlktaAl+qdzh1D2m0UFpKS+si0zO0w8=; b=Jnfw6hC+sySxTWpvgysaYVJRaU
 /LlCF0wykZGVPNix96wjeFMcHlAByoGfB9aPioUgu6VA5skQBLgJTG5LqtIo0Jvsvc82ZayUhAORr
 HXDPTjzqOyWR8wgP4uX6x8jMjJL3tB+pMvdCXW07f1d2ukxXJvA2tk27NCBhy0Cc//C8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Reply-To:Date:From:To:Subject:MIME-Version:Content-Type:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=j7r+si5E2bvjGlktaAl+qdzh1D2m0UFpKS+si0zO0w8=; b=H
 FWFiLQd0mfTN/vdrbkhWAJe7G0mys7nKOs9g02+cmTxx0B8WpzWCdSnP5dj7MPTD0qEkrB6fiEpYN
 AP2b7J6+VaY7Ox0uVXVT8W083q8GGQ71VkTeFtK6Ck3S1RWtWTRPZGwDiJsv3YB4weh3x06haRR+e
 THc/t6vOPSAOAX6U=;
Received: from [207.154.240.89] (helo=bizcloud-fmcgermany.de)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1m6Xs3-00Gp5c-Oj
 for v9fs-developer@lists.sourceforge.net; Thu, 22 Jul 2021 12:32:21 +0000
Received: from [192.3.141.141] (bizcloud-fmcgermany.de [IPv6:::1])
 by bizcloud-fmcgermany.de (Postfix) with ESMTP id 013933F8FEF
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 22 Jul 2021 12:25:46 +0000 (UTC)
MIME-Version: 1.0
To: v9fs-developer@lists.sourceforge.net
From: "Mr.Tucker" <info@consultant.com>
Date: Thu, 22 Jul 2021 05:25:46 -0700
Message-Id: <20210722122547.013933F8FEF@bizcloud-fmcgermany.de>
X-Spam-Score: 5.4 (+++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.9 SPF_FAIL               SPF: sender does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.net/Why?s=mfrom;
 id=info%40consultant.com; ip=207.154.240.89;
 r=util-malware-3.v13.lw.sourceforge.com]
 1.0 HTML_MESSAGE           BODY: HTML included in message
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 HK_NAME_MR_MRS         No description available.
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1m6Xs3-00Gp5c-Oj
Content-Description: Mail message body
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Confidential!
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
Reply-To: Mr.MuariceTucker@accountant.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

FYI: We are in custody of an inheritance attached to your surname, 
Contact Mr M. Tucker with your full names for validation. Ts & Cs appy.
_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
