Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8F062AE15
	for <lists+v9fs-developer@lfdr.de>; Tue, 15 Nov 2022 23:17:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ov4Eo-0002dF-Cl;
	Tue, 15 Nov 2022 22:17:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1ov4Em-0002d0-TC
 for v9fs-developer@lists.sourceforge.net;
 Tue, 15 Nov 2022 22:17:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OZL5LNQ/qoo+PMydbsm4DsIY24R1XznjxSjLJYR8vVM=; b=CIFs9yU/3wqovb8Gk3oXeCCPIw
 8HyjYlWE1g18/m7PXXFFaLv+xu8m8sNw1vKV00FnDDRX9M46uL3O6aIv1qWyeQfNaNIU1xUZap9qf
 S/ebIcPB7ldRdhSr2KrO+QZP8fzLoxd4BBmwV73ykMEzmyjiG6xkeiFAjufQVl/gPLNs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OZL5LNQ/qoo+PMydbsm4DsIY24R1XznjxSjLJYR8vVM=; b=NQuweKD7aR4BKJE4PqKTKad2C5
 Bmuw5ctOZLzWzRGLwTKepUwrvzf5v21hs8z5juexzsjeQ7hstWz3LqTFd2No3MgzCBAqUJE01a/wR
 IbOIxpFuknSh7S4uKPZXUqLjfGtz2uGh+HCf3hHUeviKvXfNRIUn/b2nrEOcSBNLjVdU=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ov4Ei-009iKZ-HJ for v9fs-developer@lists.sourceforge.net;
 Tue, 15 Nov 2022 22:17:00 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id B6A24C01F; Tue, 15 Nov 2022 23:16:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1668550615; bh=OZL5LNQ/qoo+PMydbsm4DsIY24R1XznjxSjLJYR8vVM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fh6HyKDf0DVD+mvNnRo1MlBIY64D8IAD+YqyBw55Q9Y8CTc1xc22BhpXIJbFZtMiO
 v1Tl3w2Id4eLacpHimdWenZzVHR1cVnLcumorPcujCWfyawEM61vqpkqCEfD5pcKMQ
 fm1/De+3UDCKCFSVKcSPeD4b33KS7AEb5X17orxTYnLKyn7GuKpA7Z85qziIoKhKvx
 EMbW9GL6Z3HuzvU2W5LmTTJEkL8GVP9hONHgDz4+jeAWqYuCJQWlIewTCWm8M6XBz4
 +Ebhmbzy2SRSwCU7i1aHlDxWIyve48PRdxOVlEHW7eAc3TPXfMS3/nDbkJ8YJZ6TX2
 FRj7AZbw7yDRA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id E7333C009;
 Tue, 15 Nov 2022 23:16:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1668550614; bh=OZL5LNQ/qoo+PMydbsm4DsIY24R1XznjxSjLJYR8vVM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GZWtUl4my76Dw99vycRNoUgSegPrGhpMi9fi7IYYTswgacGz+53Vfkowb3l+qqVuZ
 43rxNdMClHGGmUWnkAoAveEQueR2Z7V9TBvDZY9ixRtsxuN79JuQNwbIzaXzZJqliV
 7TZwNFHga+FzpOG2JFxghrTLu7qZIGUzSpHz2CLUMnP+4UPTu3woB7Yytke8SgdSQZ
 dB5hoCm00ebFyleCrpD91Zy3nCnxHT/9i4SUWbtodmDwDkv40Q665KsB0DAVx+iViC
 gPIYW/9/RsqEKfgHy79y7ctH+6LJbDIag9VQLerjYBDdlEosgoFVrSGZGpYNvGqAOy
 GKfoZUNaYlw9Q==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 6a874494;
 Tue, 15 Nov 2022 22:16:42 +0000 (UTC)
