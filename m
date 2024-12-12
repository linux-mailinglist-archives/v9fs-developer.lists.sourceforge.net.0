Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1859A9EDC71
	for <lists+v9fs-developer@lfdr.de>; Thu, 12 Dec 2024 01:22:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1tLWxz-000430-NY;
	Thu, 12 Dec 2024 00:22:07 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <leocstone@gmail.com>) id 1tLWxx-00042t-JM
 for v9fs-developer@lists.sourceforge.net;
 Thu, 12 Dec 2024 00:22:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3bketrtpeW6UKdUyWO3MVWt53PVBe2dVx+Pr4cx7LBI=; b=FQeUejG1pLBbtYm7pqfvZTk1iP
 zj5iCrVamNqrv0iG+UNkkh342Iy0zHxB5xdeRNrs2OCDhIxMwIT+llFHyr8AT3/jmx9kJiQEOL0kr
 aHV/E6H3fPY0MNnoSOxryr+fOJLGL5wOPYurX7aDnZOWi1OD+Ws1KOtnDM55y+fNx/kg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3bketrtpeW6UKdUyWO3MVWt53PVBe2dVx+Pr4cx7LBI=; b=SuQd46Y3rPqgD1q6jPFXA9WSc1
 lNHwG7zUgJ/kilFNwpmK7o8VZALnV2UdgjZotd50N/elseSc3lfeXSajibQsuAg/d0aLSOlmO6vty
 oZscGTqi25b/Jrx6Kmp1gehxVigJrZsaapPnlMc+D7ttgWa+gE9C8wuvZtjt9A1NO3G0=;
Received: from mail-pg1-f174.google.com ([209.85.215.174])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tLWxw-0001jB-Ue for v9fs-developer@lists.sourceforge.net;
 Thu, 12 Dec 2024 00:22:05 +0000
Received: by mail-pg1-f174.google.com with SMTP id
 41be03b00d2f7-7fd377ff3c5so1056020a12.0
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 11 Dec 2024 16:22:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1733962914; x=1734567714; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=3bketrtpeW6UKdUyWO3MVWt53PVBe2dVx+Pr4cx7LBI=;
 b=gPXj/jOKkiJvkvkNMgeIpwaLojts1MWiME4rJ6wTyZhF1enehxRkGPiky5eXtwsVXG
 TOLpxIMGIOWcVuUlj85Zri1qKVXbQF4P7KeyWP1zmuw6PSFc4X2JK8gZWMyGX7bMfZPV
 JnkGfkJXL+MpPg53sogVCt2jdY0IVn7n16pEnXkNbi5s0U8pMa0dygy7BF0ZvK8iZ0Nd
 z/7vDCoUr3m2GWqiAPSeI4hhURPUFKvxgKlDfLywY7uc7IT1zt2kHCBssqahOhDoV0a9
 MmubeuMkZ0VWe96UGTcgIbYv7EhPWMhTNl+ZkDyE9DlJIPxYf/MqjYTrWyeQNQy5NZW0
 29/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733962914; x=1734567714;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=3bketrtpeW6UKdUyWO3MVWt53PVBe2dVx+Pr4cx7LBI=;
 b=g+XNR/umx2WoQgpXrx1E+Wr9B+L8bLRrSBOQxHRUY1lnavvHwqCCoDO5baEgMjuwRI
 blBEG5Ls0ItVYNRcN2RdkqWYPclVDmyFcQ16GVX6TeKeeSQTbSI0yQHH5ENfAV32qNw/
 RofSLv0F3oPsdcrFGeA5j+Or2jXv7rfNPyiFbaq+vBPiDGqk/4AUiakwa70cxfvUQsRw
 YkoqIlpGfUHzpoERIOguaAykqVU+ClKM7I0O7TsjrOgTTMU28mrWxmkQnjskyS3+0Coq
 Tk6u3KVzXNL3TWrcddcDdNA+7GpIGfLZAd1xVE0ntSKyMiz1JfrT8zkNy+rf6rD8itc2
 dYNg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWM69PgqZfJAudhEkLiPjYs6kgrSq9cVEgGjOYaHgns/XUPPRpZc1Ba7uHV+pDuqJmH+Yh4gs3gq6PI1SJecQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yxuq6hdOyfl8/y0PCiTnd2Nos4bGNTZocxQhh4/Sz2Id2m/u7Vl
 KQCYpYPAvqRS9eQrTbXOJrlND6mSKttstxqyUxe2uswFNZ+dmsaL
