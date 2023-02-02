Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BADA3687C2C
	for <lists+v9fs-developer@lfdr.de>; Thu,  2 Feb 2023 12:27:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pNXku-0007vv-KT;
	Thu, 02 Feb 2023 11:27:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1pNXks-0007vk-P2
 for v9fs-developer@lists.sourceforge.net;
 Thu, 02 Feb 2023 11:27:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wO45tFiNsL2/EuY48fCKGkPR7KT7t+2GynA6GE3W9PY=; b=YmvYQEdBl004XCQJMfEZtkM7xw
 0itx3TC+K/vWmRUM6MBfj396USfq5N1U6SauyUuk0eekMNwzXnq/YaLHPrW/etQ36jKT6Z4/xE2kE
 3EazSomhD/Hh/KdNLrDVMayWIx9H2/OutFsgrbAFHKGIXam+BrkswgcH2rmNpElrmv2E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wO45tFiNsL2/EuY48fCKGkPR7KT7t+2GynA6GE3W9PY=; b=Se30pW8m8N4vjhwz6HG3kpr7a7
 W6hBGVZZbmcvr0/lH2I3a6Z21A7UKJ91tBOqnUGWGb9gDWgaZvYvcfMoWet0yK78JxZauhRXghsSl
 UBDxdvZT9k+7DnPsHOtsJ1MM/HyV5YivBnPiW9L5xWAcPl9rI7KfusvQDSmnZZ5oN50E=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pNXkn-008RHr-TY for v9fs-developer@lists.sourceforge.net;
 Thu, 02 Feb 2023 11:27:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=wO45tFiNsL2/EuY48fCKGkPR7KT7t+2GynA6GE3W9PY=; b=KIlb4/+t+a1XC3ChU3fLUCJcuF
 25A3CB2TJ+2GKiGsD8vHABpd+0HCWRtOV1GEiuhid4TMvz0VVW7PKavrnJ0EtDpCooRigNU3WeWco
 DMXhItRi1rZJX9JjzSOtXz/PnAZjfyeK9zngG2BJobBM+lm8pYiXnGKzkUCf6Crp8aigIVEHUK1MN
 TpqZ28DEq6Ju4ekg/7VmzZ8FuPnlXqTeYNVwnFUNXgt2b1tX2aRqqcKr8zsXQkUh9roMD21lud+vo
 1T0rzb1nzHXkMYD7jkLCVW4JLS/wNoHp8G6YyM47CniyaU5b4xs58FWw+7QEcAEqvaJauF3lDKlJ9
 8O473845AWDMYZHl9fcyUxPOHxV9hGpWGPvZznnszCEpP2C+LxahX5ZF/gIEODvgqP9qS40LEz/UW
 rzlY+UtRs/65HueGyqxDuFL1i/pZM+ctQisqS2vgmFlRq6/vBFREhA10z9UodYoS61gomG1dgLUAw
 EenoLVhpPsTgfmK3SOGj08/1E4vsFrunWVjaU+fme6NQfg1kLobSctsNWNNXjOdMERCrnFrWDqshK
 CK2fEOyndBzyzcxM2iOabIjhEFJ3o3lNcWSPonqPV6lF2qyEQMDwGBT8AZma6I2MS+PaU94q/JIDd
 Mt0MXSomPmWYnT5ayvYvIeDDxW0okTnMF8jf85GBo=;
To: v9fs-developer@lists.sourceforge.net, asmadeus@codewreck.org,
 rminnich@gmail.com, lucho@ionkov.net, Eric Van Hensbergen <ericvh@kernel.org>
