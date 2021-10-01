Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B94541E7A2
	for <lists+v9fs-developer@lfdr.de>; Fri,  1 Oct 2021 08:35:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mWC8J-0001oW-TH; Fri, 01 Oct 2021 06:34:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <sohaib.amhmd@gmail.com>) id 1mWC8I-0001oO-Jx
 for v9fs-developer@lists.sourceforge.net; Fri, 01 Oct 2021 06:34:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mVXSClePRw23VTXz4l+/+e888Gbk2ilj3kNPqGf79zg=; b=b38yIcmfxwz3/yd+YptesBiy16
 vcick/qi0wAtF2B4yu/MDmHuQm8UnhSMS2hNfZZb0yVK9EuokQj1PYuJ1vYdDX7pcdXjA5548Q9KP
 BDYt3caNNCeWQKYDZJ2BatYFzWiYsLj0SML+7ed3pbwAvywITk+l/qNeENofA/9dP+Fw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=mVXSClePRw23VTXz4l+/+e888Gbk2ilj3kNPqGf79zg=; b=F
 rgr7R6r8ZmJCM+TYu9gG2zvd/1+h58u21KtV9TJLYMlnECe70DjqT9z/Wm/uiRPuXe+LabILC53LW
 3YuYUtlqzCAc9yExg+bNB72rRx7bbdmeFEj8hL2RpBkKkxkYfiemT8+DW8KFPqCnExWTLtJj6QWKk
 bddGciNaVcsNqhRg=;
Received: from mail-wm1-f48.google.com ([209.85.128.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mWC8H-0008Sd-HT
 for v9fs-developer@lists.sourceforge.net; Fri, 01 Oct 2021 06:34:58 +0000
Received: by mail-wm1-f48.google.com with SMTP id
 205-20020a1c01d6000000b0030cd17ffcf8so10312787wmb.3
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 30 Sep 2021 23:34:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mVXSClePRw23VTXz4l+/+e888Gbk2ilj3kNPqGf79zg=;
 b=MDRwr01PKBnlGhAI74nZeDDj4I9RjOtvQmDn2a3Y95SAQyJHltSclBMQ38Yyy6/P2q
 LbGp8sJ2Zswrmb1TYdF2WgVTHMcVOvmoZF5QbAQpRX+oa+2nvIHpcR7MmHcAbugLwGwm
 x5PDI2Tjy0vnf3DqqFNE9p13F6N8aXmYAx53dzTkWOso3uABiRbX/RNK5agbxyBZJ8sY
 lilDe9EUjkDHRG9tdBzxyDsYf6g1pEnKpM1WmQluZA2X/1yPPTA7LER9Dtl67QKXcuDm
 gNL8rfKUUtQx4cpnakb6glQ9frVrC+DsGbTl+MMr4tzDnWuN4cI6WsKUUVOTPmLrlQHe
 lVtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mVXSClePRw23VTXz4l+/+e888Gbk2ilj3kNPqGf79zg=;
 b=atxpyX2MZ0oQTU4oiA+Q6a47RxqruY3maqvvJO48f3musTIXAVmpXIUiZhjmDQXM+g
 JcCRcZY7di/v2283aqtW+u+5PHJ2dvQ+mvqi2tTpzPbEVTBUyDvHtm1nNl6RgyDeffge
 yMLmZyJ/WGzlzY21gSapNaC0n40BL8riijFeBrCjOURVIef/Dtgm9GlMJJW1ecZJMrHG
 CHVZVHIb+GlzOn8Y3Kn0pVwHic56TZWIMi2RO1cc3XziiJklV0s6dxxtKoJ4L1ATvpj0
 /J4BWXAFgiz1EDzQvhONbCoOFbCHHKJ7wMg2VVjQSIIG3eI/fRqK27nn+ji43wQn8uK/
 /fUg==
X-Gm-Message-State: AOAM530+sl/yqkrSVPMfXwDYApRUuEj/m1LjVv4/SKl5a9pJJ1B4QXII
 BBUNU+6k4lJ6tRXjKc7K7rQ=
X-Google-Smtp-Source: ABdhPJwIBNtxxWYUraabzlZULyiClnV/Z0SgsiR9OEFntO2XYi1c0esnzc07fTwqKM/G4m2QqdLfSg==
X-Received: by 2002:a1c:9a4f:: with SMTP id c76mr2760960wme.22.1633070091136; 
 Thu, 30 Sep 2021 23:34:51 -0700 (PDT)
Received: from localhost.localdomain ([197.49.49.194])
 by smtp.googlemail.com with ESMTPSA id o17sm5002032wrs.25.2021.09.30.23.34.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Sep 2021 23:34:50 -0700 (PDT)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
To: 
Date: Fri,  1 Oct 2021 08:34:44 +0200
Message-Id: <20211001063444.102330-1-sohaib.amhmd@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Signed-off-by: Sohaib Mohamed --- fs/9p/v9fs.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-) diff --git a/fs/9p/v9fs.h
 b/fs/9p/v9fs.h index 92124b235a6d..5dd031252236 100644 --- a/fs/9p/v9fs.h
 +++ b/fs/9p/v9fs.h @@ -135,8 +135,8 @@ static inline struct fscache_cookie
 *v9fs_inode_cookie(struct [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: checkpatch.pl]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sohaib.amhmd[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.48 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.48 listed in list.dnswl.org]
X-Headers-End: 1mWC8H-0008Sd-HT
Subject: [V9fs-developer] [PATCH] fs/9p: fix warnings found by checkpatch.pl
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
Cc: Latchesar Ionkov <lucho@ionkov.net>,
 Sohaib Mohamed <sohaib.amhmd@gmail.com>,
 Eric Van Hensbergen <ericvh@gmail.com>, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
---
 fs/9p/v9fs.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/fs/9p/v9fs.h b/fs/9p/v9fs.h
index 92124b235a6d..5dd031252236 100644
--- a/fs/9p/v9fs.h
+++ b/fs/9p/v9fs.h
@@ -135,8 +135,8 @@ static inline struct fscache_cookie *v9fs_inode_cookie(struct v9fs_inode *v9inod
 
 extern int v9fs_show_options(struct seq_file *m, struct dentry *root);
 
-struct p9_fid *v9fs_session_init(struct v9fs_session_info *, const char *,
-									char *);
+struct p9_fid *v9fs_session_init(struct v9fs_session_info *v9ses, const char
+		*dev_name, char *data);
 extern void v9fs_session_close(struct v9fs_session_info *v9ses);
 extern void v9fs_session_cancel(struct v9fs_session_info *v9ses);
 extern void v9fs_session_begin_cancel(struct v9fs_session_info *v9ses);
@@ -167,7 +167,7 @@ extern struct inode *v9fs_inode_from_fid_dotl(struct v9fs_session_info *v9ses,
 
 static inline struct v9fs_session_info *v9fs_inode2v9ses(struct inode *inode)
 {
-	return (inode->i_sb->s_fs_info);
+	return inode->i_sb->s_fs_info;
 }
 
 static inline struct v9fs_session_info *v9fs_dentry2v9ses(struct dentry *dentry)
-- 
2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
