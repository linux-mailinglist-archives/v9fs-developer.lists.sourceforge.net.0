Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FFF34BFF71
	for <lists+v9fs-developer@lfdr.de>; Tue, 22 Feb 2022 17:57:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nMYTN-0006MH-UN; Tue, 22 Feb 2022 16:57:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <cfo_luisosorio@thaicbdclinic.net>)
 id 1nMYTL-0006MB-Ln
 for v9fs-developer@lists.sourceforge.net; Tue, 22 Feb 2022 16:57:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Reply-To:MIME-Version:Content-Type:
 To:Subject:From:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tLF+/ugX22MA6Y5tMpY4fM1E4rZvX4DoM5YuY6ats2Y=; b=PZTnW3QTvCm1UagdwyJQfjGmet
 TN7qb2vPLwcnPa4k7aBpR66Ka7AZ5RVUOUYOeVmRMAbjW2ifQH2TKWE8pt/DHX6w9ThD/2DIHzT3b
 /yh7V4Wj9O0PKkpcveOfN+qCUf9h6608WiQ2C+AdHn/wi9hPIe0nASSMwUTznIRRIoxM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Reply-To:MIME-Version:Content-Type:To:Subject:From:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=tLF+/ugX22MA6Y5tMpY4fM1E4rZvX4DoM5YuY6ats2Y=; b=B
 EWsGDEtN9r0GKDdi3lsqxZUiDOmh+TxpqjG5flGFwojQ2K5cKVMP8hFcJinnfDH75RBLH/bXGrUOJ
 7OYq6jtUt+Qnh+K6TkLp1/XP78AUNFL2E+Y5WMBYKyZCBEqvm1lDQNra+4ygNgDnGapl9tjZRlnXM
 Y4jUIdVpVoX936Xs=;
Received: from thaicbdclinic.net ([185.138.164.18] helo=mx.thaicbdclinic.net)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nMYTJ-0002aI-Gm
 for v9fs-developer@lists.sourceforge.net; Tue, 22 Feb 2022 16:57:06 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mx.thaicbdclinic.net (Postfix) with ESMTP id A771D143F28
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 22 Feb 2022 11:51:25 -0500 (EST)
Received: from mx.thaicbdclinic.net ([127.0.0.1])
 by localhost (mx.thaicbdclinic.net [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id izzw-gMq__w8 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 22 Feb 2022 11:51:24 -0500 (EST)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mx.thaicbdclinic.net (Postfix) with ESMTP id 34401142CAE
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 22 Feb 2022 10:24:41 -0500 (EST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mx.thaicbdclinic.net 34401142CAE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thaicbdclinic.net;
 s=DBF88A86-93CA-11EC-9993-654E73C1DDF9; t=1645543481;
 bh=tLF+/ugX22MA6Y5tMpY4fM1E4rZvX4DoM5YuY6ats2Y=;
 h=From:To:MIME-Version:Date:Message-Id;
 b=o2xgo/Kn1vWFoyIeFViFefPz7OA3Ky4ktl4z9i9cfOpQNM9ZT6MPgF2tcAJFrsEma
 jleK325PkXJUjgjUiRU++g48oYet9wR6jI/S67bZ6XULFGXu+Hy3Q45PpxaF04mYU2
 YhzmX5LogGDrj9FEoZP/GsEx9owAcMx9bQqmVulAcXL8nAjzI1H49R+zbaccnDCGu/
 O3ycf2+BL9NddyQKjGI9qNydP5XOjMNkdElbx7dM4tSaa0iSH34IhHdtIoezQOHXh8
 x3RAYOGyklOsNHhQaceu6PYd065hXaj8RoSHe6w+xoaPHtUNAEegdGoZMuelv/Iumb
 D8LQBaGU+X/Wg==
X-Virus-Scanned: amavisd-new at thaicbdclinic.net
Received: from mx.thaicbdclinic.net ([127.0.0.1])
 by localhost (mx.thaicbdclinic.net [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 9X-L81aTVNZj for <v9fs-developer@lists.sourceforge.net>;
 Tue, 22 Feb 2022 10:24:41 -0500 (EST)
Received: from Ajibade (unknown [20.113.152.186])
 by mx.thaicbdclinic.net (Postfix) with ESMTPSA id 28153149B00
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 22 Feb 2022 08:56:50 -0500 (EST)
To: <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Date: Tue, 22 Feb 2022 13:56:51 +0000
Message-Id: <2022220213565057964BF111-6E6D558D5B@thaicbdclinic.net>
X-Spam-Score: 4.3 (++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello v9fs-developer, Are you looking for project funding
 for (Real estate, Energy, Oil & gas, Biotech and Other projects) your company
 or that of your clients? We are looking for US-based projects as priority
 ( we will re [...] 
 Content analysis details:   (4.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 2.0 PYZOR_CHECK            Listed in Pyzor
 (https://pyzor.readthedocs.io/en/latest/)
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1nMYTJ-0002aI-Gm
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Corporate Business Loan#20
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
From: Luis Osorio via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: cfo_luisosorio@protonmail.com
Cc: Luis Osorio <cfo_luisosorio@thaicbdclinic.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


Hello v9fs-developer,

Are you looking for project funding for (Real estate, Energy, Oil & gas, Biotech and Other projects) your company or that of your clients?
We are looking for US-based projects as priority ( we will review global/ Non-U.S as secondary).
We provide alternative capital funding for projects in the industries listed above. There are exceptions to the norm with some projects).
Regrettably, most projects are lost due to poor funding. We have the right solution for you. We have funded many projects around the globe and we will love to be a part of your journey.
If you have any project(s) that fits our specifcation, please reach out to us, so we can discuss further arrangements. Thank you. In anticipation.

Best Regards,
Trust Funds Capital.
Luis Osorio
Chief Financial Officer

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
