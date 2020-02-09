Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E9141569A2
	for <lists+v9fs-developer@lfdr.de>; Sun,  9 Feb 2020 09:19:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1j0hoN-0008Gy-Le; Sun, 09 Feb 2020 08:19:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <peterwong@bodazone.com>) id 1j0hoM-0008Gr-Mj
 for v9fs-developer@lists.sourceforge.net; Sun, 09 Feb 2020 08:19:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:Message-ID:To:Reply-To:From:Date:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Kza/Q9aKZPDahLi3dEVpzp2HWclRPmp/qjSGKhAjI+8=; b=g9cvmTqTU1sFbWWLjp5dXxOZpU
 lOBA+y0pF90aNgaGE7CSUYhmKXSCnxbCetuFcOfeqg2hFX+eiFCNhLra5XNubQdK6r5+9h+fOd6S4
 Htqmx72HdLC4Sb60ZWwxSusMjQ8CyAn/UqiEIeoWcDufk6HHgA9hm+s3n9vkTbuTuJ/4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Message-ID:To
 :Reply-To:From:Date:Sender:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Kza/Q9aKZPDahLi3dEVpzp2HWclRPmp/qjSGKhAjI+8=; b=T
 eFC1hfu0O8cG6+D1+u7JxlLUuDlvhBB7zYewkjp8g/ztVxK/zMHEsnieRlxaWz0bXkrEVY9cSfkpH
 +3HSPWDtQ2fwKVyTK58oJ67dxPe0om7gKVsC8s4ChouWkVCojgtDrqbdYDTR4kS159kRosnfanMM/
 wzhrozyfKN3szmWI=;
Received: from mail01.vodafone.es ([217.130.24.71])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1j0hoK-00FnEX-A4
 for v9fs-developer@lists.sourceforge.net; Sun, 09 Feb 2020 08:19:26 +0000
IronPort-SDR: zGEZrLt24LKfze9LRE7TyD3OcehkKmUfM0e9jpX8db0IykX3LT/i4MP2c8jIWJoC+LYO1VpNUI
 8H3JbuKEmo9g==
IronPort-PHdr: =?us-ascii?q?9a23=3AB+t3DRF0gvR/xALVg+ILMZ1GYnF86YWxBRYc79?=
 =?us-ascii?q?8ds5kLTJ7zosWwAkXT6L1XgUPTWs2DsrQY0raQ7vCrADVYqdbZ6TZeKccKD0?=
 =?us-ascii?q?dEwewt3CUYSPafDkP6KPO4JwcbJ+9lEGFfwnegLEJOE9z/bVCB6le77DoVBw?=
 =?us-ascii?q?mtfVEtfre9FYHdldm42P6v8JPPfQpImCC9YbRvJxmqsAndrMYbjZZtJ6oryh?=
 =?us-ascii?q?bEoXREd/lLyW90OFmfmwrw6tqq8JNs7ihdtegt+9JcXan/Yq81UaFWADM6Pm?=
 =?us-ascii?q?4v+cblrwPDTQyB5nsdVmUZjB9FCBXb4R/5Q5n8rDL0uvJy1yeGM8L2S6s0WS?=
 =?us-ascii?q?m54KdwVBDokiYHOCUn/2zRl8d9kbhUoBOlpxx43o7UfISYP+dwc6/BYd8XQ3?=
 =?us-ascii?q?dKU8BMXCJDH4y8dZMCAeQBM+ZCsYfzpEYAohSiCgejH+7v1j1FiWPq0aEmz+?=
 =?us-ascii?q?gtDwfL1xEgEdIUt3TUqc34Or0MXuCp0qbI1yjIYPNR2Tf754jDbxcsoemSUr?=
 =?us-ascii?q?Jsb8XR00cuFwTDjlWfsoHqJDSV2fkXvGma6OpgU/ygh3Q7pAF2pzii38EhgZ?=
 =?us-ascii?q?TKiIIN0l3I6zh1zYQvKdGlRkN3fcSoHIVfui2AOYZ7QsUvSHxytikg0L0Jo5?=
 =?us-ascii?q?u7cTAPyJQg2hHQdeSKc5ON4hL/TOaRJip4hG59dLK/mRmy9U+gx/X5Vsau0V?=
 =?us-ascii?q?ZKqjBFncfItnwR2BHf8NaHSvxg8Ui71zaP0AbT5f9eLU8qjqrXM58hwrgumZ?=
 =?us-ascii?q?oPqUnPADL6lUfsgKOLeEgo5vKk5/rob7n8qJKRN5d4igTkPaQvnsy/D/44Mg?=
 =?us-ascii?q?8LX2WD4eSzyqHj8lPjQLREif02lKbZvYvBKsQcu6G2GQ5U0oEl6xmhFTupzN?=
 =?us-ascii?q?MYnXwfIFJfZB2Hl5TpO03JIP3gE/eyh1qskCxyy//bILLhHIvCLnzEkLf5Y7?=
 =?us-ascii?q?l98VVRyA4yzdBE+5JUEasNIOn0Wk/srtzXEgE2MwKzw+b9B9VyyJkSWWSRDa?=
 =?us-ascii?q?+FY+vutgqWt+w0ZuWBeoIRvy7wMdAh5uXyljkinkIHdqSn2oEYZTa+E+g1GU?=
 =?us-ascii?q?iBZWvQhYI5HHsHpEIBS+rlwAmaXCJefWm1Wa08/TswCIGOAoLKR4Tri7uEin?=
 =?us-ascii?q?SVBJpTM1hLFl2WWUjvcYrMD+8BdC+IPchnnRQOUrSoWYgn2FelswqsmOkvFf?=
 =?us-ascii?q?bd5iBN7cGr79Ny/eCGzRw=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2FJbQBevz9eeiMYgtlmHQEBAQkBEQU?=
 =?us-ascii?q?FAYF7AgGBPQKBVlINExKMZIZvgU0fg0OLaIEAgzOGCBOBZw0BAQEBARsaAgE?=
 =?us-ascii?q?BhECCRiQ8Ag0CAw0BAQUBAQEBAQUEAQECEAEBCwsLBCuFSkIBDAGBayKDcCA?=
 =?us-ascii?q?POUpMAQ4BhiIBATOlNokBDQ0ChR6CSgQKgQiBGyOBNgIBAYwhGoFBP4EjIYI?=
 =?us-ascii?q?rCAGCAYJ/ARIBboJIglkEjVASIYk/mDCCRAR4lWuCOAEPiBGENQOCWA+BC4M?=
 =?us-ascii?q?dgwiBZ4RSgX6fWIQSV4Egc3EzGiOCHYEgTxgNnGICQIEXEAJPhDuGNoIyAQE?=
