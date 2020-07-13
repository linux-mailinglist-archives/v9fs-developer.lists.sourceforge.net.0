Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 34BEB21E335
	for <lists+v9fs-developer@lfdr.de>; Tue, 14 Jul 2020 00:52:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Mime-Version:Message-Id:Date:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qzwJkgMoQy/HWIxVSgACPMB0dt3X8PPRHKgZCcD84rs=; b=fnjL5MsZPB14rFEL4ZonDRVJVG
	9qQ4oZH6XYFjy9AWSkNihEEioud7ECdfmpdwd67rpAiS9WgI0mSCArr8c/EQJXAs+R+Rten/8EHQP
	H+hJzrlf9yLJLHZtz8aSHt9MT6LGR5xNxaYnO1CnHd5XsK/w/9doV7P3S4gZNX19uwVk=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jv7Je-0000OT-4e; Mon, 13 Jul 2020 22:52:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3AtkMXwsKAOUcPJaVYOZPLONVVNSL.JVT@flex--victorhsieh.bounces.google.com>)
 id 1jv7Jc-0000OL-6q
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jul 2020 22:52:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:From:Subject:Mime-Version:
 Message-Id:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Gs/Gv3Cy5wqDBUEc1MH9Cm/5K7mAub8SPlwC+wQyYqE=; b=dsxHZKPIRQQKD0fXxt176xr9QV
 z0pJ3PZAKDIQ7ee3Eew4DaDHZYzECSB9NlNM93M7v280ng/99mcIWT2qKelv33HcFB+nrbcFka76U
 CVURigxSPsx6pJ/a4nHXy2Zh56Hv7xNoywbn8gePCdNq9vVgJRlAqquB/nqXMXB5jhu0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:From:Subject:Mime-Version:Message-Id:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Gs/Gv3Cy5wqDBUEc1MH9Cm/5K7mAub8SPlwC+wQyYqE=; b=b
 F7bAYjFGLT+DhbuA/hKo+6GS+mDuX4l0KTCwdKBX6tovp+6rNfqUj9aCCPV8AhDFdCzh6jbYkyY9I
 gLs4qpH1Z5ZK93uyU7Q5lUE1RVRehvMODMYWSUgPlyB9bUwyVXJQl7VA0+lxPRbE+aTi8mQabHw+l
 VhRICmo468eCUM+U=;
Received: from mail-ot1-f73.google.com ([209.85.210.73])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jv7Ja-00GgVK-Tr
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jul 2020 22:52:52 +0000
Received: by mail-ot1-f73.google.com with SMTP id a3so8310545otf.8
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 13 Jul 2020 15:52:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=Gs/Gv3Cy5wqDBUEc1MH9Cm/5K7mAub8SPlwC+wQyYqE=;
 b=YdJOjCV7fIReprKUDgUqFRgD7IdA0HPn3o836MbjtwW5cjTi5pUg25Y/X/oLHsHOiq
 /dLDHo22UeKa9ZgZodQ/TxC5er0jV/ttg2YVNgxC6l+QIqgeTnfN2HSdyWKfBxwvuPyH
 ikcV3icBhj8W+JJAu3MWOqZcDkjwEN1ppZ3Mx8V81ot5qNKRaPDiT+5r3f/jCTa0nFp3
 LZHboA8G6zKKHlbyiDIYDuQawcKreTDOA1yhBekhAWB1CpYbf1JYSfd3k2xhpMKJMuw4
 S+Dxpv0zG66M5AantRlwmPLrSGGSwSKIvOnRdPUmRYTPitDSrZ4tbqul9mIBO24Bp9KX
 wMNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=Gs/Gv3Cy5wqDBUEc1MH9Cm/5K7mAub8SPlwC+wQyYqE=;
 b=nnUjBe472yivu6kAiBwh6e3dFKBKqU/oh9g7izpTmP4hcAYToPQM7aFUww0HF2WTph
 tOqY/Bm2rI7EVYK+FiFWOGwgRFIPVOUFMkZj9mCvPdmNcZqC3PGONw4kMJaXPOoQfWyv
 igh0+PJpXtswEnRxoFCU7xu9cVvUtwI5BH+GvENRt9oNPQnHpzs+2Sqrv8GxfMldj0i4
 yvC8kEbs6cNL+65NgZWuqtYbIzzOfKJRQmwjGgcXd0+jsZoapXjhcz1FbhzDdv/0Zgxk
 Zj74Kw6/xwil3pZXyaELkTV3BmnfytBeMM5/9ykoE/JG8rMQ0PkE5eTqVU6OR038B6vU
 nZmA==
