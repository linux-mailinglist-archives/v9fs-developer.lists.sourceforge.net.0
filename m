Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 798834A3671
	for <lists+v9fs-developer@lfdr.de>; Sun, 30 Jan 2022 14:07:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nE9vK-0004AO-Nw; Sun, 30 Jan 2022 13:07:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1nE9vI-0004AI-OU
 for v9fs-developer@lists.sourceforge.net; Sun, 30 Jan 2022 13:07:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WzIC+v4+UrPRQhCkj2dIOPEwY3tXxjMgRe2rgwvMEZY=; b=fYS/S1hcGkl6JMbjN3A3fpsvj6
 L+AralEWpVjAds8zVeP68l3nHYZJVv8JHn0VSDIlToSsdV1i5+hB2kUVJCyJpQVLiFho3e8Ik/NIX
 xIaTChcUuEVsxoRbrkO2BbZRMPWDQpBcBwoYL88LMFZVunccPy/EcpgILW4fj4OSHAJU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=WzIC+v4+UrPRQhCkj2dIOPEwY3tXxjMgRe2rgwvMEZY=; b=E
 SsSW457OviD3XsisjbDXuHlLxMD/wV4kKUvZKK/wSbPUOXgyuLpzRq/0s6K9pCgFd+pYjHHcV/nkF
 5Rt6PwmDNbi7ifP/ua2tnV3kZRTPiG5xYnktpGR+dDsoPYaqvm2S387nTYuP0IgNu+1XSIUnn5Ikb
 uj76GKyTHnUGTBKo=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nE9vE-005DG7-S0
 for v9fs-developer@lists.sourceforge.net; Sun, 30 Jan 2022 13:07:15 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 48586C020; Sun, 30 Jan 2022 14:07:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1643548025; bh=WzIC+v4+UrPRQhCkj2dIOPEwY3tXxjMgRe2rgwvMEZY=;
 h=From:To:Cc:Subject:Date:From;
 b=A/eTCDAYeVJIxX5tbvB12/4/652HP6a+M3FpLRcse+Sc/SEjEpfTDPYqr1LDWJh1v
 mKGkEQeNIvKnL7zXo0of38hdfHCmurruuAq1RVuh/WRkZ29Azka74FfWZ2FMPKPa7E
 OFzMujNAmlWwYryiv62a1n0xCvaQolZw3yZ4TE8ZNDfbF1x4cKDIA1DmHKvN902c1R
 CHdTs98gR/dogx6TZ8YrpA42dOjVmuR57wwsv/Oe8z1gb3TAn8r2u07I6qF7QdICHx
 wkg7Bzw9y1kIem4Y6uVmScgtSqVubnftN4Gv2MpiYgmAfNmiW/4DcWSBnHarALyF7n
 aXKrUoaYdnxKQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id C0393C01B;
 Sun, 30 Jan 2022 14:07:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1643548024; bh=WzIC+v4+UrPRQhCkj2dIOPEwY3tXxjMgRe2rgwvMEZY=;
 h=From:To:Cc:Subject:Date:From;
 b=f92Lnoe7HN1ufdYJSbNXcyVI/iMnA8btHbNuPezzvvhOQa41J/nJcEc7dibLwCS/G
 YeXUlLJlorVVVAc8ayShvappXCEwRTXw5F+AqipPbYGKmZx4rMs4qqDYrNN1VLfrGX
 7MXSoeDVhEvNk6X/KUVxjalJXF/G5wdlvkpC3qhwkzyNBfkbF27SOy5jmqhZXFgqxK
 vFqD7IzAAuFQw0AF9Xnm5zcLo+PSxECkbrsiGK3GQGuYfpKbXdVW+/cyBgRvLoly8V
 I8r1O5bdT9amTUA81wljgpkQ72J2meQt5rJNlmxiy2rkVPoTm+p1o/tP2m6WtYBamU
 fmdHqvKGboAbA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id b42ff00b;
 Sun, 30 Jan 2022 13:06:57 +0000 (UTC)
