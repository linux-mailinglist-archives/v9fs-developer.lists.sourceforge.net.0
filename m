Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 904B14E80A5
	for <lists+v9fs-developer@lfdr.de>; Sat, 26 Mar 2022 12:47:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nY4tA-0001Uu-9I; Sat, 26 Mar 2022 11:47:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <k.kahurani@gmail.com>) id 1nY4t9-0001Uo-2e
 for v9fs-developer@lists.sourceforge.net; Sat, 26 Mar 2022 11:47:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AwGfCDdeyQ+p9Uid1LMIBBkjPaMge2URdDRd/US86Ko=; b=mq2MOIPGR0hhDU5IysIVF8tq1e
 byEOrQvIMZGWfiI75TrBcKG2rxE8Ny1w6MLsYwwfid8aaK0XhVXhgI5+a08wsFeYxmaJt2y7rJH9B
 kO4WdlyqT8qpNp2vcD24azu6BxPi8xH5vaietgKGWRYa94Rkz5vtMAgfvcONXAStc91U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AwGfCDdeyQ+p9Uid1LMIBBkjPaMge2URdDRd/US86Ko=; b=GYN7m0oHstVkTVUFYsfm9zEJ2/
 SPpz9pstux6km7shRsj1NhzhESqBa5KmDHfdGSYyydFftFTASKXiapllEDKoLsFQ6PPoki37qsPHz
 oARtwaimpCwvlz0P2ZZUxhICggUDIMjWYWaFxPnOvoXT2jeGPDtPcMPCki3mF5+mzk+k=;
