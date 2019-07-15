Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 302EA698D1
	for <lists+v9fs-developer@lfdr.de>; Mon, 15 Jul 2019 18:03:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hn3S9-0007BR-62; Mon, 15 Jul 2019 16:03:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <matthieu.baerts@tessares.net>) id 1hn3S8-0007Ax-4y
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Jul 2019 16:03:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AKdxu2SCl5wA/5tBUPOZG4pJ0tZSZ5UkElqqt7p5DfA=; b=gIk9BP5qtwziXR4oWWltX9rYw7
 MKu3uYcyoLdYS0Aq1xS4Jz8dg5m7wskJhzxaZ/bDLYB0+p2gSYo67xEDFS2imRvnUPMvhWICyt97K
 0CNhO69DJVNUvMR5NErRndf6bg5UKo+e5rUndOi0RRbeI7h/Md+rwZvyjO/YY0WQcO2E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AKdxu2SCl5wA/5tBUPOZG4pJ0tZSZ5UkElqqt7p5DfA=; b=K5rH1H2rf35T4MeSHbRxnxIvyi
 bWJPHIrwtHRCewMu2Mx14DX2PszrNO3ozB1PqGVlGVJv9Y7FxmaYcIIT49RQkz9zjtWrQNRnOq10T
 38x4KonoP+73qVKOaEcDevLMk5dWb1uM0KdJH1KN5nUVn8qOWiDvmb1klhGOK21A7dak=;
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hn3S4-002VH8-IZ
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Jul 2019 16:03:46 +0000
Received: by mail-ed1-f67.google.com with SMTP id x19so10099436eda.12
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 15 Jul 2019 09:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tessares-net.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=AKdxu2SCl5wA/5tBUPOZG4pJ0tZSZ5UkElqqt7p5DfA=;
 b=rzrrXxLIPljv54p6k7qSFWvfC4wV6ZrqnC0KYfwF8mnA0gD59vFihviB+woOY/xfmF
 ivviDkicSo7sl9VGWgQjtOM0ZYStcLcYNNS5Ni+MJNpPR4USm3EFVF6V9tBOMP5XV2tO
 4w9PUfU7bkzb9kH8kYzUFpTiODP/k72cZXANIoshkKZx3iUPAec1kKXkX+NEW0qm3Qds
 smW1XbugFB3fMY7qzcndlUJ30tLrdtCfbdFL9euQhgXH5YTFCRn3IiLDwiJ4ygoqgtVb
 GTSs+TvFb7jYG87nVQ8XeNvE2HyHQpGuv25GEkdExlWJsdM1EUhLXVrSybYzr6ynKcx+
 NMTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=AKdxu2SCl5wA/5tBUPOZG4pJ0tZSZ5UkElqqt7p5DfA=;
 b=nH0JpYYbxbV9OzCptxJmE/HGTyqcW0AGD9ghaKfEfwlJ6m+Bc9bLBJ/DPT5trCzwmo
 Yt+fgVpCySTYrzIPA24uqtcrk8AkMPFJg2MNhN7Y6sO99Voy5aqYdIiq+KseAjMY79U6
 k8L5Fu2QlYwY76NATTcTcellvAhA0+HEg04BM+FBfTu/9mbR4McvgDslNKmhUgHqOBEf
 Uf5rb3wzoOH8gx+cxgskSd7gPxDVnY4DR7b/HeHu3BHLmJYUcfxNUhFxP2wUG2kxM5xp
 2wE9Y1idNcpvYyR9cfHGt6bv+b8flmXR3FnW+Ggq8fovisho+qTWSLJTynK7vxtzidL8
 TJDA==
X-Gm-Message-State: APjAAAVjtCIP5o7KqFZaNR1NKS31ZTfsRT76rf6vxWpXoVJ2Fht1M2F6
 6i/2EVHxV8FVowpz3AsAWvGw3ah6BURvZQ==
X-Google-Smtp-Source: APXvYqzVn4PA4h4hTFikAEYqoeDJiIVx4gLIpuL7ixFVPwbBJur8lAAmEBT68IRmbomAddvcvQgYdg==
X-Received: by 2002:a17:906:e213:: with SMTP id
 gf19mr10617333ejb.180.1563206617854; 
 Mon, 15 Jul 2019 09:03:37 -0700 (PDT)