From: Dominique Martinet <asmadeus@codewreck.org>
To: v9fs-developer@lists.sourceforge.net, ericvh@gmail.com, lucho@ionkov.net
Date: Sun, 30 Jan 2022 22:06:51 +0900
Message-Id: <20220130130651.712293-1-asmadeus@codewreck.org>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This reverts commit 478ba09edc1f2f2ee27180a06150cb2d1a686f9c.
 That commit was meant as a fix for setattrs with by fd (e.g. ftruncate) to
 use an open fid instead of the first fid it found on lookup. The proper fix
 for that is to use the fid associated with the op [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1nE9vE-005DG7-S0
Subject: [V9fs-developer] [PATCH] Revert "fs/9p: search open fids first"
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
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 ron minnich <rminnich@gmail.com>, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

This reverts commit 478ba09edc1f2f2ee27180a06150cb2d1a686f9c.

That commit was meant as a fix for setattrs with by fd (e.g. ftruncate)
to use an open fid instead of the first fid it found on lookup.
The proper fix for that is to use the fid associated with the open file
struct, available in iattr->ia_file for such operations, and was
actually done just before in 66246641609b ("9p: retrieve fid from file
when file instance exist.")
As such, this commit is no longer required.

Furthermore, changing lookup to return open fids first had unwanted side
effects, as it turns out the protocol forbids the use of open fids for
further walks (e.g. clone_fid) and we broke mounts for some servers
enforcing this rule.

Note this only reverts to the old working behaviour, but it's still
possible for lookup to return open fids if dentry->d_fsdata is not set,
so more work is needed to make sure we respect this rule in the future,
for example by adding a flag to the lookup functions to only match
certain fid open modes depending on caller requirements.

Fixes: 478ba09edc1f ("fs/9p: search open fids first")
Cc: stable@vger.kernel.org # v5.11+
Reported-by: ron minnich <rminnich@gmail.com>
Reported-by: ng@0x80.stream
Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
---

I'm sorry I didn't find time to check this properly fixes the clone
open fid issues, but Ron reported it did so I'll assume it did for now.
I'll try to find time to either implement the check in ganesha or use
another server -- if you have a suggestion that'd run either a ramfs or
export a local filesystem from linux I'm all ears, I couldn't get go9p
to work in the very little time I tried.

I did however check that Greg's original open/chmod 0/ftruncate pattern
works (while truncate was refused).
Also, before revert the truncate by path wasn't refused, and now is
again, so that's definitely good.

I've also tested open-unlink-ftruncate and it works properly with
ganesha, but not with qemu -- it looks like qemu tries to access the
file by path in setattr even if the fid has an associated fd, so that'd
be a qemu bug, but it's unrelated to this patch anyway.


Unless there are issues with this patch I'll send it to Linus around
Friday

 fs/9p/fid.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/fs/9p/fid.c b/fs/9p/fid.c
index 6aab046c98e2..79df61fe0e59 100644
--- a/fs/9p/fid.c
+++ b/fs/9p/fid.c
@@ -96,12 +96,8 @@ static struct p9_fid *v9fs_fid_find(struct dentry *dentry, kuid_t uid, int any)
 		 dentry, dentry, from_kuid(&init_user_ns, uid),
 		 any);
 	ret = NULL;
-
-	if (d_inode(dentry))
-		ret = v9fs_fid_find_inode(d_inode(dentry), uid);
-
 	/* we'll recheck under lock if there's anything to look in */
-	if (!ret && dentry->d_fsdata) {
+	if (dentry->d_fsdata) {
 		struct hlist_head *h = (struct hlist_head *)&dentry->d_fsdata;
 
 		spin_lock(&dentry->d_lock);
@@ -113,6 +109,9 @@ static struct p9_fid *v9fs_fid_find(struct dentry *dentry, kuid_t uid, int any)
 			}
 		}
 		spin_unlock(&dentry->d_lock);
+	} else {
+		if (dentry->d_inode)
+			ret = v9fs_fid_find_inode(dentry->d_inode, uid);
 	}
 
 	return ret;
-- 
2.34.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
