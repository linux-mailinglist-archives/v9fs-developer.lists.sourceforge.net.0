Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0158953435B
	for <lists+v9fs-developer@lfdr.de>; Wed, 25 May 2022 20:51:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ntw6Y-0001Hs-8S; Wed, 25 May 2022 18:51:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tyhicks@linux.microsoft.com>) id 1ntw6X-0001Hi-1u
 for v9fs-developer@lists.sourceforge.net; Wed, 25 May 2022 18:51:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Fx2o1UKyCtXuLFMagMlAZHz2PLJ3sQHCswAQMFJT72o=; b=AUR7NiEjVRYg/gVc3CqRfYGEQc
 st4QVV0fqfYe2pHFcDAeZyEmmfPFNRAaruyKQHEHcDy2+KstY0CRu0LJ7NP9WLDCzMcJqvv9oQW1p
 sAl1S4x7j3SQRPfgZ5EQuaLSN2JL/2HTlbWLGiTRKO88YcsP16Tf3tEQ7YDAdIudiiI8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Fx2o1UKyCtXuLFMagMlAZHz2PLJ3sQHCswAQMFJT72o=; b=W
 Cs15oFd2ZxLtdYyJ+CJxBeWN+i/73+UciH7MikuHrrtfgXPDKnnMP11YXQzODhx00Gw47kGzff+0r
 7m7/bHFZwnl+BAKlKVe7HA3OkNZnKwlloPwhwIWScQojWLBlm2gd+Fh+hs0O0enzrTkrmcPrGY7PQ
 Qd1HP7kqjENq0+CY=;
Received: from linux.microsoft.com ([13.77.154.182])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1ntw6U-00AC39-5w
 for v9fs-developer@lists.sourceforge.net; Wed, 25 May 2022 18:51:31 +0000
Received: from sequoia.devices.tihix.com
 (162-237-133-238.lightspeed.rcsntx.sbcglobal.net [162.237.133.238])
 by linux.microsoft.com (Postfix) with ESMTPSA id 948C520B71D5;
 Wed, 25 May 2022 11:26:06 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 948C520B71D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1653503170;
 bh=Fx2o1UKyCtXuLFMagMlAZHz2PLJ3sQHCswAQMFJT72o=;
 h=From:To:Cc:Subject:Date:From;
 b=cFa7NWuKO39idKR0xQYCp3RGC7l9QJYw1uA/8A9dqCFNgOZjcInCLM8M1b1FbAauj
 FHY2DP7GM8rhKpBEG+u7Gz6Jg+36is1vcmc2Sn1Yl/3OSdbLZrSEanFJ6oWcUGEBYD
 9vBx0oGq8xqOjywQfhzEHbleq8pxgL4hrvQswBlc=