Date: Wed, 16 Nov 2022 07:16:27 +0900
From: asmadeus@codewreck.org
To: Peng Zhang <zhangpeng362@huawei.com>
Message-ID: <Y3QPu9TM8LEdu07l@codewreck.org>
References: <20221115140447.2971680-1-zhangpeng362@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221115140447.2971680-1-zhangpeng362@huawei.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Peng Zhang wrote on Tue, Nov 15, 2022 at 02:04:47PM +0000:
 > From: ZhangPeng <zhangpeng362@huawei.com> > > Syzbot reported
 slab-out-of-bounds
 Read in __fscache_acquire_volume. > > ==================== [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1ov4Ei-009iKZ-HJ
Subject: Re: [V9fs-developer] [PATCH v2] fscache: fix OOB Read in
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
 jlayton@kernel.org, linux-kernel@vger.kernel.org, dhowells@redhat.com,
 syzbot+a76f6a6e524cf2080aa3@syzkaller.appspotmail.com,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Peng Zhang wrote on Tue, Nov 15, 2022 at 02:04:47PM +0000:
> From: ZhangPeng <zhangpeng362@huawei.com>
> 
> Syzbot reported slab-out-of-bounds Read in __fscache_acquire_volume.
> 
> ==================================================================
> BUG: KASAN: slab-out-of-bounds in memcmp+0x16f/0x1c0 lib/string.c:757
> Read of size 8 at addr ffff888016f3aa90 by task syz-executor344/3613
> 
> CPU: 0 PID: 3613 Comm: syz-executor344 Not tainted
> 6.0.0-rc2-syzkaller-00327-g8379c0b31fbc #0
> Hardware name: Google Compute Engine/Google Compute Engine, BIOS
> Google 07/22/2022
> Call Trace:
>  <TASK>
>  __dump_stack lib/dump_stack.c:88 [inline]
>  dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:106
>  print_address_description mm/kasan/report.c:317 [inline]
>  print_report.cold+0x2ba/0x719 mm/kasan/report.c:433
>  kasan_report+0xb1/0x1e0 mm/kasan/report.c:495
>  memcmp+0x16f/0x1c0 lib/string.c:757
>  memcmp include/linux/fortify-string.h:420 [inline]
>  fscache_volume_same fs/fscache/volume.c:133 [inline]
>  fscache_hash_volume fs/fscache/volume.c:171 [inline]
>  __fscache_acquire_volume+0x76c/0x1080 fs/fscache/volume.c:328
>  fscache_acquire_volume include/linux/fscache.h:204 [inline]
>  v9fs_cache_session_get_cookie+0x143/0x240 fs/9p/cache.c:34
>  v9fs_session_init+0x1166/0x1810 fs/9p/v9fs.c:473
>  v9fs_mount+0xba/0xc90 fs/9p/vfs_super.c:126
>  legacy_get_tree+0x105/0x220 fs/fs_context.c:610
>  vfs_get_tree+0x89/0x2f0 fs/super.c:1530
>  do_new_mount fs/namespace.c:3040 [inline]
>  path_mount+0x1326/0x1e20 fs/namespace.c:3370
>  do_mount fs/namespace.c:3383 [inline]
>  __do_sys_mount fs/namespace.c:3591 [inline]
>  __se_sys_mount fs/namespace.c:3568 [inline]
>  __x64_sys_mount+0x27f/0x300 fs/namespace.c:3568
>  do_syscall_x64 arch/x86/entry/common.c:50 [inline]
>  do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
>  entry_SYSCALL_64_after_hwframe+0x63/0xcd
> RIP: 0033:0x7f7d5064b1d9
> Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 e1 14 00 00 90 48 89 f8 48 89
> f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01
> f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
> RSP: 002b:00007ffd1700c028 EFLAGS: 00000246 ORIG_RAX: 00000000000000a5
> RAX: ffffffffffffffda RBX: 00007ffd1700c060 RCX: 00007f7d5064b1d9
> RDX: 0000000020000040 RSI: 0000000020000000 RDI: 0000000000000000
> RBP: 0000000000000000 R08: 0000000020000200 R09: 0000000000000000
> R10: 0000000000000000 R11: 0000000000000246 R12: 00000000000f4240
> R13: 0000000000000000 R14: 00007ffd1700c04c R15: 00007ffd1700c050
> ==================================================================
> 
> The type of a->key[0] is char in fscache_volume_same(). If the length of
> cache volume key is greater than 127, the value of a->key[0] is less
> than 0. In this case, klen becomes much larger than 255 after type
> conversion, because the type of klen is size_t. As a result, memcmp() is
> read out of bounds. Fix this by adding a check on the length of the key
> in fscache_alloc_volume().
> ---
> v1 -> v2:
> - Make sure the length of cache volume key (klen) fits a signed char
> before writing key[0] that'd benefit everyone, thanks to Dominique
> Martinet.
> 
> Reported-by: syzbot+a76f6a6e524cf2080aa3@syzkaller.appspotmail.com
> Fixes: 62ab63352350 ("fscache: Implement volume registration")
> Signed-off-by: ZhangPeng <zhangpeng362@huawei.com>

These tags should go above the '---' line, or git am will be confused and drop
them.
(I assume David or whoever picks this up can manually fix this, letting
them comment)

That aside:
Acked-by: Dominique Martinet <asmadeus@codewreck.org>

> ---
>  fs/fscache/volume.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/fs/fscache/volume.c b/fs/fscache/volume.c
> index a058e0136bfe..cc206d5e4cc7 100644
> --- a/fs/fscache/volume.c
> +++ b/fs/fscache/volume.c
> @@ -230,6 +230,8 @@ static struct fscache_volume *fscache_alloc_volume(const char *volume_key,
>  	 * hashing easier.
>  	 */
>  	klen = strlen(volume_key);
> +	if (klen > 127)
> +		goto err_cache;
>  	hlen = round_up(1 + klen + 1, sizeof(__le32));
>  	key = kzalloc(hlen, GFP_KERNEL);
>  	if (!key)

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
