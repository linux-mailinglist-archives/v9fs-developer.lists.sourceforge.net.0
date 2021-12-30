Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BD583481D36
	for <lists+v9fs-developer@lfdr.de>; Thu, 30 Dec 2021 15:42:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n2wdC-0003hb-QE; Thu, 30 Dec 2021 14:42:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <783ba37c1566dd715b9a67d437efa3b77e3cd1a7@lizzy.crudebyte.com>)
 id 1n2wdB-0003hP-PN
 for v9fs-developer@lists.sourceforge.net; Thu, 30 Dec 2021 14:42:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S1MxFhNkRqNtF8cNgTKG1aWD8I0cArSeeYZ1LCi9IyY=; b=YeXl0gGQCCEVnl/dc5FR+52U0
 9hp2e1QZISvaV1QM8wmOdsxQf516QD719GJQJWU8LjC3OeD5C58iFsfJ4FtwwTU4WJLG8jckCJUsA
 0Kcy/AG6x0rxYQ5UbYITGpCN9D0EFCo2stu1ntY6yqQ6JY17wszfar1/bucbDy+TS7qtA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:References:In-Reply-To:Message-Id:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=S1MxFhNkRqNtF8cNgTKG1aWD8I0cArSeeYZ1LCi9IyY=; b=UA9T1QGh6H2t4ads3wAjVPOsA+
 /uqnNx5R4OMpHRL6azkWCv0kOIiROd1ifrjYPPSwP+GI/b1buRs0zjWQ4NaotZzLfkJm0HP89cjkI
 vPSyyqLnFwZFoba2KPJBqo8xP2V6FCKlnLkRoRbANUNrCUvPEowP81b7ooZi9aYrYMSI=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n2wdC-0003Ob-Aa
 for v9fs-developer@lists.sourceforge.net; Thu, 30 Dec 2021 14:42:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:References:In-Reply-To:
 Message-Id:Content-Type:Content-Transfer-Encoding:MIME-Version:Content-ID:
 Content-Description; bh=S1MxFhNkRqNtF8cNgTKG1aWD8I0cArSeeYZ1LCi9IyY=; b=gQuBI
 J/yh7So1jopa2gZ0eb5jM4PAnSZdsumbkSiw0C5+DNMByHFQvvQyuL9Go9VvqnMH0/AV5nwS1TIHi
 JV15/d4vrBSeRtCOTRj+PKzsbCDPODqkweC7xtGNUcJNWMaLXeR4714v9FzHMvejhIo6400+sbkOL
 mUci50A2igtc3Jyh5RL1OhPZQFt6ZwIR8xiWwFIfA25spfBXJxI2mXgtk23+UnvmYsXPkJ1kiyMe3
 ZGlp90tLmuOqDd4lcVsK8fZF4GkjYUP+YXGvlchS02FuNMKcPhHYy3oPlYk+Zq/vPFqaXaOafh+TM
 XLDaFl7eHRzxEU7iVZWnzdfULHW4w==;
Message-Id: <783ba37c1566dd715b9a67d437efa3b77e3cd1a7.1640870037.git.linux_oss@crudebyte.com>
In-Reply-To: <cover.1640870037.git.linux_oss@crudebyte.com>
References: <cover.1640870037.git.linux_oss@crudebyte.com>
Date: Thu, 30 Dec 2021 14:23:18 +0100
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1n2wdC-0003Ob-Aa
Subject: [V9fs-developer] [PATCH v4 01/12] net/9p: show error message if
 user 'msize' cannot be satisfied
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
 Nikolay Kichukov <nikolay@oldum.net>, Vivek Goyal <vgoyal@redhat.com>
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
index d062f1e5bfb0..8bba0d9cf975 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -1038,8 +1038,13 @@ struct p9_client *p9_client_create(const char *dev_name, char *options)
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
2.30.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