Received: from tsr-lap-08.nix.tessares.net ([213.211.153.55])
 by smtp.gmail.com with ESMTPSA id b25sm5333128eda.38.2019.07.15.09.03.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 09:03:37 -0700 (PDT)
To: Dominique Martinet <asmadeus@codewreck.org>
References: <0757f061-0685-6e8e-9e6f-035d0f57eaf8@tessares.net>
 <20190715113251.GA28601@nautica>
From: Matthieu Baerts <matthieu.baerts@tessares.net>
Openpgp: preference=signencrypt
Autocrypt: addr=matthieu.baerts@tessares.net; keydata=
 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
 fQpO7wDE/Q==
Message-ID: <f6513948-312e-2edb-44e7-40217741e9ba@tessares.net>
Date: Mon, 15 Jul 2019 18:03:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190715113251.GA28601@nautica>
Content-Language: en-GB
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hn3S4-002VH8-IZ
Subject: Re: [V9fs-developer] New KASAN warnings with kernel v4.14.133
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
Cc: Sasha Levin <sashal@kernel.org>, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Dominique,

On 15/07/2019 13:32, Dominique Martinet wrote:
> Matthieu Baerts wrote on Mon, Jul 15, 2019:
>> First, thank you for developing and maintaining 9P FS in Linux!
> 
> Thanks for the report

My pleasure!

>> Our out-of-tree kernel doesn't modify the FS part.
>>
>> The last time we run some tests with KASAN was with our kernel sync with
>> the upstream v4.14.127 version.
>>
>> $ git log --oneline v4.14.127..v4.14.133 -- fs/9p net/9p include/net/9p/
>> include/uapi/linux/virtio_9p.h include/trace/events/9p.h
>> d4fe45ddfe61 net/9p: include trans_common.h to fix missing prototype
>> warning.
>> 84693d060965 9p: p9dirent_read: check network-provided name length
>> 9e69c673fe07 9p/rdma: remove useless check in cm_event_handler
>> c9928b45845b 9p: acl: fix uninitialized iattr access
>> ce3220827dcc 9p/rdma: do not disconnect on down_interruptible EAGAIN
>> 26b3b1dbb395 9p/xen: fix check for xenbus_read error in front_probe
>>
>> These new commits have been added by Sasha (in cc) in v4.14.132, see:
>> https://git.kernel.org/pub/scm/linux/kernel/git/stable/stable-queue.git/commit/queue-4.14?id=7e653e91a19a5667b8904097e8fc16462fb3a0f3
>>
>> I saw some similar bug reports from syzbot and others from last year. Is
>> it possible that this issue has already been fixed in master but not
>> backported to v4.14 tree yet?
> 
> I don't think I've seen this specifically, would be grateful if you
> could take the time to test on master just to make sure first

Our MPTCP development branch is currently following the kernel 5.1.0.
That's not Linus' master, I don't know if is it enough. Personally, I
didn't launch any tests with KASAN and this kernel yet. I mean I might
have to fix other issues first before getting results.

