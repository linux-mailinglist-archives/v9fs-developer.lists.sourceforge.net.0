Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C038026DEF
	for <lists+v9fs-developer@lfdr.de>; Wed, 22 May 2019 21:45:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hTXB8-0000nm-TE; Wed, 22 May 2019 19:45:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux.bhar@gmail.com>) id 1hTXB7-0000nJ-Pj
 for v9fs-developer@lists.sourceforge.net; Wed, 22 May 2019 19:45:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xu8Xfz1//w2ZzNsfNUbcmqz00XlQNm2CX6twe7k5oB4=; b=jnVL0GNcxHi82VIqmbqE000/SF
 BlnnTiTCHx7q/ZQ1lfBg2w1/yR+mWxaYPZZytY22TQfi7gWfnV1m82XSZXXV7meLkrpomnDQMdHYL
 Nbu6TZtEmgVitwNjpV+tSPbgFME5FA3ljmc5iYw8PxUftmnx8QYMxDJnZafQMRiDar+I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=xu8Xfz1//w2ZzNsfNUbcmqz00XlQNm2CX6twe7k5oB4=; b=E
 mte4Q5VqQHzxL3E9FOZsZ2/5Mull51F/mTtbiE1VB0lPQiCdhVJGZ7jF3IV5vRw6DStbrV2IiY5ZL
 t0rOrTTwzwoWlDRZuTW43Nm5gI/FpLh75U0CzwboOB6iqSGK7YWZTlhgsGYdpvQQoPm/TqBn0UZqf
 E+yC+4v3TpBJOMiE=;
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hTXB6-000hdx-8E
 for v9fs-developer@lists.sourceforge.net; Wed, 22 May 2019 19:45:33 +0000
Received: by mail-pl1-f193.google.com with SMTP id g21so1574019plq.0
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 22 May 2019 12:45:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=xu8Xfz1//w2ZzNsfNUbcmqz00XlQNm2CX6twe7k5oB4=;
 b=SpL/qYsNz/7q6yoXxeofhfKWNOeNxFM1wJhkF4xMyF+ND93xkfki/hHZGqtDiecjIq
 y3DDItEF+vWU5Weezwz+uASTJ8v8ibnAJOLjqf6UvHIEYtY0/dADtQvD23ldraYPKZw1
 Rm32W/+3NgSUAGEFyEp4C3PD7eqEaUlg1i89S+la0C5kj9IP+2anERQj9IHdC2nO9ReQ
 m+fvLw318OegoJ+pxP0vvH6oB5+WGfztfIHn8uOG+7E4tIqcstc2paaL7/mnukMkj25Q
 KodbhaLgeJxTW1sY7k3WHz1a8iyZJZKmla7Fg/HdyUYH6LNJL0dKVQix6snM7q/fsMbm
 jxvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=xu8Xfz1//w2ZzNsfNUbcmqz00XlQNm2CX6twe7k5oB4=;
 b=lAJWR9GVuKdL1jretQG4M85CH1sgFHrRwYQqKg445mmzvpkkPgT7PnIOAd86L/nkzY
 lOkd56zokO1jt8L6m56zQ4uuvbzXnWzpsAIMIrTVctJ1Q49EYNGUIZVeVwgEz8grFKEa
 n4i1JA3UkbDcpzRUypV+5e8pbwHrThBEwajUNpmqLVjtl9dIfLPN12PEr0sLwq9iWy5W
 aGRNgp3MiE9f7X3xzeWubanQgSBHGuGKZgtcp317jNw/7ZkTIBfBT2UfRRa1FZW1BsjX
 43ZTK3pq94RVzerXCJRoTinG6SQBu1KMRGPo7iweds7AK9iY67i4EKruF+eCSx9DqjMy
 /JhA==
X-Gm-Message-State: APjAAAViXxykH8p3mmlCobRss6DeMDR5LqBQE4mjoIgxPdwk66hdnI5o
 l5tUEbpZUbmgOsvSKQYVaE0=
X-Google-Smtp-Source: APXvYqxJl7eiZaUNXlyUGE1f1J9ER3gIBLLVf+MUPh3VvOxDZh0pS0eJUedewgdXa8RgYUhJuy0rkA==
X-Received: by 2002:a17:902:b095:: with SMTP id
 p21mr40903202plr.270.1558554326511; 
 Wed, 22 May 2019 12:45:26 -0700 (PDT)
Received: from bharath12345-Inspiron-5559 ([103.110.42.31])
 by smtp.gmail.com with ESMTPSA id v16sm11490421pfc.26.2019.05.22.12.45.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 12:45:25 -0700 (PDT)
Date: Thu, 23 May 2019 01:15:19 +0530
From: Bharath Vedartham <linux.bhar@gmail.com>
To: ericvh@gmail.com, asmadeus@codewreck.org, lucho@ionkov.net
Message-ID: <20190522194519.GA5313@bharath12345-Inspiron-5559>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: appspotmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (linux.bhar[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1hTXB6-000hdx-8E
Subject: [V9fs-developer] [PATCH v2] 9p/cache.c: Fix memory leak in
 v9fs_cache_session_get_cookie
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
Cc: linux.bhar@gmail.com, v9fs-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

v9fs_cache_session_get_cookie assigns a random cachetag to v9ses->cachetag,
if the cachetag is not assigned previously.

v9fs_random_cachetag allocates memory to v9ses->cachetag with kmalloc and uses
scnprintf to fill it up with a cachetag.

But if scnprintf fails, v9ses->cachetag is not freed in the current
code causing a memory leak.

Fix this by freeing v9ses->cachetag it v9fs_random_cachetag fails.

This was reported by syzbot, the link to the report is below:
https://syzkaller.appspot.com/bug?id=f012bdf297a7a4c860c38a88b44fbee43fd9bbf3

Reported-by: syzbot+3a030a73b6c1e9833815@syzkaller.appspotmail.com
Signed-off-by: Bharath Vedartham <linux.bhar@gmail.com>

---
Changes since v2
	- Made v9ses->cachetag NULL after freeing to avoid any
	  side effects.
---
 fs/9p/cache.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/9p/cache.c b/fs/9p/cache.c
index 9eb3470..baf72da 100644
--- a/fs/9p/cache.c
+++ b/fs/9p/cache.c
@@ -66,6 +66,8 @@ void v9fs_cache_session_get_cookie(struct v9fs_session_info *v9ses)
 	if (!v9ses->cachetag) {
 		if (v9fs_random_cachetag(v9ses) < 0) {
 			v9ses->fscache = NULL;
+			kfree(v9ses->cachetag);
+			v9ses->cachetag = NULL; 
 			return;
 		}
 	}
-- 
2.7.4



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