Date: Thu, 02 Feb 2023 12:27:37 +0100
Message-ID: <2302787.WOG5zRkYfl@silver>
In-Reply-To: <20230124023834.106339-1-ericvh@kernel.org>
References: <20221218232217.1713283-1-evanhensbergen@icloud.com>
 <20230124023834.106339-1-ericvh@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tuesday, January 24,
 2023 3:38:23 AM CET Eric Van Hensbergen
 wrote: > This is the third version of a patch series which adds a number
 > of features to improve read/write performance in the 9p files [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1pNXkn-008RHr-TY
Subject: Re: [V9fs-developer] [PATCH v3 00/11] Performance fixes for 9p
 filesystem
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: linux-fsdevel@vger.kernel.org, Eric Van Hensbergen <ericvh@kernel.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tuesday, January 24, 2023 3:38:23 AM CET Eric Van Hensbergen wrote:
> This is the third version of a patch series which adds a number
> of features to improve read/write performance in the 9p filesystem.
> Mostly it focuses on fixing caching to help utilize the recently
> increased MSIZE limits and also fixes some problematic behavior
> within the writeback code.
> 
> All together, these show roughly 10x speed increases on simple
> file transfers.  Future patch sets will improve cache consistency
> and directory caching.
> 
> These patches are also available on github:
> https://github.com/v9fs/linux/tree/ericvh/for-next
> and on kernel.org:
> https://git.kernel.org/pub/scm/linux/kernel/git/ericvh/v9fs.git
> 
> Tested against qemu, cpu, and diod with fsx, dbench, and some
> simple benchmarks.

Looks like this needs more work.

I only had a glimpse on your patches yet, but made some tests by doing
compilations on guest on top of a 9p root fs [1], msize=500k. Under that
scenario:

* loose: this is suprisingly the only mode where I can see some performance
increase, over "loose" on master it compiled ~5% faster, but I also got some
misbehaviours on guest.

* writeahead: no performance results, as compilation already aborts when
trying to detect a compiler. I had to restore a previous snapshot to repair
things after this test.

* readahead: significant performance drop. In comparison to "loose" on master
compilation takes 6 times longer with "readahead". There are some severe
misbehaviours on guest as well, and after boot I get this warning:

[    5.782846] folio expected an open fid inode->i_private=0000000000000000
[    5.786641] WARNING: CPU: 0 PID: 321 at fs/9p/vfs_addr.c:174 v9fs_vfs_write_folio_locked (fs/9p/vfs_addr.c:174 (discriminator 3)) 9p
[    5.792496] Modules linked in: ppdev(E) bochs(E) sg(E) drm_vram_helper(E) joydev(E) evdev(E) drm_kms_helper(E) serio_raw(E) drm_ttm_helper(E) pcsp)
[    5.816806] CPU: 0 PID: 321 Comm: chown Tainted: G            E      6.2.0-rc6+ #61
[    5.821694] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS rel-1.16.1-0-g3208b098f51a-prebuilt.qemu.org 04/01/2014
[    5.827362] RIP: 0010:v9fs_vfs_write_folio_locked (fs/9p/vfs_addr.c:174 (discriminator 3)) 9p

Code starting with the faulting instruction
===========================================
        ...
[    5.835360] RSP: 0018:ffffc900007d3a38 EFLAGS: 00010282
[    5.836982] RAX: 0000000000000000 RBX: ffff888106c86680 RCX: 0000000000000000
[    5.838877] RDX: 0000000000000001 RSI: ffffffff821eb1e6 RDI: 00000000ffffffff
[    5.841179] RBP: ffffea0004279300 R08: 0000000000000000 R09: 00000000ffffefff
[    5.843039] R10: ffffc900007d38e8 R11: ffffffff824bede8 R12: 0000000000000000
[    5.844850] R13: 00000000ffffffea R14: 0000000000000014 R15: 0000000000000014
[    5.846366] FS:  00007fd0fc4a0580(0000) GS:ffff88842fc00000(0000) knlGS:0000000000000000
[    5.848250] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[    5.849386] CR2: 00007fd0fc38f4f0 CR3: 0000000100302000 CR4: 00000000000006f0
[    5.850824] Call Trace:
[    5.851622]  <TASK>
[    5.852052] v9fs_vfs_writepage (fs/9p/vfs_addr.c:207) 9p
[    5.852841] __writepage (mm/page-writeback.c:2537) 
[    5.853438] write_cache_pages (mm/page-writeback.c:2473) 
[    5.854205] ? __pfx___writepage (mm/page-writeback.c:2535) 
[    5.855309] ? delete_node (lib/radix-tree.c:575) 
[    5.856122] ? radix_tree_delete_item (lib/radix-tree.c:1432) 
[    5.857101] do_writepages (mm/page-writeback.c:2564 mm/page-writeback.c:2552 mm/page-writeback.c:2583) 
[    5.857954] ? radix_tree_delete_item (lib/radix-tree.c:1432) 
[    5.859103] filemap_fdatawrite_wbc (mm/filemap.c:389 mm/filemap.c:378) 
[    5.860043] __filemap_fdatawrite_range (mm/filemap.c:422) 
[    5.861050] filemap_write_and_wait_range (mm/filemap.c:682 mm/filemap.c:665) 
[    5.862132] v9fs_vfs_setattr_dotl (./include/linux/pagemap.h:60 fs/9p/vfs_inode_dotl.c:583) 9p
[    5.863312] notify_change (fs/attr.c:486) 
[    5.864043] ? chown_common (fs/open.c:736) 
[    5.864793] chown_common (fs/open.c:736) 
[    5.865538] ? preempt_count_add (./include/linux/ftrace.h:977 kernel/sched/core.c:5737 kernel/sched/core.c:5734 kernel/sched/core.c:5762) 
[    5.866420] do_fchownat (fs/open.c:768) 
[    5.867419] __x64_sys_fchownat (fs/open.c:782 fs/open.c:779 fs/open.c:779) 
[    5.868319] do_syscall_64 (arch/x86/entry/common.c:50 arch/x86/entry/common.c:80) 
[    5.869116] entry_SYSCALL_64_after_hwframe (arch/x86/entry/entry_64.S:120) 
[    5.871008] RIP: 0033:0x7fd0fc3b7b9a

Best regards,
Christian Schoenebeck

[1] https://wiki.qemu.org/Documentation/9p_root_fs





_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