> I hardly ever use overlayfs and the bug seems related so it could also
> be a change there in that range (not that 9p isn't to blame as well) -
> like some lock change in overlayfs which revealed some race underneath.

Thank you for this note. I was not directly suspecting overlayfs but
indeed, that could come from there.

From what I see, OverlayFS code has not been modified recently:

$ git log --oneline v4.14.127..v4.14.133 -- drivers/of/overlay.c
drivers/of/resolver.c fs/overlayfs/
$

But I understand that this could come from somewhere else.

> 
> 
>> [   16.464577]
>> ==================================================================
>> [   16.465448] BUG: KASAN: slab-out-of-bounds in strscpy+0x49d/0x590
>> [   16.466171] Read of size 8 at addr ffff88803525f788 by task confd/330
>> [   16.467114]
>> [   16.467313] CPU: 0 PID: 330 Comm: confd Not tainted 4.14.133-mptcp+ #2
>> [   16.468071] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996),
>> BIOS 0.5.1 01/01/2011
>> [   16.469016] Call Trace:
>> [   16.469318]  dump_stack+0xa6/0x12e
>> [   16.469721]  ? _atomic_dec_and_lock+0x1b2/0x1b2
>> [   16.470255]  ? radix_tree_lookup+0x10/0x10
>> [   16.470764]  ? strscpy+0x49d/0x590
>> [   16.471299]  print_address_description+0xa1/0x330
>> [   16.471918]  ? strscpy+0x49d/0x590
>> [   16.472321]  kasan_report+0x23f/0x350
>> [   16.472751]  strscpy+0x49d/0x590
>> [   16.473135]  ? strncpy+0xd0/0xd0
>> [   16.473518]  p9dirent_read+0x26b/0x510
>> [   16.473977]  ? unwind_next_frame+0xc97/0x1eb0
>> [   16.474481]  ? p9stat_read+0x440/0x440
>> [   16.474945]  ? entry_SYSCALL_64_after_hwframe+0x3d/0xa2
>> [   16.475543]  ? rcutorture_record_progress+0x10/0x10
>> [   16.476123]  ? kernel_text_address+0x111/0x120
>> [   16.476656]  ? __kernel_text_address+0xe/0x30
>> [   16.477273]  v9fs_dir_readdir_dotl+0x340/0x5b0
>> [   16.477900]  ? kasan_slab_free+0x12d/0x1a0
>> [   16.478377]  ? v9fs_dir_readdir+0x810/0x810
>> [   16.478887]  ? new_slab+0x29f/0x3b0
>> [   16.479298]  ? iterate_fd+0x300/0x300
>> [   16.479728]  ? do_filp_open+0x24a/0x3b0
>> [   16.480177]  ? SyS_getcwd+0x3b7/0x9f0
>> [   16.480626]  ? may_open_dev+0xc0/0xc0
>> [   16.481056]  ? get_unused_fd_flags+0x180/0x180
>> [   16.481643]  ? __up.isra.0+0x230/0x230
>> [   16.482195]  ? __fdget_pos+0x105/0x170
>> [   16.482658]  ? iterate_dir+0x171/0x5b0
>> [   16.483097]  iterate_dir+0x171/0x5b0
>> [   16.483518]  SyS_getdents+0x1dc/0x3a0
>> [   16.483968]  ? SyS_old_readdir+0x200/0x200
>> [   16.484444]  ? SyS_write+0x1c0/0x270
>> [   16.484875]  ? fillonedir+0x1a0/0x1a0
>> [   16.485315]  ? SyS_old_readdir+0x200/0x200
>> [   16.485791]  ? do_syscall_64+0x259/0xa90
>> [   16.486258]  do_syscall_64+0x259/0xa90
>> [   16.486715]  ? syscall_return_slowpath+0x340/0x340
>> [   16.487320]  ? do_page_fault+0x11f/0x400
>> [   16.487849]  ? __do_page_fault+0xe00/0xe00
>> [   16.488305]  ? __hrtick_start+0x2f0/0x2f0
>> [   16.488752]  ? __switch_to_asm+0x31/0x60
>> [   16.489189]  ? __switch_to_asm+0x31/0x60
>> [   16.489626]  ? __switch_to_asm+0x25/0x60
>> [   16.490063]  ? __switch_to_asm+0x31/0x60
>> [   16.490500]  ? __switch_to_asm+0x31/0x60
>> [   16.490940]  ? __switch_to_asm+0x31/0x60
>> [   16.491377]  ? __switch_to_asm+0x25/0x60
>> [   16.491820]  ? __switch_to_asm+0x31/0x60
>> [   16.492305]  ? __switch_to_asm+0x31/0x60
>> [   16.492769]  ? __switch_to_asm+0x31/0x60
>> [   16.493306]  ? __switch_to_asm+0x31/0x60
>> [   16.493917]  ? __switch_to_asm+0x31/0x60
>> [   16.494402]  ? __switch_to_asm+0x25/0x60
>> [   16.494859]  ? __switch_to_asm+0x31/0x60
>> [   16.495344]  ? __switch_to_asm+0x31/0x60
>> [   16.495798]  ? __switch_to_asm+0x31/0x60
>> [   16.496283]  entry_SYSCALL_64_after_hwframe+0x3d/0xa2
>> [   16.496885] RIP: 0033:0x7f0bd5b26855
>> [   16.497313] RSP: 002b:00007f0bd69d4d60 EFLAGS: 00000246 ORIG_RAX:
>> 000000000000004e
>> [   16.498387] RAX: ffffffffffffffda RBX: 00007f0bb800a910 RCX:
>> 00007f0bd5b26855
>> [   16.499221] RDX: 0000000000008000 RSI: 00007f0bb800a910 RDI:
>> 000000000000002c
>> [   16.500102] RBP: 00007f0bb800a910 R08: 00007f0bd69d4e10 R09:
>> 0000000000008030
>> [   16.500942] R10: 0000000000000076 R11: 0000000000000246 R12:
>> ffffffffffffff70
>> [   16.501780] R13: 0000000000000002 R14: 00007f0bb80008d0 R15:
>> 000000000129cb44
>> [   16.502641]
>> [   16.502819] Allocated by task 330:
>> [   16.503230]  kasan_kmalloc+0xe4/0x170
>> [   16.503799]  __kmalloc+0xdd/0x1c0
>> [   16.504259]  p9pdu_readf+0xbb8/0x2940
>> [   16.504707]  p9dirent_read+0x174/0x510
>> [   16.505154]  v9fs_dir_readdir_dotl+0x340/0x5b0
>> [   16.505694]  iterate_dir+0x171/0x5b0
>> [   16.506122]  SyS_getdents+0x1dc/0x3a0
>> [   16.506573]  do_syscall_64+0x259/0xa90
>> [   16.507031]  entry_SYSCALL_64_after_hwframe+0x3d/0xa2
>> [   16.507633]
>> [   16.507804] Freed by task 322:
>> [   16.508178]  kasan_slab_free+0xac/0x1a0
>> [   16.508741]  kfree+0xcd/0x1e0
>> [   16.509194]  p9stat_free+0x32/0x200
>> [   16.509633]  v9fs_vfs_get_link+0x173/0x230
>> [   16.510118]  ovl_get_link+0x52/0x80
>> [   16.510538]  trailing_symlink+0x42c/0x5f0
>> [   16.511034]  path_lookupat+0x1b4/0xc30
>> [   16.511481]  filename_lookup+0x237/0x470
>> [   16.511955]  vfs_statx+0xb0/0x120
>> [   16.512358]  SyS_newstat+0x70/0xc0
>> [   16.512759]  do_syscall_64+0x259/0xa90
>> [   16.513205]  entry_SYSCALL_64_after_hwframe+0x3d/0xa2
> 
> There are two things bugging me there:
>  - why does the trace speak of v9fs_vfs_get_link and not
> v9fs_vfs_get_link_dotl , from what I'm seeing of the code the
> v9fs_symlink_inode_operations_dotl is properly assigned so I don't see
> why you'd have mixed dotl and non-dotl calls. This might be a hint to
> some other problem.
>  - KASAN complains about a read in the p9dirent_read's strscpy, so
> 'nameptr' - the "allocated by task 330" stack corresponds as p9pdu_readf
> does allocate 'nameptr', but it's a 100% local pointer that's never
> stored anywhere else and shouldn't be free-able by p9stat_free which
> could free only free something from p9pdu_readf's 'S', not present in
> "Qqbs".
> (the corresponding 'S' in v9fs_vfs_get_link is p9_client_stat, but even
> if we're looking at the same fid I really do not see how it could get
> the same pointer as nameptr here)
> 
> I'd need to look deeper into a crash dump to understand this better,
> will try to reproduce on a fresh 4.14.133 with your mount command...

Thank you for your analysis and for looking at that!

I can maybe revert the 6 new patches related to 9P and check if I still
have the issue with KASAN.
Do you suspect one of them to cause this issue?

> Do
> you have any idea what kind of access pattern 'confd' does on top of
> your mount?

I don't have the details but it is supposed to be used to collect data
from SNMP counters. Apparently, it is collecting info from
HOST-RESOURCES-MIB. From what I see, it is linked to the RFC 2790 and it
is getting many stats from the FS but I don't have the details. I heard
that it might be reproducible using snmpd and snmpwalk but I don't know
more.

If you think it is important, I can ask around and try to get more info.

Cheers,
Matt

>> We are running tests in different KVMs and using 9P to have a shared
>> file system between VMs and the host:
>>
>>     mount -t 9p outshare  "${MOUNT_DIR}/overlay/out" -o
>> trans=virtio,version=9p2000.L,access=0,rw
> 

-- 
Matthieu Baerts | R&D Engineer
matthieu.baerts@tessares.net
Tessares SA | Hybrid Access Solutions
www.tessares.net
1 Avenue Jean Monnet, 1348 Louvain-la-Neuve, Belgium


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
