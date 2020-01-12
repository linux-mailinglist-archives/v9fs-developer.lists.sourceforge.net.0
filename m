Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A73C71385E4
	for <lists+v9fs-developer@lfdr.de>; Sun, 12 Jan 2020 11:51:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1iqaq3-0006zT-5y; Sun, 12 Jan 2020 10:51:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <peterwong@hsbc.com.hk>) id 1iqaq2-0006zE-FI
 for v9fs-developer@lists.sourceforge.net; Sun, 12 Jan 2020 10:51:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:Message-ID:To:Reply-To:From:Date:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YEKdjzbrqrhX2XrCDPgbg4tmyxe9e05NQ4A2cIf4Bjw=; b=VeJcNDYO03lUM51z6Wfusk+T1P
 494xOxlvvj+/5SaswUYft/tWQMAXxqauHzPyDhvpvpvMLBv3jgmXkztNDi9Lx5lMFbe595NgmboIT
 9DYcZ/becdA4bQbFlxuj9XzJnbvPUMosriYDwTDckyCD5VMnUbUzXyYezr7iDnYTuuxA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Message-ID:To
 :Reply-To:From:Date:Sender:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=YEKdjzbrqrhX2XrCDPgbg4tmyxe9e05NQ4A2cIf4Bjw=; b=b
 wyYXJ+udH3fCO1OkGAqXVZEsi4eft0DKHrr+f9hmu36cWmInI2s0gdkcJ61wsRCJRNS+znomIB/e3
 BFuOGF/1tG9ExZYFG789WiSvAI4jzIqF8z+ivdbijVBn8bBDVxHSL3N9uxfP0I4dgj/3vz/gvvSUE
 3/IHEWGMC5YJCGw0=;
Received: from mail02.vodafone.es ([217.130.24.81])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iqaq0-00HYg8-6B
 for v9fs-developer@lists.sourceforge.net; Sun, 12 Jan 2020 10:51:22 +0000
IronPort-SDR: F+YDvMu85SmgpNUH54yUIXPrOZ2+2TI+CCQ4MfjcPPOz5oc6LsNriIq3roMNLk0UjZiV6Jxyxt
 zo7EwUe0aAqg==
IronPort-PHdr: =?us-ascii?q?9a23=3A8e+xIhb04rmAlpS4HdjVUT7/LSx+4OfEezUN45?=
 =?us-ascii?q?9isYplN5qZrs66bnLW6fgltlLVR4KTs6sC17ON9fq+CSdZsd6oizMrSNR0TR?=
 =?us-ascii?q?gLiMEbzUQLIfWuLgnFFsPsdDEwB89YVVVorDmROElRH9viNRWJ+iXhpTEdFQ?=
 =?us-ascii?q?/iOgVrO+/7BpDdj9it1+C15pbffxhEiCCybL9vIhi6txvdu8gVjIdtN6o8yQ?=
 =?us-ascii?q?bCr2dVdehR2W5mP0+YkQzm5se38p5j8iBQtOwk+sVdT6j0fLk2QKJBAjg+PG?=
 =?us-ascii?q?87+MPktR/YTQuS/XQcSXkZkgBJAwfe8h73WIr6vzbguep83CmaOtD2TawxVD?=
 =?us-ascii?q?+/4apnVAPkhSEaPDI/923Zl9B/g7heoBOhvhBy3YnUYJuNNPp5ZKPSZ88aSn?=
 =?us-ascii?q?RYUslPUSxNG5+xb5cTD+UbIelYr5fyp14Qohu4GQmgHf3gyjlRinHx2q061f?=
 =?us-ascii?q?ouEAHf0AM+GdIFrXDYodvpOKsOVOy4yrTDwzfeYPNMwTrz5ojGcgo/r/+PQL?=
 =?us-ascii?q?x/ftbex0Y0GgPZjFiftZDpMy+J2ugTtWWQ8upuVfioi24iswx/uCagxtsyhY?=
 =?us-ascii?q?nTm4kaylfE9SN2wI0oItC4UFB0YcK6H5tKuSCaMI12Qsw5TmFooyY10aEJtY?=
 =?us-ascii?q?SncygNzZQr3R7fa/+efoWO/xntV/6RLC9miH54er+znQu+/Ea8xuHmSMW530?=
 =?us-ascii?q?xGoyRFn9TKq3sDzQbc6tKdRft45kqh3DGP2B3N5excOkA0kLbbK4Ymwr4tip?=
 =?us-ascii?q?ofqUTDETHymEXxlKKWc18r+ums6+T9fLrmooOQOoBuhgHgNaQhh9awAeo/Mg?=
 =?us-ascii?q?gIQWeX4/qz1Kb78U34RrVFkOE2n7HHvJzHJ8kXvLO1DgFJ3oo59RqyAC2q3d?=
 =?us-ascii?q?oYkHUfKVJKYhOHj4znO1HUJ/D4CO+yg0yynzd32f/GJLPgApLLLnjMi7rhfa?=
 =?us-ascii?q?195FVAxwYp0d9f4JdUBqsBIPLwQkPxrsDXDgclMwyoxObqEMt924cQWWKUG6?=
 =?us-ascii?q?OWLb3dsUGW6eIrJOmMfJEauCzmJvgh5v7ulmM5mUQHcamy2psXdWq4Eeh4LE?=
 =?us-ascii?q?WXZnrsmNgBHnkQsgo4UuPqlA7KbTkGeSe8ROcw6y82DIW+AJ3rQoG2nKfHxy?=
 =?us-ascii?q?CmBJZbaGdcBV3KF3r0JL+JQ/MdVCXHGsJ9nyZMar+nRMd1zRyyuRXlzLxoLu?=
 =?us-ascii?q?nU4ScTnZ3m3dlxoebUkEdh2yZzCpGl3n2AVSlLmWUHD2su0bxyu1N6zFir0b?=
 =?us-ascii?q?NyiLpTEtkV5/AfAVRyDoLV0+EvUoO6YQnGZNrcEw7+Tw=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2HaBgAw+RpemCMYgtkUBDMYGwEBAQE?=
 =?us-ascii?q?BAQEFAQEBEQEBAwMBAQGBaAUBAQELAQEBGggBgSWBTVIgEpNPgU0fg0OLY4E?=
 =?us-ascii?q?Agx4VhgcUDIFbDQEBAQEBNQIBAYRATgEXgQ8kNQgOAgMNAQEFAQEBAQEFBAE?=
 =?us-ascii?q?BAhABAQEBAQYNCwYphUqCHQweAQQBAQEBAwMDAQEMAYNdBxkPOUpMAQ4BU4M?=
 =?us-ascii?q?EgksBATOFTZg8AY0EDQ0ChR2CLQQKgQmBGiOBNgGMGBqBQT+BIyGCKwgBggG?=
 =?us-ascii?q?CfwESAWyCSIJZBI1CEiGBB4gpmBeCQQR2iUyMAoI3AQ+IAYQxAxCCRQ+BCYg?=
 =?us-ascii?q?DhE6BfaM3V3QBgR5xMxqCJhqBIE8YDYgbji1AgRYQAk+LOoIyAQE?=
