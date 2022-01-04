Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA5248421C
	for <lists+v9fs-developer@lfdr.de>; Tue,  4 Jan 2022 14:08:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n4jYB-0006uo-Uj; Tue, 04 Jan 2022 13:08:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <8901b21a275f6bfc2ffb13ee91ee57800af49ba8@lizzy.crudebyte.com>)
 id 1n4jY9-0006uh-2T
 for v9fs-developer@lists.sourceforge.net; Tue, 04 Jan 2022 13:08:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Cc:To:Subject:Date:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KK6K6A1ewu0NicnXXmv6oM0+oO1hXvzidLdOaL7jDRI=; b=Jn56xL5HBeSeLTpRqiLSyuiT3x
 UkedStQ8RKcb29kb6nG7gj/cXMOiX7iepS1uEhWX2xzfEgC8PsWJCS+cPVZ5zefKK6v/gZmJ2evH0
 zavRz8JlFmbgDB1CvWVvIFjGkwyRFBlx/mQlPWqsHrDe+LQaqXbtGNsFgpMLCg3Yya7M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Cc:To:Subject:Date:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KK6K6A1ewu0NicnXXmv6oM0+oO1hXvzidLdOaL7jDRI=; b=lOZrMnfyk8GtXm+LxFva41nP54
 e67FFySVpGCAzVCMYwiof/byZUxgWbT/xA4YFw39YYCs/WinCeL7iq1fcfB/SVF1mwetiDTA6pJqK
 AO8KzdkejPgRYB7nA2q2alzIxAtjcPzs1oURGT5zL5gfSUGpi71AzVvNuLo9lqOB9qPo=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n4jY5-001rQz-Fo
 for v9fs-developer@lists.sourceforge.net; Tue, 04 Jan 2022 13:08:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Message-Id:Cc:To:Subject:Date:From:Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Content-ID:
 Content-Description; bh=KK6K6A1ewu0NicnXXmv6oM0+oO1hXvzidLdOaL7jDRI=; b=XtaaN
 7k8n6vpdfPgI4ZsTBWWvbEp/7+CmRqz7iodCvzsU+8n7V6WwnnVhgP7QvToChUQ3X8POgUO6pUE64
 VQCRu+NeblMRCMQcDaI0l71BcKKGicB5vVVG3PUfOuypOL919A38c0JD8w62iuDYkW3xeXw4Zo7Gv
 T8KwNvvn3Pv787mWa/knMOyzKxb2coNFlvs2caeIKUSmStBW0IwQD6CGWzMy+iEfL08EbrzxSOcrg
 nCuFEYuMwWr+HoqvQ1AZDVq9z+7w4a0FARAvrSOHkyCXWm+KvUa04aO8F/N1ulEazbdOsY4ZIniv4
 /c6dCHJB5cWIuWFcHQsoUASPlAigQ==;
Date: Tue, 4 Jan 2022 13:53:59 +0100
To: linux-kernel@vger.kernel.org
Message-Id: <E1n4jXv-000445-GK@lizzy.crudebyte.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Volunteering as reviewer for 9p patches. As I am quite
 familiar with the 9p code base in the Linux kernel already,
 plus being current maintainer
 of 9p in QEMU this move probably makes sense. Signed-off-by: Christian
 Schoenebeck
 <linux_oss@crudebyte.com> --- MAINTAINERS | 1 + 1 file changed, 1 insertion(+)
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1n4jY5-001rQz-Fo
Subject: [V9fs-developer] [PATCH] 9p: add myself as reviewer to MAINTAINERS
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: Eric Van Hensbergen <ericvh@gmail.com>,
 v9fs-developer@lists.sourceforge.net, Greg Kurz <groug@kaod.org>,
 Latchesar Ionkov <lucho@ionkov.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Volunteering as reviewer for 9p patches. As I am quite familiar with the
9p code base in the Linux kernel already, plus being current maintainer
of 9p in QEMU this move probably makes sense.

Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index fb18ce7168aa..c8db00be639b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -226,6 +226,7 @@ F:	drivers/net/ethernet/8390/
 M:	Eric Van Hensbergen <ericvh@gmail.com>
 M:	Latchesar Ionkov <lucho@ionkov.net>
 M:	Dominique Martinet <asmadeus@codewreck.org>
+R:	Christian Schoenebeck <linux_oss@crudebyte.com>
 L:	v9fs-developer@lists.sourceforge.net
 S:	Maintained
 W:	http://swik.net/v9fs
-- 
2.30.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
