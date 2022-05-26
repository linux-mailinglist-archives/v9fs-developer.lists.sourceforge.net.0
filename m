Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB825356E7
	for <lists+v9fs-developer@lfdr.de>; Fri, 27 May 2022 02:00:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nuNPN-0000iu-Ha; Fri, 27 May 2022 00:00:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tyhicks@linux.microsoft.com>) id 1nuNPJ-0000ii-L9
 for v9fs-developer@lists.sourceforge.net; Fri, 27 May 2022 00:00:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NhuOrFwDQW9Q1UcmxsEGyGirwZwzRLJvKVIm4Dfq7Go=; b=kYTzRVbeINHNJHV4+6pB4nl6mb
 AeiJXvpjOKKFzQLrY2XQqrqTP5EyJ0jMMnv2xhQTLFsGHV0TEkIDrdjauwB0IbIyoeYqw5bh+d0pn
 39Pag4NqKpL0L6XNpYbNfgCvQOwtHZu2KO+h7boc5MhdE9V5cdixS6so8k7xA/cgzloI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NhuOrFwDQW9Q1UcmxsEGyGirwZwzRLJvKVIm4Dfq7Go=; b=KpMhTLzG630J3wZ9olfX8skxoM
 LZl0x3Zn+bVrPuWpRwgy9il/+4mbnW4jJjpHjgcdHixU8fo7kqDverJ4mXzBSQSBoUwUt/JAIMtn5
 8jqxyvZUjchIs5kjyOp2qzepNKYL+epaRSnflXO5Eel19BO2Slyed9i6As9LwWbKAm74=;
Received: from linux.microsoft.com ([13.77.154.182])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1nuNPB-003L2x-CE
 for v9fs-developer@lists.sourceforge.net; Fri, 27 May 2022 00:00:43 +0000
Received: from sequoia.corp.microsoft.com
 (162-237-133-238.lightspeed.rcsntx.sbcglobal.net [162.237.133.238])
 by linux.microsoft.com (Postfix) with ESMTPSA id 45BEC20B6C7C;
 Thu, 26 May 2022 17:00:27 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 45BEC20B6C7C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1653609627;
 bh=NhuOrFwDQW9Q1UcmxsEGyGirwZwzRLJvKVIm4Dfq7Go=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VEOVZWTZwwz+nwhUfw74fZ7F3of6fGhlZoWIXbWcxkU78Awwb/9fML91xtfZe7p/f
 RIbWgoXWZo9vACbaM7OyykfAa/A3MuHmUQEowMPqZFfQQSv1WOtIdkAy6GufgktV7c
 XkXbq+bxVDYr4IYAtUiy1VXIb1ET8Qj2hmlVlS4M=
From: Tyler Hicks <tyhicks@linux.microsoft.com>
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>
Date: Thu, 26 May 2022 18:59:59 -0500
Message-Id: <20220527000003.355812-2-tyhicks@linux.microsoft.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220527000003.355812-1-tyhicks@linux.microsoft.com>
References: <20220527000003.355812-1-tyhicks@linux.microsoft.com>
MIME-Version: 1.0
X-Spam-Score: -17.9 (-----------------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 welcome-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [13.77.154.182 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
X-Headers-End: 1nuNPB-003L2x-CE
Subject: [V9fs-developer] [PATCH v2 1/5] 9p: Fix refcounting during full
 path walks for fid lookups
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

Fixes: 6636b6dcc3db ("9p: add refcount to p9_fid struct")
Cc: stable@vger.kernel.org
Signed-off-by: Tyler Hicks <tyhicks@linux.microsoft.com>
---
 fs/9p/fid.c | 17 +++++------------
 1 file changed, 5 insertions(+), 12 deletions(-)

diff --git a/fs/9p/fid.c b/fs/9p/fid.c
index 79df61fe0e59..5a469b79c1ee 100644
--- a/fs/9p/fid.c
+++ b/fs/9p/fid.c
@@ -152,7 +152,7 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
 	const unsigned char **wnames, *uname;
 	int i, n, l, clone, access;
 	struct v9fs_session_info *v9ses;
-	struct p9_fid *fid, *old_fid = NULL;
+	struct p9_fid *fid, *old_fid;
 
 	v9ses = v9fs_dentry2v9ses(dentry);
 	access = v9ses->flags & V9FS_ACCESS_MASK;
@@ -194,13 +194,12 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
 		if (IS_ERR(fid))
 			return fid;
 
+		refcount_inc(&fid->count);
 		v9fs_fid_add(dentry->d_sb->s_root, fid);
 	}
 	/* If we are root ourself just return that */
-	if (dentry->d_sb->s_root == dentry) {
-		refcount_inc(&fid->count);
+	if (dentry->d_sb->s_root == dentry)
 		return fid;
-	}
 	/*
 	 * Do a multipath walk with attached root.
 	 * When walking parent we need to make sure we
@@ -212,6 +211,7 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
 		fid = ERR_PTR(n);
 		goto err_out;
 	}
+	old_fid = fid;
 	clone = 1;
 	i = 0;
 	while (i < n) {
@@ -221,15 +221,8 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
 		 * walk to ensure none of the patch component change
 		 */
 		fid = p9_client_walk(fid, l, &wnames[i], clone);
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
-- 
2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