From: Tyler Hicks <tyhicks@linux.microsoft.com>
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>
Date: Wed, 25 May 2022 13:25:30 -0500
Message-Id: <20220525182530.266068-1-tyhicks@linux.microsoft.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -17.9 (-----------------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Decrement the refcount of the parent dentry's fid after
 walking
 each path component during a full path walk for a lookup. Failure to do so
 can lead to fids that are not clunked until the filesystem is [...] 
 Content analysis details:   (-17.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [13.77.154.182 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
X-Headers-End: 1ntw6U-00AC39-5w
Subject: [V9fs-developer] [PATCH] 9p: Fix refcounting during full path walks
 for fid lookups
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
Cc: v9fs-developer@lists.sourceforge.net,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Jianyong Wu <jianyong.wu@arm.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Decrement the refcount of the parent dentry's fid after walking
each path component during a full path walk for a lookup. Failure to do
so can lead to fids that are not clunked until the filesystem is
unmounted, as indicated by this warning:

 9pnet: found fid 3 not clunked

The improper refcounting after walking resulted in open(2) returning
-EIO on any directories underneath the mount point when using the virtio
transport. When using the fd transport, there's no apparent issue until
the filesytem is unmounted and the warning above is emitted to the logs.

In some cases, the user may not yet be attached to the filesystem and a
new root fid, associated with the user, is created and attached to the
root dentry before the full path walk is performed. Increment the new
root fid's refcount to two in that situation so that it can be safely
decremented to one after it is used for the walk operation. The new fid
will still be attached to the root dentry when
v9fs_fid_lookup_with_uid() returns so a final refcount of one is
correct/expected.

Include a small readability improvement by using a new variable when
dealing with the root fid as it requires special handling not necessary
with non-root fids.

Fixes: 6636b6dcc3db ("9p: add refcount to p9_fid struct")
Cc: stable@vger.kernel.org
Signed-off-by: Tyler Hicks <tyhicks@linux.microsoft.com>
---
 fs/9p/fid.c | 42 ++++++++++++++++++------------------------
 1 file changed, 18 insertions(+), 24 deletions(-)

diff --git a/fs/9p/fid.c b/fs/9p/fid.c
index 79df61fe0e59..dfe98a308612 100644
--- a/fs/9p/fid.c
+++ b/fs/9p/fid.c
@@ -150,9 +150,9 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
 {
 	struct dentry *ds;
 	const unsigned char **wnames, *uname;
-	int i, n, l, clone, access;
+	int i, n, l, access;
 	struct v9fs_session_info *v9ses;
-	struct p9_fid *fid, *old_fid = NULL;
+	struct p9_fid *fid, *root_fid, *old_fid;
 
 	v9ses = v9fs_dentry2v9ses(dentry);
 	access = v9ses->flags & V9FS_ACCESS_MASK;
@@ -178,8 +178,8 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
 	up_read(&v9ses->rename_sem);
 
 	/* start from the root and try to do a lookup */
-	fid = v9fs_fid_find(dentry->d_sb->s_root, uid, any);
-	if (!fid) {
+	root_fid = v9fs_fid_find(dentry->d_sb->s_root, uid, any);
+	if (!root_fid) {
 		/* the user is not attached to the fs yet */
 		if (access == V9FS_ACCESS_SINGLE)
 			return ERR_PTR(-EPERM);
@@ -189,18 +189,18 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
 		else
 			uname = v9ses->uname;
 
-		fid = p9_client_attach(v9ses->clnt, NULL, uname, uid,
-				       v9ses->aname);
-		if (IS_ERR(fid))
-			return fid;
+		root_fid = p9_client_attach(v9ses->clnt, NULL, uname, uid,
+					    v9ses->aname);
+		if (IS_ERR(root_fid))
+			return root_fid;
 
-		v9fs_fid_add(dentry->d_sb->s_root, fid);
+		refcount_inc(&root_fid->count);
+		v9fs_fid_add(dentry->d_sb->s_root, root_fid);
 	}
 	/* If we are root ourself just return that */
-	if (dentry->d_sb->s_root == dentry) {
-		refcount_inc(&fid->count);
-		return fid;
-	}
+	if (dentry->d_sb->s_root == dentry)
+		return root_fid;
+
 	/*
 	 * Do a multipath walk with attached root.
 	 * When walking parent we need to make sure we
@@ -212,7 +212,8 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
 		fid = ERR_PTR(n);
 		goto err_out;
 	}
-	clone = 1;
+	fid = root_fid;
+	old_fid = root_fid;
 	i = 0;
 	while (i < n) {
 		l = min(n - i, P9_MAXWELEM);
@@ -220,22 +221,15 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
 		 * We need to hold rename lock when doing a multipath
 		 * walk to ensure none of the patch component change
 		 */
-		fid = p9_client_walk(fid, l, &wnames[i], clone);
+		fid = p9_client_walk(old_fid, l, &wnames[i],
+				     old_fid == root_fid);
+		p9_client_clunk(old_fid);
 		if (IS_ERR(fid)) {
-			if (old_fid) {
-				/*
-				 * If we fail, clunk fid which are mapping
-				 * to path component and not the last component
-				 * of the path.
-				 */
-				p9_client_clunk(old_fid);
-			}
 			kfree(wnames);
 			goto err_out;
 		}
 		old_fid = fid;
 		i += l;
-		clone = 0;
 	}
 	kfree(wnames);
 fid_out:
-- 
2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