X-Gm-Message-State: AOAM5314Lgp1EbjzZHUKkQmc4XEy+YzDgtpUdTPkcFLkWVWYcpZyyI1E
 Z5E+4a+9IgVkHmgms1wFtnG/jlHW80CyFOt0/svqgAvUNy16T9+tP3+NY8/dSTJROJ1I3qE121W
 gllUHPWG4zrov6k4VWJC1aKeBkxRnS0zPoZl3mMwVuK9FtXVYSTSrYJsqXRB4mCySAJOiW3FL0k
 unVKshqvID5aV33rI7+A==
X-Google-Smtp-Source: ABdhPJzoH1tIybvnt/uhpJ3VlQqwMSj3mOdOZMzcjfyYW8JRP/j82atHUsw1U6qKlkhK2AGbwHpshmfQ0hVXj+uHEA==
X-Received: by 2002:a25:6910:: with SMTP id e16mr3394641ybc.207.1594677506340; 
 Mon, 13 Jul 2020 14:58:26 -0700 (PDT)
Date: Mon, 13 Jul 2020 14:57:59 -0700
Message-Id: <20200713215759.3701482-1-victorhsieh@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.27.0.383.g050319c2ae-goog
To: v9fs-developer@lists.sourceforge.net, 
 Eric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>, 
 Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: -7.6 (-------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.73 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.73 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
X-Headers-End: 1jv7Ja-00GgVK-Tr
Subject: [V9fs-developer] [PATCH] fs/9p: Fix TCREATE's fid in protocol
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
From: Victor Hsieh via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Victor Hsieh <victorhsieh@google.com>
Cc: linux-fsdevel@vger.kernel.org, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org, Victor Hsieh <victorhsieh@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The fid parameter of TCREATE represents the directory that the file
should be created at. The current implementation mistakenly passes a
locally created fid for the file. The correct file fid is usually
retrieved by another WALK call, which does happen right after.

The problem happens when a new created fd is read from (i.e. where
private_data->fid is used), but not write to.

Fixes: 5643135a2846 ("fs/9p: This patch implements TLCREATE for 9p2000.L protocol.")
Signed-off-by: Victor Hsieh <victorhsieh@google.com>
Cc: stable@vger.kernel.org
---
 fs/9p/vfs_inode_dotl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/9p/vfs_inode_dotl.c b/fs/9p/vfs_inode_dotl.c
index 60328b21c5fb..90a7aaea918d 100644
--- a/fs/9p/vfs_inode_dotl.c
+++ b/fs/9p/vfs_inode_dotl.c
@@ -285,7 +285,7 @@ v9fs_vfs_atomic_open_dotl(struct inode *dir, struct dentry *dentry,
 			 err);
 		goto error;
 	}
-	err = p9_client_create_dotl(ofid, name, v9fs_open_to_dotl_flags(flags),
+	err = p9_client_create_dotl(dfid, name, v9fs_open_to_dotl_flags(flags),
 				    mode, gid, &qid);
 	if (err < 0) {
 		p9_debug(P9_DEBUG_VFS, "p9_client_open_dotl failed in creat %d\n",
-- 
2.27.0.383.g050319c2ae-goog



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
