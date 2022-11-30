Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 42CA663DFC9
	for <lists+v9fs-developer@lfdr.de>; Wed, 30 Nov 2022 19:50:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p0SAB-0001SJ-4y;
	Wed, 30 Nov 2022 18:50:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gregkh@linuxfoundation.org>) id 1p0SA9-0001SC-AT
 for v9fs-developer@lists.sourceforge.net;
 Wed, 30 Nov 2022 18:50:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lRI6UbmUptVao3qdwFc/GHCynf5jPOygPmSuT+7BOIY=; b=NwyiBVOY/YrLTf9fze+wNyfibD
 ZapJ+NVHut92OWN5nBAamw0RlkJmBR9hm3zNaGVK75W5yoP0CCU7m4MiFnr0Mp0BRK+3LOH9VGD4J
 BMZZqgYIuHje3poTyEzaDsI1CekC/7SQ8qtSmlRQhzp7sddA7ZE7t4zznXpwrSeQWk+w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lRI6UbmUptVao3qdwFc/GHCynf5jPOygPmSuT+7BOIY=; b=B0zma1T2CuNaZKI4NQz1yzTXc/
 IgGOu9tfCfV6NTVW9R7PbILS6LsAkAD3GyW+83U7rimRynDwOpM5mqo3TfdnwiEaWTyZmcamy0ou7
 Z3fpQhGs7rafPv1f2SZuMH5ztCdqNO/AJqQalyjCa4xHqklCd6p7MgZpJGNkFV2/jy5s=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p0SA4-001f2m-7n for v9fs-developer@lists.sourceforge.net;
 Wed, 30 Nov 2022 18:50:29 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id CFA9B61D73;
 Wed, 30 Nov 2022 18:50:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8531C433C1;
 Wed, 30 Nov 2022 18:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1669834218;
 bh=xMJkzBIVWQrmtu7hgyrOOw+KdBPXmnY7o6g9MkAUpJY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QgznraUaMxYNhzGqWQJjwpbti5cy/UfbYNx/TQ593ypSfiFk8Xwf8kHfv+gV+IsPV
 nzroqst4lVZXTJDYZ190pOSAa5tkLY8lXPwupBtaCApV7GB4FHvHnagwi4Pa7DBWwI
 838xOsFKn/SX5EiaITL3WCQASIQHWg8ZRF/vJqzg=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: stable@vger.kernel.org
