Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C499D26F948
	for <lists+v9fs-developer@lfdr.de>; Fri, 18 Sep 2020 11:27:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kJCg3-0001Oz-Ld; Fri, 18 Sep 2020 09:27:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <bdsfewjntw@126.com>) id 1kJCg1-0001Oh-Q9
 for v9fs-developer@lists.sourceforge.net; Fri, 18 Sep 2020 09:27:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:Content-Transfer-Encoding:Content-Type:To:
 Subject:From:Sender:Reply-To:Message-ID:Cc:MIME-Version:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RgSikFHzrpIO76aXAmPuyxU68/j80Jgtoes7C+M9mzE=; b=aRVJ5z+iZkx9wB6HUjScrAsNl+
 qswFkvCAZQfIdS2mhjR1wHNFgyaF54Ly8s0+jEZvfV3+lkbdKNfR6o07EosrKrHRNeFAQvBdOoSB5
 sI2ga+FBL8CzC8/xNUq9+NUfmsw/26IgFKeWUOY/lAGy1hGTy69m1iY66liD7luHeDCE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:Content-Transfer-Encoding:Content-Type:To:Subject:From:Sender:
 Reply-To:Message-ID:Cc:MIME-Version:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RgSikFHzrpIO76aXAmPuyxU68/j80Jgtoes7C+M9mzE=; b=R+VJBYCna8G7+MtLZ03ZDAr0ck
 vXLtbHwnIQ0+hFjf8iIdo1a/WBaJWcRgFCeqdfKh8hFnQkDaIKIbsiisW4EWnuBO93tyeCdFBP6Oy
 jtcpg+H6BpawpZ4I3bdOxWOWeJNyuWrunWP26+idHqSf413wGT+1Yffr25A2axUrTFm8=;
Received: from [223.199.23.7] (helo=126.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1kJCfl-00FHJf-L1
 for v9fs-developer@lists.sourceforge.net; Fri, 18 Sep 2020 09:27:33 +0000
From: bdsfewjntw@126.com
To: v9fs-developer@lists.sourceforge.net
Date: Fri, 18 Sep 2020 17:27:15 +0800
X-Priority: 3
X-Mailer: Microsoft Outlook Express 5.50.4133.2400
X-Spam-Score: 2.9 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.0 HK_RANDOM_FROM         From username looks random
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (bdsfewjntw[at]126.com)
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?223.199.23.7>]
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1kJCfl-00FHJf-L1
Subject: [V9fs-developer] =?gb2312?b?t6LGsbT6v6oxMzU2NDk5OTg3MsDu?=
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
MIME-Version: 1.0
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net
Message-Id: <E1kJCg3-0001Oz-Ld@sfs-ml-1.v29.lw.sourceforge.com>

CrT6v6qhttT21rXLsKG3t6LGsaGi0enWpLrzuLa/7goKwO4xMzU2NDk5OTg3MqG2zqLQxc2susWh
twoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMt
ZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5u
ZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZl
bG9wZXIK
