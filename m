Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E8E63310D
	for <lists+v9fs-developer@lfdr.de>; Tue, 22 Nov 2022 00:56:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oxGeR-0001B1-35;
	Mon, 21 Nov 2022 23:56:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <fffb512c532bf1290f0f2b1df6068b2ff6cd14c0@lizzy.crudebyte.com>)
 id 1oxGeP-0001Au-Vo for v9fs-developer@lists.sourceforge.net;
 Mon, 21 Nov 2022 23:56:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:Message-Id:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fbXGUFSXYza3y/lPkuKmgh/RBaDaBeod3XSq0CnLBAc=; b=iiBiXINl5ZSSUJ2ByfBotWLhOR
 d7DNXGUuB9ENgs/lHLcwL91/FmfaqtHtNl9IF4LIenPCwaMDylnbfNsndWloBCKeuLX92yvfy/i/b
 OD6IGfc6piKiQq79qpleN5ymiNPymhMmICzddcStPzxTb5fbAeHfr5FUaQoRZdGaMxIM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:Message-Id:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fbXGUFSXYza3y/lPkuKmgh/RBaDaBeod3XSq0CnLBAc=; b=GvyxbGslXerYZ5yUKHSOfbeo14
 entKvyVRiqoKh+Ymy/Ayi71sCuWQ18j6qfoBhvEPQ2mlPVm7gujygJQqwRRh/6NhiNKNm1yVGaPv5
 UdOYBgAIt5VK1scCtw6Y5P3j7NbdN0X2UBgCx1AS7Yc9/pihfP0Xk/5oFtKYaZIQ4yAY=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oxGeP-0001TC-DY for v9fs-developer@lists.sourceforge.net;
 Mon, 21 Nov 2022 23:56:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Content-ID:
 Content-Description; bh=fbXGUFSXYza3y/lPkuKmgh/RBaDaBeod3XSq0CnLBAc=; b=OveqC
 ZjPdyWA9YK2IrGld4O/RfodxUMX0RWG1zazPtEMLdidzxy8aGZI3zxy3qZ2/DhNOphzkW6tp8+X+p
 OMSizAYasbHDxqKt4vfRxr17mMzJI2J5pZS4r+lcIShgXUSLj56lpLRHqYCLpRc1KMUAZ7Q2Z2lZg
 Q4RVkC921Ly0jL+M6yXGq3ar1bkcgSFRnqKc/DQ9E0cczVzXGdnFQijtwtj9XvUYMmljXVmJtiz3Y
 6VQqk0APkuxwB7s1xbwUe8PMkq4zZ2Ra6wcgIXi4vzqJ1AIGD0NmDsXNpO+EkPaX9NzsuDgMq+nGW
 by4hz0Xo7yrI35oO7JvRTtqc8fMyQ==;
Message-Id: <cover.1669072186.git.linux_oss@crudebyte.com>
Date: Tue, 22 Nov 2022 00:09:46 +0100
To: Dominique Martinet <asmadeus@codewreck.org>,
 Stefano Stabellini <sstabellini@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Follow-up fix for:
 https://lore.kernel.org/linux-kernel/Y3hADWgV9JeajmfF@codewreck.org/
 Stefano, I am optimistic that this also works with Xen, but I have not tested
 it. Christian Schoenebeck (2): net/9p: distinguish zero-copy requests net/9p:
 fix response size check in p9_check_errors() 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1oxGeP-0001TC-DY
Subject: [V9fs-developer] [PATCH 0/2] net/9p: fix response size check in
 p9_check_errors()
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
Cc: v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 GUO Zihua <guozihua@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Follow-up fix for:
https://lore.kernel.org/linux-kernel/Y3hADWgV9JeajmfF@codewreck.org/

Stefano, I am optimistic that this also works with Xen, but I have not
tested it.

Christian Schoenebeck (2):
  net/9p: distinguish zero-copy requests
  net/9p: fix response size check in p9_check_errors()

 include/net/9p/9p.h |  2 ++
 net/9p/client.c     | 12 ++++++++----
 2 files changed, 10 insertions(+), 4 deletions(-)

-- 
2.30.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
