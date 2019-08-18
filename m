Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF7D91808
	for <lists+v9fs-developer@lfdr.de>; Sun, 18 Aug 2019 18:59:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hzOX6-0007AB-O8; Sun, 18 Aug 2019 16:59:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <deepa.kernel@gmail.com>) id 1hzOX5-00079y-AU
 for v9fs-developer@lists.sourceforge.net; Sun, 18 Aug 2019 16:59:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i+LRMSNrj6ysytmm99Rc/BfD1o0cWeoJWbC6wV2pjKo=; b=cPnkpgjPLVDcdCVKsbJULwtNAo
 5BILLSy//2UYp9nj7lgX2Gm0rhA71snDfDV64WH+6tKgSoG0UqxrunaKRuNvFZz+iakjvIViM2Khw
 zqetejJoi5OcE3YRN4Z0qERx/ibrwQm9hSzA1Z5bJ5EJBkx8HqVJBHGvVo5QfDIcgDQ0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=i+LRMSNrj6ysytmm99Rc/BfD1o0cWeoJWbC6wV2pjKo=; b=dra6uxBaV7HATdC44+6o/LiUtK
 XtCc9H3pSLxfC6HlzD3c740GnrPJr1wzkpdppTKYmDV/UJJhRS5e9b8vFYKvDN2F00ExGESjM3p6+
 q9PDNDLkQG2jqdIwC0n3zaWXdUe8xFZSh7RGhkT97kMi+hmxOmMI5mSIqbeqPiULPS0E=;
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hzOX4-007Sqk-4H
 for v9fs-developer@lists.sourceforge.net; Sun, 18 Aug 2019 16:59:55 +0000
Received: by mail-pl1-f195.google.com with SMTP id d3so2783293plr.1
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 18 Aug 2019 09:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=i+LRMSNrj6ysytmm99Rc/BfD1o0cWeoJWbC6wV2pjKo=;
 b=u0p1xnlWIscokdPFGB1xYyyYkHxHQ1EL+oy8mcZPSMZFggyqqZZ0F9/0+kW22duHD/
 8ju4CMdUcg5dqW8NFvrLjqsPO+3+tcTuwk/zJhzsiYRNobzXm67Xt4msC8U7Gs2RrvU/
 JTyWeqsdkz6Bd3Mer0vl5GbuRd4FHNEKuREypUk8XTJDC5gE68zNpQzwDj2hnam9Ow30
 WEohjyeaEX/tYbtjEMkgHqo8Mt2G5ijBEH8TXthmxHiahwTHkqtFUQmCuGyvxIXPhdRD
 DZo4MpwSedXBGn7w9nPknrg5pDuKae2X+zorJK7HyvQ2p4xWml8IVwIv/Y69Byr8lTb+
 Ajdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=i+LRMSNrj6ysytmm99Rc/BfD1o0cWeoJWbC6wV2pjKo=;
 b=NMW0eTBtqATucf/DzJwBlEL/97kFOmz73Vfj8dZ0jfrowdKXEDYR4Cj27t1ujtzxYB
 /u3Q7VmB1wMlyc2N4TAKPkUlbw/OAobkOi8Ioaz/SG/fPVkOYVcZrB3WtUTMnYVCiWCS
 KA28ZUUY0pWXU7SFR0pXrHpDu4RwgZXpc1Utbc7vy5bRlupg6eBwOpRvULIJQaUcUUUb
 /u/PTI22OP6kFIpp9emRjxqTBeCyQFXTdLA2anPX0XjV5E1EB6kInmcp9bPqGcMffx+9
 quwrevcoEkv/fID25MnIpnCHkpVnzSxJWcc3DQrnDcwFB9D4lK6RBqo/R36s4PEkr8Mm
 f7BQ==
X-Gm-Message-State: APjAAAWnwgK9edpWYaYK1TcRACLDlunAoTR3O8+SX6pOlwZFw1K5nQeQ
 ACGiYppGstV3JZCunD/vudM=
X-Google-Smtp-Source: APXvYqz112IoLRouv9ryA9wIoo9SK+U9diVimz4rMdCo6J+hyGg3GbdOEHSKOlp7hb6NH7QwtSqJVQ==
X-Received: by 2002:a17:902:e406:: with SMTP id
 ci6mr18220361plb.207.1566147588404; 
 Sun, 18 Aug 2019 09:59:48 -0700 (PDT)
Received: from deepa-ubuntu.lan (c-98-234-52-230.hsd1.ca.comcast.net.
 [98.234.52.230])
 by smtp.gmail.com with ESMTPSA id b136sm15732831pfb.73.2019.08.18.09.59.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 18 Aug 2019 09:59:48 -0700 (PDT)
From: Deepa Dinamani <deepa.kernel@gmail.com>
To: viro@zeniv.linux.org.uk,
	linux-kernel@vger.kernel.org
Date: Sun, 18 Aug 2019 09:58:04 -0700
Message-Id: <20190818165817.32634-8-deepa.kernel@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190818165817.32634-1-deepa.kernel@gmail.com>
References: <20190818165817.32634-1-deepa.kernel@gmail.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (deepa.kernel[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hzOX4-007Sqk-4H
Subject: [V9fs-developer] [PATCH v8 07/20] 9p: Fill min and max timestamps
 in sb
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
