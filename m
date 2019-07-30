Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA8C79E39
	for <lists+v9fs-developer@lfdr.de>; Tue, 30 Jul 2019 03:50:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hsHHf-0000mO-IF; Tue, 30 Jul 2019 01:50:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <deepa.kernel@gmail.com>) id 1hsHHf-0000mI-3G
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Jul 2019 01:50:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i+LRMSNrj6ysytmm99Rc/BfD1o0cWeoJWbC6wV2pjKo=; b=kh6VwrpXIlWEc6e7+6ZipJYY8Y
 ir3Wg1AszRklx5V1VnKI7F3fdMNGJ9lW2Ysg2OedWyc+Ih8SCJ9XCi6eULDBxtbt9eEvQTrte3drs
 zp3micHWFSM0y8FcWhPr7xNACN54VCA0gOxEmbgJMnVps8Orit776LKD+pRrqhzLKAMU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=i+LRMSNrj6ysytmm99Rc/BfD1o0cWeoJWbC6wV2pjKo=; b=dG+VpQpKOxIro4JAZVzs688oc8
 oF+lZc9lg8xxKuomELO9u6KBwElbGgCJi24+kiuQAX8BayyFlE0blbt9+Qn5iFFg2gmfm74C52TD2
 h/YQN6m/t4SKJau8UVRsXBeCcrWwZJyWSdIzxRauI9bOGSkmPD76jMG1KbiC7B2xstfI=;
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hsHHd-003tbC-6v
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Jul 2019 01:50:34 +0000
Received: by mail-pg1-f193.google.com with SMTP id i18so29163830pgl.11
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 29 Jul 2019 18:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=i+LRMSNrj6ysytmm99Rc/BfD1o0cWeoJWbC6wV2pjKo=;
 b=AOaRnw02TsiwbCxYhAlzGLg8nzDQpMpWKxAHBFB2a2RvzGYWBZFg5mRgPqCx4Vu/Ln
 F7AFryz6gakJOc7pt1+Mezu2nTV+CoYiOL0kEEDEplGq85bmjpgLLccmlg+RkfTCu6vA
 j2pCVHiq3XiXaquRa8YxS9yV/LSwebuWDnGqey3jTN7oa1PMiu5QXpqxjPR5zvMOg8hH
 LAev1+8dhbQDkV1bVk7/YLZuJXDimbINKT82EOpErLSxfD/z9gYMmjcue8T+bzhmVtTr
 DC5m/iDWQFAem/S70vYShqEKwYB81IyQocXsx9QoCdZfX8oI2+osvKNsj2t6+8Uh+4ky
 im8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=i+LRMSNrj6ysytmm99Rc/BfD1o0cWeoJWbC6wV2pjKo=;
 b=j/m3vC94ZE9GAsM8qI5bzOQnR3CdFJnNAiWNi54CDpVDN+c9NpYvb0HWftHkI3jvGT
 yYSTgQyxsQRjGlsbyxogSWS5c4gsTSRkyqQ9PJYyessvlD8lA6fc8nuVzVqr1FOPDfmj
 yFDvcnemCgjJFMfbSdHtPTyQK8VLR1psyTmHYtgquwNUd/gquzbhPSBZ2+CQEvdAeWrO
 jQkLYKeecK2CtqAW32eTuaEn31bICc2wspw5IEvQuAh2udur/Jd4M16GMWhxFbrdYZHw
 TG/70wDaruE+5/Ld2pDMVA+o9Tfup7xByqzvnWMmx4FBVLdXSngMnPseKYyAkk0jjXNI
 P/cA==
X-Gm-Message-State: APjAAAUm/OiZNMZyi43g8Z3UI7oSihcSodf7xMOzwnoD+hVGUrLzWMHB
 nteQe3vAEWuXDsM6Gzzzz3I=
X-Google-Smtp-Source: APXvYqzh6lY3nSUp4F9grKKAti8Q66DXm71R/Zu8sXqaO+Na/2RIljxHn26XwhCIyD2K77n58g3ICg==
X-Received: by 2002:a63:b747:: with SMTP id w7mr53077423pgt.205.1564451427431; 
 Mon, 29 Jul 2019 18:50:27 -0700 (PDT)
Received: from deepa-ubuntu.lan (c-98-234-52-230.hsd1.ca.comcast.net.
 [98.234.52.230])
 by smtp.gmail.com with ESMTPSA id r6sm138807156pjb.22.2019.07.29.18.50.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 18:50:27 -0700 (PDT)
From: Deepa Dinamani <deepa.kernel@gmail.com>
To: viro@zeniv.linux.org.uk,
	linux-kernel@vger.kernel.org
Date: Mon, 29 Jul 2019 18:49:11 -0700
Message-Id: <20190730014924.2193-8-deepa.kernel@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190730014924.2193-1-deepa.kernel@gmail.com>
References: <20190730014924.2193-1-deepa.kernel@gmail.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (deepa.kernel[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ionkov.net]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1hsHHd-003tbC-6v
Subject: [V9fs-developer] [PATCH 07/20] 9p: Fill min and max timestamps in sb
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
Cc: lucho@ionkov.net, arnd@arndb.de, y2038@lists.linaro.org, ericvh@gmail.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

struct p9_wstat and struct p9_stat_dotl indicate that the
wire transport uses u32 and u64 fields for timestamps.
Fill in the appropriate limits to avoid inconsistencies in
the vfs cached inode times when timestamps are outside the
permitted range.

Note that the upper bound for V9FS_PROTO_2000L is retained as S64_MAX.
This is because that is the upper bound supported by vfs.

Signed-off-by: Deepa Dinamani <deepa.kernel@gmail.com>
Cc: ericvh@gmail.com
Cc: lucho@ionkov.net
Cc: asmadeus@codewreck.org
Cc: v9fs-developer@lists.sourceforge.net
---
 fs/9p/vfs_super.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/fs/9p/vfs_super.c b/fs/9p/vfs_super.c
index 08112fbcaece..ca243e658d71 100644
--- a/fs/9p/vfs_super.c
+++ b/fs/9p/vfs_super.c
@@ -69,8 +69,12 @@ v9fs_fill_super(struct super_block *sb, struct v9fs_session_info *v9ses,
 	if (v9fs_proto_dotl(v9ses)) {
 		sb->s_op = &v9fs_super_ops_dotl;
 		sb->s_xattr = v9fs_xattr_handlers;
-	} else
+	} else {
 		sb->s_op = &v9fs_super_ops;
+		sb->s_time_max = U32_MAX;
+	}
+
+	sb->s_time_min = 0;
 
 	ret = super_setup_bdi(sb);
 	if (ret)
-- 
2.17.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