Received: from mail-vs1-f46.google.com ([209.85.217.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nY4t3-0007ff-12
 for v9fs-developer@lists.sourceforge.net; Sat, 26 Mar 2022 11:47:21 +0000
Received: by mail-vs1-f46.google.com with SMTP id l128so10907700vsc.7
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 26 Mar 2022 04:47:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=AwGfCDdeyQ+p9Uid1LMIBBkjPaMge2URdDRd/US86Ko=;
 b=U0HdjiY5/8MQnC8fQR1O5Fsdtg1XgHbybvVazsS20WJSKnEjnyqGDSJ9B1uemyayla
 1tLjApoH3EiiflF3DnLqbXTUJaMi3zUfopv6UE4WJM41AxVCXq4hFHGgJR15W513Ye9e
 rOovhd1IqFXg74F8nDrninqV2gAt6UK/XpExdTCHWc+q2jbuQoVcT1AQPyFLNkyeOfM4
 wdky+kZr1H1QD+/QIzz/Y9uGhCaIBB/gNMQ6FauykXzVZE6QdvYGZIUfq5oNZjpOb0ep
 OZ1sW8RvB6WACeByGCoomTJfc+mjB2DyVKCndU7CZyQVdO5ZI5NFH30lm8Ra2AlYbojl
 HhcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=AwGfCDdeyQ+p9Uid1LMIBBkjPaMge2URdDRd/US86Ko=;
 b=75otmyWLtez0OBpCpx2xBuPO+9S2qHxyNMpYBTtTYlCwippXVeZcGJULBR6bvXx+ZY
 HsYOLmdIoD5Jk8yJPpKd6XWKdLKpVU9XDIjG0Z5I/qN4gQOm4IORhDirGhu+0bcTqD/l
 22+3jqfaDoG9AtfTFb31pUVekLHjD61+kQ52YMNTCLS2P9WLBTV0mcQVTaw1WONcQirC
 VTq+hrsEatdpMSfzZ9P+N6JLEVumwB9opnhSLAwRl9LUW9Yuj6dJ2T/4wCFDFY1TM3+4
 VpqmcMzDdchmApQG40SY6ukAvcAEGksJoCkq1YVRo7tS6Zw+Fq0BziNDLvIEIpcLfXp5
 CiBg==
X-Gm-Message-State: AOAM531TRnu8H+ALlpL/50jzooeds5oxEWzpOvgQO52M1d9IvzYNj/ri
 EInnoGVwKo1UXjgU3I+Q1l2BgpO//BL6Vdj/onc=
X-Google-Smtp-Source: ABdhPJweo8NW3/NfMduBu/ygi9oM6ECjJgbbulxFQTwNgqLVqNI/T0vkSYDq4KOluUhealYvcgONOs7GSOn+888XHbQ=
X-Received: by 2002:a05:6102:2339:b0:325:880f:62f5 with SMTP id
 b25-20020a056102233900b00325880f62f5mr622277vsa.36.1648295230062; Sat, 26 Mar
 2022 04:47:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAAZOf26g-L2nSV-Siw6mwWQv1nv6on8c0fWqB4bKmX73QAFzow@mail.gmail.com>
In-Reply-To: <CAAZOf26g-L2nSV-Siw6mwWQv1nv6on8c0fWqB4bKmX73QAFzow@mail.gmail.com>
From: David Kahurani <k.kahurani@gmail.com>
Date: Sat, 26 Mar 2022 14:46:59 +0300
Message-ID: <CAAZOf244uk2jKsFmDgkEAw1JSFWf8r8VWGNTt-Q4xDDf1uMfKg@mail.gmail.com>
To: davem@davemloft.net, ericvh@gmail.com, kuba@kernel.org, 
 linux-kernel@vger.kernel.org, linux_oss@crudebyte.com, lucho@ionkov.net, 
 netdev@vger.kernel.org, syzkaller-bugs@googlegroups.com, 
 v9fs-developer@lists.sourceforge.net, 
 syzbot+5e28cdb7ebd0f2389ca4@syzkaller.appspotmail.com
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Sorry, got to resend this in plain text. It doesn't look like
 it is getting through to the mailing lists. On Thu, Mar 24, 2022 at 3:13
 PM David Kahurani wrote: > > On Monday, February 28, 2022 at 4:38:57 AM UTC+3
 >> >> syzbot wrote on Sun, Feb 27,
 2022 at 04:53:29PM -0800: >> > kmem_cache_destroy 9p-f [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.217.46 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kahurani[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.46 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1nY4t3-0007ff-12
Subject: Re: [V9fs-developer] [syzbot] WARNING in p9_client_destroy
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Sorry, got to resend this in plain text. It doesn't look like it is
getting through to the mailing lists.

On Thu, Mar 24, 2022 at 3:13 PM David Kahurani <k.kahurani@gmail.com> wrote:
>
> On Monday, February 28, 2022 at 4:38:57 AM UTC+3 asmadeus@codewreck.org wrote:
>>
>> syzbot wrote on Sun, Feb 27, 2022 at 04:53:29PM -0800:
>> > kmem_cache_destroy 9p-fcall-cache: Slab cache still has objects when
>> > called from p9_client_destroy+0x213/0x370 net/9p/client.c:1100
>>
>> hmm, there is no previous "Packet with tag %d has still references"
>> (sic) message, so this is probably because p9_tag_cleanup only relies on
>> rcu read lock for consistency, so even if the connection has been closed
>> above (clnt->trans_mode->close) there could have been a request sent
>> (= tag added) just before that which isn't visible on the destroying
>> side?
>>
>> I guess adding an rcu_barrier() is what makes most sense here to protect
>> this case?
>> I'll send a patch in the next few days unless it was a stupid idea.
>
>
> Looking at this brought me to the same conclusion.
>
> ---------------------
>
> From cd5a11207a140004bf55005fac7f7e4cec2fd075 Mon Sep 17 00:00:00 2001
> From: David Kahurani <k.kahurani@gmail.com>
> Date: Thu, 24 Mar 2022 15:00:23 +0300
> Subject: [PATCH] net/9p: Flush any delayed rce free
>
> As is best practice
>
> kmem_cache_destroy 9p-fcall-cache: Slab cache still has objects when called from p9_client_destroy+0x213/0x370 net/9p/client.c:1100
> WARNING: CPU: 1 PID: 3701 at mm/slab_common.c:502 kmem_cache_destroy mm/slab_common.c:502 [inline]
> WARNING: CPU: 1 PID: 3701 at mm/slab_common.c:502 kmem_cache_destroy+0x13b/0x140 mm/slab_common.c:490
> Modules linked in:
> CPU: 1 PID: 3701 Comm: syz-executor.3 Not tainted 5.17.0-rc5-syzkaller-00021-g23d04328444a #0
> Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.14.0-2 04/01/2014
> RIP: 0010:kmem_cache_destroy mm/slab_common.c:502 [inline]
> RIP: 0010:kmem_cache_destroy+0x13b/0x140 mm/slab_common.c:490
> Code: da a8 0e 48 89 ee e8 44 6e 15 00 eb c1 c3 48 8b 55 58 48 c7 c6 60 cd b6 89 48 c7 c7 30 83 3a 8b 48 8b 4c 24 18 e8 9b 30 60 07 <0f> 0b eb a0 90 41 55 49 89 d5 41 54 49 89 f4 55 48 89 fd 53 48 83
> RSP: 0018:ffffc90002767cf0 EFLAGS: 00010282
> RAX: 0000000000000000 RBX: 1ffff920004ecfa5 RCX: 0000000000000000
> RDX: ffff88801e56a280 RSI: ffffffff815f4b38 RDI: fffff520004ecf90
> RBP: ffff888020ba8b00 R08: 0000000000000000 R09: 0000000000000000
> R10: ffffffff815ef1ce R11: 0000000000000000 R12: 0000000000000001
> R13: ffffc90002767d68 R14: dffffc0000000000 R15: 0000000000000000
> FS:  00005555561b0400(0000) GS:ffff88802ca00000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 0000555556ead708 CR3: 0000000068b97000 CR4: 0000000000150ef0
> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> Call Trace:
>  <TASK>
>  p9_client_destroy+0x213/0x370 net/9p/client.c:1100
>  v9fs_session_close+0x45/0x2d0 fs/9p/v9fs.c:504
>  v9fs_kill_super+0x49/0x90 fs/9p/vfs_super.c:226
>  deactivate_locked_super+0x94/0x160 fs/super.c:332
>  deactivate_super+0xad/0xd0 fs/super.c:363
>  cleanup_mnt+0x3a2/0x540 fs/namespace.c:1173
>  task_work_run+0xdd/0x1a0 kernel/task_work.c:164
>  tracehook_notify_resume include/linux/tracehook.h:188 [inline]
>  exit_to_user_mode_loop kernel/entry/common.c:175 [inline]
>  exit_to_user_mode_prepare+0x27e/0x290 kernel/entry/common.c:207
>  __syscall_exit_to_user_mode_work kernel/entry/common.c:289 [inline]
>  syscall_exit_to_user_mode+0x19/0x60 kernel/entry/common.c:300
>  do_syscall_64+0x42/0xb0 arch/x86/entry/common.c:86
>  entry_SYSCALL_64_after_hwframe+0x44/0xae
> RIP: 0033:0x7f5ff63ed4c7
> Code: ff ff ff f7 d8 64 89 01 48 83 c8 ff c3 66 0f 1f 44 00 00 31 f6 e9 09 00 00 00 66 0f 1f 84 00 00 00 00 00 b8 a6 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
> RSP: 002b:00007fff01862e98 EFLAGS: 00000246 ORIG_RAX: 00000000000000a6
> RAX: 0000000000000000 RBX: 0000000000000000 RCX: 00007f5ff63ed4c7
> RDX: 00007fff01862f6c RSI: 000000000000000a RDI: 00007fff01862f60
> RBP: 00007fff01862f60 R08: 00000000ffffffff R09: 00007fff01862d30
> R10: 00005555561b18b3 R11: 0000000000000246 R12: 00007f5ff64451ea
> R13: 00007fff01864020 R14: 00005555561b1810 R15: 00007fff01864060
>  </TASK>
>
> Signed-off-by: David Kahurani <k.kahurani@gmail.com>
> Reported-by: syzbot+5e28cdb7ebd0f2389ca4@syzkaller.appspotmail.com
> ---
>  net/9p/client.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/net/9p/client.c b/net/9p/client.c
> index 8bba0d9cf..67c51913a 100644
> --- a/net/9p/client.c
> +++ b/net/9p/client.c
> @@ -1097,6 +1097,7 @@ void p9_client_destroy(struct p9_client *clnt)
>
>   p9_tag_cleanup(clnt);
>
> + rcu_barrier();
>   kmem_cache_destroy(clnt->fcall_cache);
>   kfree(clnt);
>  }
> --
> 2.25.1
>
>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