X-IPAS-Result: =?us-ascii?q?A2HaBgAw+RpemCMYgtkUBDMYGwEBAQEBAQEFAQEBEQEBA?=
 =?us-ascii?q?wMBAQGBaAUBAQELAQEBGggBgSWBTVIgEpNPgU0fg0OLY4EAgx4VhgcUDIFbD?=
 =?us-ascii?q?QEBAQEBNQIBAYRATgEXgQ8kNQgOAgMNAQEFAQEBAQEFBAEBAhABAQEBAQYNC?=
 =?us-ascii?q?wYphUqCHQweAQQBAQEBAwMDAQEMAYNdBxkPOUpMAQ4BU4MEgksBATOFTZg8A?=
 =?us-ascii?q?Y0EDQ0ChR2CLQQKgQmBGiOBNgGMGBqBQT+BIyGCKwgBggGCfwESAWyCSIJZB?=
 =?us-ascii?q?I1CEiGBB4gpmBeCQQR2iUyMAoI3AQ+IAYQxAxCCRQ+BCYgDhE6BfaM3V3QBg?=
 =?us-ascii?q?R5xMxqCJhqBIE8YDYgbji1AgRYQAk+LOoIyAQE?=
X-IronPort-AV: E=Sophos;i="5.69,424,1571695200"; d="scan'208";a="323330787"
Received: from mailrel04.vodafone.es ([217.130.24.35])
 by mail02.vodafone.es with ESMTP; 12 Jan 2020 11:51:11 +0100
Received: (qmail 27865 invoked from network); 12 Jan 2020 05:10:35 -0000
Received: from unknown (HELO 192.168.1.3) (quesosbelda@[217.217.179.17])
 (envelope-sender <peterwong@hsbc.com.hk>)
 by mailrel04.vodafone.es (qmail-ldap-1.03) with SMTP
 for <v9fs-developer@lists.sourceforge.net>; 12 Jan 2020 05:10:35 -0000
Date: Sun, 12 Jan 2020 06:10:34 +0100 (CET)
From: Peter Wong <peterwong@hsbc.com.hk>
To: v9fs-developer@lists.sourceforge.net
Message-ID: <33436861.492578.1578805835143.JavaMail.cash@217.130.24.55>
MIME-Version: 1.0
X-Spam-Score: 3.6 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iqaq0-00HYg8-6B
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
Reply-To: Peter Wong <peterwonghkhsbc@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Greetings,
Please read the attached investment proposal and reply for more details.
Are you interested in loan?
Sincerely: Peter Wong




----------------------------------------------------
This email was sent by the shareware version of Postman Professional.



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
