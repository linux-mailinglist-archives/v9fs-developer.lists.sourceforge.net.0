Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E73EF547951
	for <lists+v9fs-developer@lfdr.de>; Sun, 12 Jun 2022 10:53:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o0JM2-0001Jg-4N; Sun, 12 Jun 2022 08:53:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1o0JM0-0001JV-IO
 for v9fs-developer@lists.sourceforge.net; Sun, 12 Jun 2022 08:53:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w5eLWBoj4FhuSPOzs8fxdj2BHxKVzjRtW80SblPcooM=; b=bZtuNtmlwyHpVISQDGmbelcKzY
 0pthUbbvXPba9aLb01zMP3p4Cwa04hvSOMsikBf2V+OBtZubdO5J4BA5m7qAzMKmeuvEaE8U41sLV
 U+yXybk5IQzXoCt0iL8/n5eDL4+vlbE1Kt9BPYp41gPqWAVarhkGcuL5Kqc+CrfM6Z/s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=w5eLWBoj4FhuSPOzs8fxdj2BHxKVzjRtW80SblPcooM=; b=k
 pG3sbRHFbfzFINqhR6jkUpPi5HhZEwsETqSAWffdZ8uvEekreJR8uw62xx5kWaN9mEWzZ/Izs60vx
 gmTgXJDLD/ng/NXNoPjuaNwL8HHxvTGEa53HjLRbasogVciie2eGrUz68vuE81TIWLyDbh2dNLNuS
 kTh0MPKUX4SV3vww=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o0JLw-00Fx4z-FJ
 for v9fs-developer@lists.sourceforge.net; Sun, 12 Jun 2022 08:53:52 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 0141BC01C; Sun, 12 Jun 2022 10:53:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655024022; bh=w5eLWBoj4FhuSPOzs8fxdj2BHxKVzjRtW80SblPcooM=;
 h=From:To:Cc:Subject:Date:From;
 b=oP+nn3sZitTcAMQ5B0MJF0kLxdIlEzBxbIyO0zSPWKQFmGR1b7diRGYrLqgxxlEf5
 A7akKJ5T0wxXCeomk1nJG1ucJTslPx2j3L+t2W9J44JtxhwMwvy6zvQNuOmWQtGl8y
 UCu3zdnjDPfXMJZE9eJCufVg8kXJ7LlJypmnlfg+aAY6yp84Jcg5fQcbZcmRKjuv04
 Ogvq1RnIXs1QxYEhr2oenTuf0fvxpn61X3uUc8EyMoGeEut7c0xFsyrvLOstmO5NqO
 inj3aq3zDCAgaplSJLVejqEmSFr93zDggTf92O3q+iLzEaRI3LfP7wUAHA1w8/ytTV
 avypnLrnpdxzg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 41BF6C009;
 Sun, 12 Jun 2022 10:53:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655024020; bh=w5eLWBoj4FhuSPOzs8fxdj2BHxKVzjRtW80SblPcooM=;
 h=From:To:Cc:Subject:Date:From;
 b=hDzoQ6kFl17DajXPdaD2NZ3MWOw9+kp63WWqwCgNfGkMkzKh9DqV5ONFjXkHvxIvi
 TaauEIFJRXYr/CywF6p6/dhspH2lYvYV/m/A2/jNSjmjeSWxcF+l+TPWWNibnUiIW7
 iNKKWt/Fu7kikha071zMPNYMT0txBjpDlGDZffWcts+utWmk+Vb2K7vvA6BUzisPdl
 cBdsJigDmfDpOqZ5Ba/yAEZiMXpvbA59JDpksB0uGNAMun1pNqYbn2ewtqMstvTYdr
 EKDFYIg8WKD3SM/MZ/Vf+xhkl0R+jO0fh6a+V3ki2TwxIGAytew1IZli7Dem8YRjE9
 FWykdLsIuUWRQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 48909a71;
 Sun, 12 Jun 2022 08:53:34 +0000 (UTC)
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>,
 Tyler Hicks <tyhicks@linux.microsoft.com>
Date: Sun, 12 Jun 2022 17:53:23 +0900
Message-Id: <20220612085330.1451496-1-asmadeus@codewreck.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  So: - I could reproduce Tyler's generic 531 leak, fixed it
 by the first commit in v9fs_vfs_atomic_open_dotl - Found another less likely
 leak while reworking code - Christian's comment that it's not ob [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o0JLw-00Fx4z-FJ
Subject: [V9fs-developer] [PATCH 00/06] fid refcounting improvements and
 fixes
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
Cc: v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

So:
 - I could reproduce Tyler's generic 531 leak, fixed it by the first
   commit in v9fs_vfs_atomic_open_dotl
 - Found another less likely leak while reworking code
 - Christian's comment that it's not obvious that clunk is just a
   refcount decrease was very true: I think it's worth the churn,
   so I've rename this all through a new helper...
 - ... with the not-so-hidden intent to improve debugging by adding
   a tracepoint for them, which I have also done.

I've also taken my comment in the other thread further and went ahead
and made it in its own commit. Tyler, if you're ok with this I'll just
squash it up. You can see rebased patches here:
https://github.com/martinetd/linux/

Note that I also took the permission to add back '/* clone */' as a
comment to your changing p9_client_walk's arguments: while I can agree
variables are hard to track, figuring out what the heck that boolean
argument means is much harder to me and I honestly preferred the
variable.
Having both through a comment is good enough for me if you'll accept
this:
----
@@ -222,7 +221,8 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
                 * We need to hold rename lock when doing a multipath
                 * walk to ensure none of the patch component change
                 */
-               fid = p9_client_walk(old_fid, l, &wnames[i], clone);
+               fid = p9_client_walk(old_fid, l, &wnames[i],
+                                    old_fid == root_fid /* clone */);
                /* non-cloning walk will return the same fid */
                if (fid != old_fid) {
                        p9_client_clunk(old_fid);
----


The last commit is just cleanups and should be no real change.

Dominique Martinet (6):
  9p: fix fid refcount leak in v9fs_vfs_atomic_open_dotl
  9p: fix fid refcount leak in v9fs_vfs_get_link
  9p: v9fs_fid_lookup_with_uid fix's fix suggestion
  9p fid refcount: add p9_fid_get/put wrappers
  9p fid refcount: add a 9p_fid_ref tracepoint
  9p fid refcount: cleanup p9_fid_put calls


(diff stats include Tyler's commits)

 fs/9p/fid.c               | 71 +++++++++++++++-------------
 fs/9p/fid.h               |  6 +--
 fs/9p/vfs_addr.c          |  4 +-
 fs/9p/vfs_dentry.c        |  4 +-
 fs/9p/vfs_dir.c           |  2 +-
 fs/9p/vfs_file.c          |  9 ++--
 fs/9p/vfs_inode.c         | 97 +++++++++++++++++----------------------
 fs/9p/vfs_inode_dotl.c    | 79 ++++++++++++-------------------
 fs/9p/vfs_super.c         |  8 ++--
 fs/9p/xattr.c             |  8 ++--
 include/net/9p/client.h   |  3 ++
 include/trace/events/9p.h | 48 +++++++++++++++++++
 net/9p/client.c           | 42 +++++++++++------
 13 files changed, 211 insertions(+), 170 deletions(-)

-- 
2.35.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
