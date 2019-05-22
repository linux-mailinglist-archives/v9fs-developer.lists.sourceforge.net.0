Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8764826AAE
	for <lists+v9fs-developer@lfdr.de>; Wed, 22 May 2019 21:17:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hTWjd-0003Ca-Iq; Wed, 22 May 2019 19:17:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux.bhar@gmail.com>) id 1hTWjc-0003CS-0X
 for v9fs-developer@lists.sourceforge.net; Wed, 22 May 2019 19:17:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xjRRu/ivm7yiZ1o3qLhgJ4zcxl0tGsUkhCktbB4oPNk=; b=SGK/T/0u9n6ZHK1X6wEIB8IAmp
 gLSPsApdJzoAHApRwIM9FS7TKq7+rKHg8NNb8digElOM8xsKDmI5k2oQd+Uc9SsvCrxKUoj353zF2
 fynBAkbX5i4DvAQKip2npeuaAUkBbuJYvhMmxJwxsDdCUscbZcqK/hAteyEY+rjwIupc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=xjRRu/ivm7yiZ1o3qLhgJ4zcxl0tGsUkhCktbB4oPNk=; b=A
 DjbKOG/LAkNFKML/Tgcoryfg1dPlzHFi0bk2o/b5AtLIq0DxEM0TlLH48/3kQx8Hk+L8klrrtd2EO
 Py+kv3GtQVNX1A/HSYlGGaHXJsjJE+v3LOl0cu4e8gNsfcbq3XJZ6Spc6X75qLocJFgfmP1+sdZwC
 FsXm3cEEu4yPRIuM=;
Received: from mail-pl1-f194.google.com ([209.85.214.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hTWja-000dWu-IO
 for v9fs-developer@lists.sourceforge.net; Wed, 22 May 2019 19:17:07 +0000
Received: by mail-pl1-f194.google.com with SMTP id gn7so1515893plb.10
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 22 May 2019 12:17:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=xjRRu/ivm7yiZ1o3qLhgJ4zcxl0tGsUkhCktbB4oPNk=;
 b=kmr3ha07KpLkWeRssggZMzNfIFypCwymg1J4nTFghrFy8RSWvb3aiGxfhwvabLkGM+
 U1zIRTCWWooqE6joJmhCmD9bcMLrg4tJ3Feh87C6AYzeItu0W+3nJFE59XHF/M+mk/Ff
 s6zQOjHxfMsMPrYqQmVzLCH5g0jfXAX3IfYnQfMWZeHWM3rNVJfh3UnMb5ump5GBBLJS
 jRUbPqFdOYrutU6esuhD6YokgysymCKp9gN/2lXVmMr6Ea2T4e9+wQIoh8pd9mxhEZcB
 2Pgnr2z/Cq5ZbP7cmsoDiY4RFV4NTDqjgV8u35XKsria13ZFThv0oDq6Q80bkJl8M8Iv
 o4zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=xjRRu/ivm7yiZ1o3qLhgJ4zcxl0tGsUkhCktbB4oPNk=;
 b=rD5bwMrqj5N33UU8TF1sk4DzbTHuTB3FzXksaKSvm3UpO1uXiXB8Qu6onX2+TESsrz
 ahT1N+00mowZ/1To6C+GpEPzzPu1slgCa3QBryWcFGq5mradNKoF8iTZRxNakbNaEGSI
 WRtH+vtDrPW9tq+Eyfi0Tgvnqjb27SevtBxgUAe/oZuTDvtALdr/AZo7fUzareHIrDyY
 LX7LJQ0rNLwy/TRy+ttyzruFDP7amBSeKtm5bFmQJEO5yZl/Fty2qjcLIgr01QEebj+c
 SHlOpzVeCcjl56yldjo+j/eJppjCN7Rx0En+ak1DVmKQx43IeA2+Chr7d5jPsYy/9QU5
 BRXg==
X-Gm-Message-State: APjAAAW54Ahal83qoYlZb7BKJ14Vt89J92rwYdumpvzDwCZyKOkDLt0b
 WEJnquzYtx6pYnKRSZyIT2g=
X-Google-Smtp-Source: APXvYqxL3L0PS2t9QZj3d3yI+U1/rV4N9iz0LNF8aUN431cwGdSl5qdl5xQOwa0BHj4AsTmmTEFNmQ==
X-Received: by 2002:a17:902:aa97:: with SMTP id
 d23mr92521131plr.313.1558552620844; 
 Wed, 22 May 2019 12:17:00 -0700 (PDT)
Received: from bharath12345-Inspiron-5559 ([103.110.42.33])
 by smtp.gmail.com with ESMTPSA id l68sm38347744pfb.20.2019.05.22.12.16.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 12:17:00 -0700 (PDT)
Date: Thu, 23 May 2019 00:46:55 +0530
From: Bharath Vedartham <linux.bhar@gmail.com>
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org
Message-ID: <20190522191655.GA4657@bharath12345-Inspiron-5559>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (linux.bhar[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: appspotmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1hTWja-000dWu-IO
Subject: [V9fs-developer] [PATCH] 9p/cache.c: Fix memory leak in
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
Cc: v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

v9fs_cache_session_get_cookie assigns a random cachetag to
v9ses->cachetag, if the cachetag is not assigned previously.

v9fs_random_cachetag allocates memory to v9ses->cachetag with kmalloc
and uses scnprintf to fill it up with a cachetag.

But if scnprintf fails, v9ses->cachetag is not freed in the current code causing a memory leak.

Fix this by freeing v9ses->cachetag it v9fs_random_cachetag fails.

This was reported by syzbot, the link to the report is below:
https://syzkaller.appspot.com/bug?id=f012bdf297a7a4c860c38a88b44fbee43fd9bbf3

Reported-by: syzbot+3a030a73b6c1e9833815@syzkaller.appspotmail.com 
Signed-off-by: Bharath Vedartham <linux.bhar@gmail.com>
---
 fs/9p/cache.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/9p/cache.c b/fs/9p/cache.c
index 9eb3470..4463b91 100644
--- a/fs/9p/cache.c
+++ b/fs/9p/cache.c
@@ -66,6 +66,7 @@ void v9fs_cache_session_get_cookie(struct v9fs_session_info *v9ses)
 	if (!v9ses->cachetag) {
 		if (v9fs_random_cachetag(v9ses) < 0) {
 			v9ses->fscache = NULL;
+			kfree(v9ses->cachetag);
 			return;
 		}
 	}
-- 
2.7.4



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
