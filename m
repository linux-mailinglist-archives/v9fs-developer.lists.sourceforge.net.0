Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D69B028455
	for <lists+v9fs-developer@lfdr.de>; Thu, 23 May 2019 18:56:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hTr18-00085T-BN; Thu, 23 May 2019 16:56:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux.bhar@gmail.com>) id 1hTr16-00085H-Sm
 for v9fs-developer@lists.sourceforge.net; Thu, 23 May 2019 16:56:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hM/FpdNSFBUxwsc/bH6HaYb2mRTwEqnM6q+pG5Opaiw=; b=FkKBQxdnNgBvHO/fqzEYgb1oke
 D+3TGky1JJQkWh9JsAp95alOunJDXhhAYhOz7ExuyiKuXy/cl8hV2xq7FZ/No0kMMR9tYAeJalBTD
 Kjux5jAL1gkJM4q7+BRmtDWKcWDVa1VJq0OcExT/oV9SLXim6AVew1pSYcuEO4pGiVTg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hM/FpdNSFBUxwsc/bH6HaYb2mRTwEqnM6q+pG5Opaiw=; b=M
 x902ffEJ16fAdMVdDJnNOvIPwgWckEr7qC+3kHF80NYoVTn8Rm9DqliM4yGlzDRqvcbnxR/EUOtaB
 ULwjLHIcVSrhpc4mR9L2nvtHZ56GQ9rn6nGGDjQDIFCL8JxoII3kGM4RO4bkrU3rUcsvSAHb1NNgB
 3v7tTzIPHR7dmAJI=;
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hTr15-003A66-MR
 for v9fs-developer@lists.sourceforge.net; Thu, 23 May 2019 16:56:32 +0000
Received: by mail-pf1-f194.google.com with SMTP id z26so3568268pfg.6
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 23 May 2019 09:56:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=hM/FpdNSFBUxwsc/bH6HaYb2mRTwEqnM6q+pG5Opaiw=;
 b=QKjKEJAP/SopoWFpkRrkNWKTted6q6ovKsHuS/T5GyygadbPTQhqDN1eUDmUZY6nbP
 iNDTVxSZ0IVYxCNniNsid4BDCKsxfctE/l0uywvmxJS/9MiQLcQWd8JjktJ1ldZthUB6
 nrq7LNR++REjxMPKnL2efXJj+/16tP6rcfgBRp/cK13NJulzZGqk2L0K0hEmRQmu92Cz
 YwosRU/9z+rpRdt7846q0u44RuMtl0Z9qRHPMLQ1iMtX70txwdA4RBJQIFp8rGSq/zh6
 rF4tyGCFMlq752MeSgMLyxLCQbSkA9ceF/0iC/u49Ny/IL75STLonSu2USSX14ZT+bdt
 sqLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=hM/FpdNSFBUxwsc/bH6HaYb2mRTwEqnM6q+pG5Opaiw=;
 b=TwztBzMVIkzV4PBNHxrLy8B1EirAOeqYE582Mpqz+Ow/RG/pAJR0xbHW9nKeBC3TI0
 gaOp1qlCtdpmYTsLMqoHUsSdGu3zA0tVtUN+Ldak8msVAJpIvoVgagvJs9eTgg+ketVl
 rEbFIRnYXhSHY1LxdLy6o/LqiXoKsppXLjVM/pu1ySL11Gq+KyUNZwl0F1bdUmG9Gr0I
 c/sfGeh0E2YSn437botN0HPtM08Sxjp91nIsRsjzrfa0aCK3d4AihjG5T/Td/aY3WRCB
 KrkL8NIaeXpEhDWzBbjPRSypfABlFftrSZvSaeilO49DN9lJPhJkpKHkGXW5o3HUyhgr
 wxfA==
X-Gm-Message-State: APjAAAXgcTHNqMtRkE8hm5gEkG7XXcCJMWYFlzb8575n7xhIBBtVlyJX
 fGjCc5vrn1atCtG7bxUl7hQ=
X-Google-Smtp-Source: APXvYqyafcu/mWXpHJw/TN+hfAfMBqUTLhHre/3ZPW/vDgWJUo0VN4xy4pAikHdSA0Un9QN7TomKsg==
X-Received: by 2002:aa7:87c3:: with SMTP id i3mr103598908pfo.85.1558630585808; 
 Thu, 23 May 2019 09:56:25 -0700 (PDT)
Received: from bharath12345-Inspiron-5559 ([103.110.42.33])
 by smtp.gmail.com with ESMTPSA id t10sm6687147pfe.2.2019.05.23.09.56.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 09:56:25 -0700 (PDT)
Date: Thu, 23 May 2019 22:26:20 +0530
From: Bharath Vedartham <linux.bhar@gmail.com>
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org
Message-ID: <20190523165619.GA4209@bharath12345-Inspiron-5559>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (linux.bhar[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hTr15-003A66-MR
Subject: [V9fs-developer] [PATCH] 9p/vfs_super.c: Remove unused parameter
 data in v9fs_fill_super
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

v9fs_fill_super has a param 'void *data' which is unused in the
function.

This patch removes the 'void *data' param in v9fs_fill_super and changes
the parameters in all function calls of v9fs_fill_super.

Signed-off-by: Bharath Vedartham <linux.bhar@gmail.com>
---
 fs/9p/vfs_super.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/9p/vfs_super.c b/fs/9p/vfs_super.c
index 67d1b96..00f2078 100644
--- a/fs/9p/vfs_super.c
+++ b/fs/9p/vfs_super.c
@@ -73,7 +73,7 @@ static int v9fs_set_super(struct super_block *s, void *data)
 
 static int
 v9fs_fill_super(struct super_block *sb, struct v9fs_session_info *v9ses,
-		int flags, void *data)
+		int flags)
 {
 	int ret;
 
@@ -143,7 +143,7 @@ static struct dentry *v9fs_mount(struct file_system_type *fs_type, int flags,
 		retval = PTR_ERR(sb);
 		goto clunk_fid;
 	}
-	retval = v9fs_fill_super(sb, v9ses, flags, data);
+	retval = v9fs_fill_super(sb, v9ses, flags);
 	if (retval)
 		goto release_sb;
 
-- 
2.7.4



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