X-IPAS-Result: =?us-ascii?q?A2FJbQBevz9eeiMYgtlmHQEBAQkBEQUFAYF7AgGBPQKBV?=
 =?us-ascii?q?lINExKMZIZvgU0fg0OLaIEAgzOGCBOBZw0BAQEBARsaAgEBhECCRiQ8Ag0CA?=
 =?us-ascii?q?w0BAQUBAQEBAQUEAQECEAEBCwsLBCuFSkIBDAGBayKDcCAPOUpMAQ4BhiIBA?=
 =?us-ascii?q?TOlNokBDQ0ChR6CSgQKgQiBGyOBNgIBAYwhGoFBP4EjIYIrCAGCAYJ/ARIBb?=
 =?us-ascii?q?oJIglkEjVASIYk/mDCCRAR4lWuCOAEPiBGENQOCWA+BC4MdgwiBZ4RSgX6fW?=
 =?us-ascii?q?IQSV4Egc3EzGiOCHYEgTxgNnGICQIEXEAJPhDuGNoIyAQE?=
X-IronPort-AV: E=Sophos;i="5.70,420,1574118000"; d="scan'208";a="315878425"
Received: from mailrel04.vodafone.es ([217.130.24.35])
 by mail01.vodafone.es with ESMTP; 09 Feb 2020 09:19:16 +0100
Received: (qmail 978 invoked from network); 9 Feb 2020 02:24:49 -0000
Received: from unknown (HELO 192.168.1.163) (apamar@[217.217.179.17])
 (envelope-sender <peterwong@bodazone.com>)
 by mailrel04.vodafone.es (qmail-ldap-1.03) with SMTP
 for <v9fs-developer@lists.sourceforge.net>; 9 Feb 2020 02:24:49 -0000
Date: Sun, 9 Feb 2020 03:24:48 +0100 (CET)
From: Peter Wong <peterwong@bodazone.com>
To: v9fs-developer@lists.sourceforge.net
Message-ID: <31427934.387521.1581215089368.JavaMail.cash@217.130.24.55>
MIME-Version: 1.0
X-Spam-Score: 3.5 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1j0hoK-00FnEX-A4
Subject: [V9fs-developer] Investment opportunity
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
Reply-To: Peter Wong <peterwonghsbchk@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Greetings,
Please check the attached email for a buisness proposal to explore.
Looking forward to hearing from you for more details.
Sincerely: Peter Wong




----------------------------------------------------
This email was sent by the shareware version of Postman Professional.



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
