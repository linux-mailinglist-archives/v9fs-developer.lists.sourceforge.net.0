Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8BE414E4F
	for <lists+v9fs-developer@lfdr.de>; Wed, 22 Sep 2021 18:46:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:To:Date:References:In-Reply-To:Message-Id:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NPl84BJAqD9atZ0BKhR+z2aAhUgVYPsira0sqLdFM0w=; b=BFNyNnMjTNZTbK1lU4C/RMQLJT
	2o48kzuoY7BZoCaYBBuV28dium77c0CUxrTqsm/CwEObUkOgYafZygpOJQ0TTpWPzvp+7dn2VNMmB
	BJ5UXJDzy7m7qyOSRqMg/+CooejvGwyWRhB2iRVjtGwzth/xcrLKuQQI7kwX/HHKyuMA=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mT5Nn-0003WY-3e; Wed, 22 Sep 2021 16:46:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <925da76c58d67372307e5f516989600c96831c3a@lizzy.crudebyte.com>)
 id 1mT5Nm-0003WG-5M
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Sep 2021 16:46:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Cqx/q/n6hrY5Ps1ipX2QJFZ34qH2P2+3lxddoYfsBeQ=; b=fKAux6qb9KWvRum4t+upZx/Kd
 vQ/whUV/mWu2GDQ8j0R2l9QLH97E+2mSKmln8Mp3jbTFMFfoCaId0nzCekiFrQTz1Y7zPgESBCjma
 glXPogzL0qNl89rrppV326BVFeRSTMOAJgIY1FFbLOAy/Am3XjQVW+ZoemIQUeCZg7MbE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:References:In-Reply-To:Message-Id:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Cqx/q/n6hrY5Ps1ipX2QJFZ34qH2P2+3lxddoYfsBeQ=; b=Ife0wTMKUONxDsZCTwglJP899x
 5tLVn3OULiP2ZNI5hcaFt3UIGcsWHXipfVH4kRVtm8qea5B1nY9MtOC2jq3wBxashEEtd0BLMQ3i3
 zbAhB4EzdP3JiQ0b0Nzms9mdTrdAtp3qmhSO6w4JNcE07keyzanvFwVSDyl4ALdFFWxg=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mT5Nj-0000vW-26
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Sep 2021 16:46:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Content-Type:Content-Transfer-Encoding:MIME-Version:Content-ID:
 Content-Description; bh=Cqx/q/n6hrY5Ps1ipX2QJFZ34qH2P2+3lxddoYfsBeQ=; b=mS6zR
 z5uI18mxP9aneaQmW2ScNP5w9aJrE0brLyb0fF88Ano26r4RFmTqHe+OVNDntbY37Dxf3WGyIrfOj
 jCFfvJn117/nbx41ncBrYYL6ASfnQ7LRRVHcz0dJd5DFjDJieB8AfyT69VoZD8crr+pclNXNuLsok
 DV23p6ewKwIiw8oi0Xm8wUWP8IDJsxGNi+o6Mq+WVGcoiMNYPz2lo6GzA9C+b5bKKooDG8BxdZfcM
 UwkMk9dKbIq2iqBuyHBfC8YG5gWl2ySeDOuzpW9X42EPz1n52xyk7q724xhzbysqOvQM76m3rG0+Z
 eiIuC6INFp8Vkpnpz8N9bdqw9XJ1g==;
Message-Id: <925da76c58d67372307e5f516989600c96831c3a.1632327421.git.linux_oss@crudebyte.com>
In-Reply-To: <cover.1632327421.git.linux_oss@crudebyte.com>
References: <cover.1632327421.git.linux_oss@crudebyte.com>
Date: Wed, 22 Sep 2021 18:00:21 +0200
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  If user supplied a large value with the 'msize' option, then
 client would silently limit that 'msize' value to the maximum value supported
 by transport. That's a bit confusing for users of not having [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1mT5Nj-0000vW-26
Subject: [V9fs-developer] [PATCH v3 1/7] net/9p: show error message if user
 'msize' cannot be satisfied
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, Greg Kurz <groug@kaod.org>,
 Vivek Goyal <vgoyal@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

If user supplied a large value with the 'msize' option, then
client would silently limit that 'msize' value to the maximum
value supported by transport. That's a bit confusing for users
of not having any indication why the preferred 'msize' value
could not be satisfied.

Reported-by: Vivek Goyal <vgoyal@redhat.com>
Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
---
 net/9p/client.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/net/9p/client.c b/net/9p/client.c
index 213f12ed76cd..4f4fd2098a30 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -1044,8 +1044,13 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
 	if (err)
 		goto put_trans;
 
-	if (clnt->msize > clnt->trans_mod->maxsize)
+	if (clnt->msize > clnt->trans_mod->maxsize) {
 		clnt->msize = clnt->trans_mod->maxsize;
+		pr_info("Limiting 'msize' to %d as this is the maximum "
+			"supported by transport %s\n",
+			clnt->msize, clnt->trans_mod->name
+		);
+	}
 
 	if (clnt->msize < 4096) {
 		p9_debug(P9_DEBUG_ERROR,
-- 
2.20.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
