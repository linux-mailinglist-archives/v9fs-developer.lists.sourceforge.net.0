Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC6D62E018
	for <lists+v9fs-developer@lfdr.de>; Thu, 17 Nov 2022 16:39:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ovgz3-0003mw-3M;
	Thu, 17 Nov 2022 15:39:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dhowells@redhat.com>) id 1ovgz2-0003mq-Db
 for v9fs-developer@lists.sourceforge.net;
 Thu, 17 Nov 2022 15:39:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dVlZMe9k6FGYu0ltCFG6EsUuMhhHTcljQyz0mONX3Sk=; b=jWJE17TsxTiHLufCPEUMG+ZtmI
 E9JDouHYydm42/9yPSDQR49u8b5orfY5jsossaAU3OfyR950D1xMLNHS1Gj6wPKDwfpIfLHGIiOah
 gYnNKdPfDna0BQjsS9lKFQiGVMz4GGyEmGAmInm94eXgAuQ3adEySUgDLp2zn3JjNzdk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Cc:To
 :From:Subject:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=dVlZMe9k6FGYu0ltCFG6EsUuMhhHTcljQyz0mONX3Sk=; b=f
 o1JWhlfFg87SyiphvfK1am2QR1z+V16WaHTiiDK7bd5La8nQUH7Wk9RI4B4X/M6AATOP+gam+02Rq
 qe+4A2ENdvtXGHVoqiPa1I5NHFfaQZRvgOxsDtaNzd2EDF/DcUByoIHSMWbb+CTvPAEnPT85no8t8
 ytWkaV3R1fNGoVs4=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ovgyy-00055P-4o for v9fs-developer@lists.sourceforge.net;
 Thu, 17 Nov 2022 15:39:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1668699549;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=dVlZMe9k6FGYu0ltCFG6EsUuMhhHTcljQyz0mONX3Sk=;
 b=GNw2TLtU/ZM/ldxxzq6tGwxhPNyXn1u/l03aU/ZzFVXLtuX/wEK8bsRNXcsoBLmSULidbc
 ibZtj8sSAYB1a7qzhQIZaY7EYQTmfAhPSxElmSfkwOBMMLTqH4R+lRpJXaqqBr9r5rn+Ln
 I9y0sURIiPMC28rMBmei6NK8FyUvpLw=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-94-A8eawBDmNG2DMMLhoJFQSQ-1; Thu, 17 Nov 2022 10:39:05 -0500
X-MC-Unique: A8eawBDmNG2DMMLhoJFQSQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
 [10.11.54.3])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2FBC585A59D;
 Thu, 17 Nov 2022 15:39:05 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.24])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C5FA6111E3ED;
 Thu, 17 Nov 2022 15:39:03 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: zhangpeng362@huawei.com, asmadeus@codewreck.org
Date: Thu, 17 Nov 2022 15:39:00 +0000
Message-ID: <166869954095.3793579.8500020902371015443.stgit@warthog.procyon.org.uk>
User-Agent: StGit/1.5
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: ZhangPeng <zhangpeng362@huawei.com> The type of
 a->key[0]
 is char in fscache_volume_same(). If the length of cache volume key is greater
 than 127, the value of a->key[0] is less than 0. In this case, klen becomes
 much larger than 255 af [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ovgyy-00055P-4o
Subject: [V9fs-developer] [PATCH] fscache: fix OOB Read in
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
Cc: lucho@ionkov.net, ericvh@gmail.com, linux_oss@crudebyte.com,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 dhowells@redhat.com, syzbot+a76f6a6e524cf2080aa3@syzkaller.appspotmail.com,
 linux-cachefs@redhat.com, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: ZhangPeng <zhangpeng362@huawei.com>

The type of a->key[0] is char in fscache_volume_same().  If the length of
cache volume key is greater than 127, the value of a->key[0] is less than
0.  In this case, klen becomes much larger than 255 after type conversion,
because the type of klen is size_t.  As a result, memcmp() is read out of
bounds.

This causes a slab-out-of-bounds Read in __fscache_acquire_volume(), as
reported by Syzbot.

Fix this by changing the type of the stored key to "u8 *" rather than "char
*" (it isn't a simple string anyway).  Also put in a check that the volume
name doesn't exceed NAME_MAX.

==================================================================
BUG: KASAN: slab-out-of-bounds in memcmp+0x16f/0x1c0 lib/string.c:757
Read of size 8 at addr ffff888016f3aa90 by task syz-executor344/3613

CPU: 0 PID: 3613 Comm: syz-executor344 Not tainted
6.0.0-rc2-syzkaller-00327-g8379c0b31fbc #0
Hardware name: Google Compute Engine/Google Compute Engine, BIOS
Google 07/22/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:106
 print_address_description mm/kasan/report.c:317 [inline]
 print_report.cold+0x2ba/0x719 mm/kasan/report.c:433
 kasan_report+0xb1/0x1e0 mm/kasan/report.c:495
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
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f7d5064b1d9
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 e1 14 00 00 90 48 89 f8 48 89
f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01
f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffd1700c028 EFLAGS: 00000246 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 00007ffd1700c060 RCX: 00007f7d5064b1d9
RDX: 0000000020000040 RSI: 0000000020000000 RDI: 0000000000000000
RBP: 0000000000000000 R08: 0000000020000200 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00000000000f4240
R13: 0000000000000000 R14: 00007ffd1700c04c R15: 00007ffd1700c050
==================================================================

Fixes: 62ab63352350 ("fscache: Implement volume registration")
Reported-by: syzbot+a76f6a6e524cf2080aa3@syzkaller.appspotmail.com
Signed-off-by: David Howells <dhowells@redhat.com>
cc: Peng Zhang <zhangpeng362@huawei.com>
cc: Dominique Martinet <asmadeus@codewreck.org>
cc: Jeff Layton <jlayton@kernel.org>
cc: v9fs-developer@lists.sourceforge.net
cc: linux-cachefs@redhat.com
Link: https://lore.kernel.org/r/Y3OH+Dmi0QIOK18n@codewreck.org/ # Zhang Peng's v1 fix
Link: https://lore.kernel.org/r/20221115140447.2971680-1-zhangpeng362@huawei.com/ # Zhang Peng's v2 fix
---

 fs/fscache/volume.c     |    7 +++++--
 include/linux/fscache.h |    2 +-
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




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
