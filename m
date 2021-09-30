Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ED81141E358
	for <lists+v9fs-developer@lfdr.de>; Thu, 30 Sep 2021 23:25:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mW3YF-0007j8-U0; Thu, 30 Sep 2021 21:25:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sohaib.amhmd@gmail.com>) id 1mW3YE-0007j2-8p
 for v9fs-developer@lists.sourceforge.net; Thu, 30 Sep 2021 21:25:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FttxoUmTGZqK8PzCdxay9BYvxmAzHNrF7lkmGzarzCY=; b=P3KDmq2S1ch+xAZ7MzhqcT2J1y
 RlSv0unaVp/vOwhwdJeTfc3e2jeoLdR13nH6J/+BtifQbTCfR2jS3LafIzD+/Yyu6WfIs3jPAW+VN
 L05cVG0uuF95v8QW+ShyRGCwLlJAy67IdXNYfTSSGIZthuNty30kr3adTUZOVfkIN7U4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=FttxoUmTGZqK8PzCdxay9BYvxmAzHNrF7lkmGzarzCY=; b=j
 xBt6mJrq0AoO+wob7pYE1CL+enmrIhRKw1NmGPFzSWaI5hA3UVm7a3hxMk67v3IRa0unqYPWfY2M6
 JGq1oE1aQaHNaprPoSjrePS2rN9CjA8rN+vDXD0oCQfcuvSFDOF3yzDdufhhtueMdniU1Q00dvJWv
 O4jEy2J1Wc+XL4ls=;
Received: from mail-wm1-f41.google.com ([209.85.128.41])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mW3Y9-00EYub-Qi
 for v9fs-developer@lists.sourceforge.net; Thu, 30 Sep 2021 21:25:10 +0000
Received: by mail-wm1-f41.google.com with SMTP id
 b192-20020a1c1bc9000000b0030cfaf18864so5310977wmb.4
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 30 Sep 2021 14:25:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FttxoUmTGZqK8PzCdxay9BYvxmAzHNrF7lkmGzarzCY=;
 b=njxNcCgjyJQUMrrZRbJiu4qjthHCE/FIowDL5hOf20zwioPiL+Kay3WRwdFuOy5sRM
 cVnM/19xvaZMY2Mt3iYhMU8yKx4hQN4HcqdOkp2NUI32lBjUbKrgeX2C1w5yhmwnQ6Yr
 NIucB+Yw82guAGarydkwH+87yVfZtlTJGvQjHfL/MHubD2WSN2gRA+aBOyVTzLGgQBSl
 POrGXq9WV1KTJkdPmR1iM0ihNSE3qlWvmah2N9sCzzJKv8eQx9cSxj4kbUNAZwhXhWh8
 fzzhl5C/wI3xpDCKi7mPo6N2rJKTch0nkTgl38Rh565G1a7e6rh1OTs08lK+iDfYIxn2
 zK8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FttxoUmTGZqK8PzCdxay9BYvxmAzHNrF7lkmGzarzCY=;
 b=KKUF+5vt1/0LFG+gtM+AfYPQbaR6ibxFdMzV8xtpPA6gi7kzoYKBU5YKGeCOeYyGUp
 1jIqjD/53ELcxPHitZBpSEgpnhdSbTsH3yONfQHBR7+m+Ivl+7XAOWPoXzP5Iti9Y8o2
 tMiDobnhW2LnfI2gsUVvwtiXw8p+SZFsgjao3nTMoJxyWuNdrdX6kcb69v7u/zqotLqb
 DEG0Z0HwYVd0rRySLWWSLMV8a80TPrdpWfCRqUAszbxensI13E4ZK2zHx6pfU86rItst
 35Z/EcbF/ZG6wn5sFVw4NinYKu0oHlVDnLqk9YvGAoATE6kUzuxuxATaFQu0qQ5C/dNP
 76Bg==
X-Gm-Message-State: AOAM531YG7DwruFg55tDUDcU1yEMYI1TcY7PmQSqv09l1CTNvSVYi19M
 50uIJ9nGqJaX8i70X0Sgr78Vb7r79pE=