Date: Wed, 30 Nov 2022 19:22:10 +0100
Message-Id: <20221130180547.424547936@linuxfoundation.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221130180544.105550592@linuxfoundation.org>
References: <20221130180544.105550592@linuxfoundation.org>
User-Agent: quilt/0.67
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: David Howells <dhowells@redhat.com> [ Upstream commit
 9f0933ac026f7e54fe096797af9de20724e79097 ] The type of a->key[0] is char
 in fscache_volume_same(). If the length of cache volume key is greater than
 127, the value of a->key[0] is less than 0. In this case, klen becomes much
 larger than 255 af [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linuxfoundation.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1p0SA4-001f2m-7n
Subject: [V9fs-developer] [PATCH 6.0 145/289] fscache: fix OOB Read in
 __fscache_acquire_volume
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
Cc: Sasha Levin <sashal@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jeff Layton <jlayton@kernel.org>, patches@lists.linux.dev,
 David Howells <dhowells@redhat.com>,
 syzbot+a76f6a6e524cf2080aa3@syzkaller.appspotmail.com,
 linux-cachefs@redhat.com, Zhang Peng <zhangpeng362@huawei.com>,
 Jingbo Xu <jefflexu@linux.alibaba.com>, v9fs-developer@lists.sourceforge.net,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: David Howells <dhowells@redhat.com>

[ Upstream commit 9f0933ac026f7e54fe096797af9de20724e79097 ]

The type of a->key[0] is char in fscache_volume_same().  If the length
of cache volume key is greater than 127, the value of a->key[0] is less
than 0.  In this case, klen becomes much larger than 255 after type
conversion, because the type of klen is size_t.  As a result, memcmp()
is read out of bounds.

This causes a slab-out-of-bounds Read in __fscache_acquire_volume(), as
reported by Syzbot.

Fix this by changing the type of the stored key to "u8 *" rather than
"char *" (it isn't a simple string anyway).  Also put in a check that
the volume name doesn't exceed NAME_MAX.

  BUG: KASAN: slab-out-of-bounds in memcmp+0x16f/0x1c0 lib/string.c:757
  Read of size 8 at addr ffff888016f3aa90 by task syz-executor344/3613
  Call Trace:
   memcmp+0x16f/0x1c0 lib/string.c:757
   memcmp include/linux/fortify-string.h:420 [inline]
   fscache_volume_same fs/fscache/volume.c:133 [inline]
   fscache_hash_volume fs/fscache/volume.c:171 [inline]
   __fscache_acquire_volume+0x76c/0x1080 fs/fscache/volume.c:328
   fscache_acquire_volume include/linux/fscache.h:204 [inline]
   v9fs_cache_session_get_cookie+0x143/0x240 fs/9p/cache.c:34
   v9fs_session_init+0x1166/0x1810 fs/9p/v9fs.c:473
   v9fs_mount+0xba/0xc90 fs/9p/vfs_super.c:126
   legacy_get_tree+0x105/0x220 fs/fs_context.c:610
   vfs_get_tree+0x89/0x2f0 fs/super.c:1530
   do_new_mount fs/namespace.c:3040 [inline]
   path_mount+0x1326/0x1e20 fs/namespace.c:3370
   do_mount fs/namespace.c:3383 [inline]
   __do_sys_mount fs/namespace.c:3591 [inline]
   __se_sys_mount fs/namespace.c:3568 [inline]
   __x64_sys_mount+0x27f/0x300 fs/namespace.c:3568

Fixes: 62ab63352350 ("fscache: Implement volume registration")
Reported-by: syzbot+a76f6a6e524cf2080aa3@syzkaller.appspotmail.com
Signed-off-by: David Howells <dhowells@redhat.com>
Reviewed-by: Zhang Peng <zhangpeng362@huawei.com>
Reviewed-by: Jingbo Xu <jefflexu@linux.alibaba.com>
cc: Dominique Martinet <asmadeus@codewreck.org>
cc: Jeff Layton <jlayton@kernel.org>
cc: v9fs-developer@lists.sourceforge.net
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/Y3OH+Dmi0QIOK18n@codewreck.org/ # Zhang Peng's v1 fix
Link: https://lore.kernel.org/r/20221115140447.2971680-1-zhangpeng362@huawei.com/ # Zhang Peng's v2 fix
Link: https://lore.kernel.org/r/166869954095.3793579.8500020902371015443.stgit@warthog.procyon.org.uk/ # v1
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/fscache/volume.c     | 7 +++++--
 include/linux/fscache.h | 2 +-
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/fs/fscache/volume.c b/fs/fscache/volume.c
index a058e0136bfe..ab8ceddf9efa 100644
--- a/fs/fscache/volume.c
+++ b/fs/fscache/volume.c
@@ -203,7 +203,11 @@ static struct fscache_volume *fscache_alloc_volume(const char *volume_key,
 	struct fscache_volume *volume;
 	struct fscache_cache *cache;
 	size_t klen, hlen;
-	char *key;
+	u8 *key;
+
+	klen = strlen(volume_key);
+	if (klen > NAME_MAX)
+		return NULL;
 
 	if (!coherency_data)
 		coherency_len = 0;
@@ -229,7 +233,6 @@ static struct fscache_volume *fscache_alloc_volume(const char *volume_key,
 	/* Stick the length on the front of the key and pad it out to make
 	 * hashing easier.
 	 */
-	klen = strlen(volume_key);
 	hlen = round_up(1 + klen + 1, sizeof(__le32));
 	key = kzalloc(hlen, GFP_KERNEL);
 	if (!key)
diff --git a/include/linux/fscache.h b/include/linux/fscache.h
index 36e5dd84cf59..8e312c8323a8 100644
--- a/include/linux/fscache.h
+++ b/include/linux/fscache.h
@@ -75,7 +75,7 @@ struct fscache_volume {
 	atomic_t			n_accesses;	/* Number of cache accesses in progress */
 	unsigned int			debug_id;
 	unsigned int			key_hash;	/* Hash of key string */
-	char				*key;		/* Volume ID, eg. "afs@example.com@1234" */
+	u8				*key;		/* Volume ID, eg. "afs@example.com@1234" */
 	struct list_head		proc_link;	/* Link in /proc/fs/fscache/volumes */
 	struct hlist_bl_node		hash_link;	/* Link in hash table */
 	struct work_struct		work;
-- 
2.35.1





_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