X-Gm-Gg: ASbGncs/tSrDJEvAnN01nSXgoC3d16y58flmrvj9LsQPaQzTpNUugWpnSBGzEvG+bi4
 AaSaqhT5nN7Po9g6Upaz8wHnWCr8kwjdATRBeV/BJ3iwyOJQ3XpWIKiCSMVnmwUON5gOWuRGUSQ
 hsjIqY/aBypoxn7dcDFQCWLHCoMRqaTQf/GZJaC05VX2iB76Q5tUopjFwsaSzU4Q1oxnZ+pmbdZ
 7HCe97PLjyHCFUKnhFrfpfBYO6CB89OVNDcuUmxkIwzcLbKGbtWyLiLWAxAPqj6WSxAe5F+
X-Google-Smtp-Source: AGHT+IEIh2pxGWlSntUWbdtNDDz1buQFg4Adw/CcEXsV5276tbuH02ZNbu5Nd1bQ7IEod2fpr1de0Q==
X-Received: by 2002:a17:90b:38cb:b0:2ef:83df:bb3b with SMTP id
 98e67ed59e1d1-2f13aba96a6mr1882157a91.8.1733962914123; 
 Wed, 11 Dec 2024 16:21:54 -0800 (PST)
Received: from tc.hsd1.or.comcast.net ([2601:1c2:c104:170:a69f:44ab:93c9:b027])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2ef8d84224bsm8241413a91.42.2024.12.11.16.21.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2024 16:21:53 -0800 (PST)
From: Leo Stone <leocstone@gmail.com>
To: syzbot+03fb58296859d8dbab4d@syzkaller.appspotmail.com
Date: Wed, 11 Dec 2024 16:20:22 -0800
Message-ID: <20241212002022.209049-1-leocstone@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <675963eb.050a0220.17f54a.0038.GAE@google.com>
References: <675963eb.050a0220.17f54a.0038.GAE@google.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot triggered a warning in kmalloc by trying to mount a
 v9fs filesystem from a pipe, after specifying an ACL size of 9TB for the
 root inode in the data written to the pipe. An xattr larger than
 XATTR_SIZE_MAX
 is considered invalid by the VFS layer anyway. See do_getxattr(): > } else
 if (error == -ERANGE && ctx->size >= XATTR_SIZE_MAX) { > /* The file system
 tried to retu [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.215.174 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.215.174 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [leocstone[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.174 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.174 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tLWxw-0001jB-Ue
Subject: [V9fs-developer] [PATCH] 9p: Limit xattr size to XATTR_SIZE_MAX
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: lucho@ionkov.net, Leo Stone <leocstone@gmail.com>, ericvh@gmail.com,
 linux_oss@crudebyte.com, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, viro@zeniv.linux.org.uk,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ericvh@kernel.org, torvalds@linux-foundation.org, v9fs@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

syzbot triggered a warning in kmalloc by trying to mount a v9fs
filesystem from a pipe, after specifying an ACL size of 9TB for the
root inode in the data written to the pipe.

An xattr larger than XATTR_SIZE_MAX is considered invalid by the VFS
layer anyway. See do_getxattr():
>        } else if (error == -ERANGE && ctx->size >= XATTR_SIZE_MAX) {
>                /* The file system tried to returned a value bigger
>                   than XATTR_SIZE_MAX bytes. Not possible. */
>                error = -E2BIG;
>        }

Reported-by: syzbot+03fb58296859d8dbab4d@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=03fb58296859d8dbab4d
Fixes: ebf46264a004 ("fs/9p: Add support user. xattr") 
Signed-off-by: Leo Stone <leocstone@gmail.com>
---
See: https://lore.kernel.org/all/675963eb.050a0220.17f54a.0038.GAE@google.com/T/ 
---
 fs/9p/xattr.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/9p/xattr.c b/fs/9p/xattr.c
index 8604e3377ee7..97f60b73bf16 100644
--- a/fs/9p/xattr.c
+++ b/fs/9p/xattr.c
@@ -37,8 +37,8 @@ ssize_t v9fs_fid_xattr_get(struct p9_fid *fid, const char *name,
 	if (attr_size > buffer_size) {
 		if (buffer_size)
 			retval = -ERANGE;
-		else if (attr_size > SSIZE_MAX)
-			retval = -EOVERFLOW;
+		else if (attr_size > XATTR_SIZE_MAX)
+			retval = -E2BIG;
 		else /* request to get the attr_size */
 			retval = attr_size;
 	} else {
-- 
2.43.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