X-Google-Smtp-Source: ABdhPJxjifCgfgKQ8tqrkbM+P7BJCC84Al1vDEVZT1tXPJAEeGUp9hlyxqR+ZGc4QWiKwxxmTtg90A==
X-Received: by 2002:a05:600c:198c:: with SMTP id
 t12mr1206072wmq.128.1633037099136; 
 Thu, 30 Sep 2021 14:24:59 -0700 (PDT)
Received: from localhost.localdomain ([197.49.49.194])
 by smtp.googlemail.com with ESMTPSA id f19sm4055478wmf.11.2021.09.30.14.24.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Sep 2021 14:24:58 -0700 (PDT)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
To: 
Date: Thu, 30 Sep 2021 23:24:54 +0200
Message-Id: <20210930212455.30047-1-sohaib.amhmd@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Warnings found by checkpatch.pl Signed-off-by: Sohaib Mohamed
 --- fs/9p/cache.h | 11 +++++------ 1 file changed, 5 insertions(+),
 6 deletions(-)
 diff --git a/fs/9p/cache.h b/fs/9p/cache.h index 00f107af443e..14fd222352f3
 100644 --- a/fs/9p/cache.h +++ b/fs/9p/cache.h @@ -34,7 +34,7 @@ extern int
 __v9fs_readpage_from_fscache(struct inode *inode [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.41 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: checkpatch.pl]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sohaib.amhmd[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.41 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mW3Y9-00EYub-Qi
Subject: [V9fs-developer] [PATCH] fs: 9p: cache.h: cleanup some format
 warning
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

Warnings found by checkpatch.pl

Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
---
 fs/9p/cache.h | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/fs/9p/cache.h b/fs/9p/cache.h
index 00f107af443e..14fd222352f3 100644
--- a/fs/9p/cache.h
+++ b/fs/9p/cache.h
@@ -34,7 +34,7 @@ extern int __v9fs_readpage_from_fscache(struct inode *inode,
 extern int __v9fs_readpages_from_fscache(struct inode *inode,
 					 struct address_space *mapping,
 					 struct list_head *pages,
-					 unsigned *nr_pages);
+					 unsigned int *nr_pages);
 extern void __v9fs_readpage_to_fscache(struct inode *inode, struct page *page);
 extern void __v9fs_fscache_wait_on_page_write(struct inode *inode,
 					      struct page *page);
@@ -59,7 +59,7 @@ static inline int v9fs_readpage_from_fscache(struct inode *inode,
 static inline int v9fs_readpages_from_fscache(struct inode *inode,
 					      struct address_space *mapping,
 					      struct list_head *pages,
-					      unsigned *nr_pages)
+					      unsigned int *nr_pages)
 {
 	return __v9fs_readpages_from_fscache(inode, mapping, pages,
 					     nr_pages);
@@ -75,6 +75,7 @@ static inline void v9fs_readpage_to_fscache(struct inode *inode,
 static inline void v9fs_uncache_page(struct inode *inode, struct page *page)
 {
 	struct v9fs_inode *v9inode = V9FS_I(inode);
+
 	fscache_uncache_page(v9inode->fscache, page);
 	BUG_ON(PageFsCache(page));
 }
@@ -115,7 +116,7 @@ static inline int v9fs_readpage_from_fscache(struct inode *inode,
 static inline int v9fs_readpages_from_fscache(struct inode *inode,
 					      struct address_space *mapping,
 					      struct list_head *pages,
-					      unsigned *nr_pages)
+					      unsigned int *nr_pages)
 {
 	return -ENOBUFS;
 }
@@ -129,9 +130,7 @@ static inline void v9fs_uncache_page(struct inode *inode, struct page *page)
 
 static inline void v9fs_fscache_wait_on_page_write(struct inode *inode,
 						   struct page *page)
-{
-	return;
-}
+{}
 
 #endif /* CONFIG_9P_FSCACHE */
 #endif /* _9P_CACHE_H */
-- 
2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
