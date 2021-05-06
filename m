Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 54DBE3751E5
	for <lists+v9fs-developer@lfdr.de>; Thu,  6 May 2021 12:02:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1leapi-0004gE-Ta; Thu, 06 May 2021 10:02:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lhenriques@suse.de>) id 1leapg-0004g1-Qw
 for v9fs-developer@lists.sourceforge.net; Thu, 06 May 2021 10:02:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z5zUy3ezb6RgdBgElSc1HWwKb2zX9Giio1vJ3K43AT4=; b=ZqzKnpmWQykGxyt1DfkDioIknj
 K0y4gZhM0xl31RKJC4pB/EaWzSAIFEjY4jGgw2ig5EIzry1sbRgyNkxH14pxEMJazjaUDQPjDp5at
 KERQokkC6JUBzUTWNwyXvhx29otVKmEMxv2iq9gkNlWzYrQSj9BiHUmNS7n6ImskTSNg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=z5zUy3ezb6RgdBgElSc1HWwKb2zX9Giio1vJ3K43AT4=; b=Z
 cBKEqINQLUqoLsRnTfgF3Hq7jur0lai9H4q9+8Qh9t8mnTidBn8uCFFqCkSLboCFNiJHcdJZDA3Om
 sB3nuiqc33WvwNlXlnAJpcdNe9qJJIo+WcKQyHmzERIbR+zdoGZ5/KnjTf2Q5MiUMNyDPWfpcvnL7
 iwCc23ASE+Tt+Kq8=;
Received: from mx2.suse.de ([195.135.220.15])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1leape-00076U-HZ
 for v9fs-developer@lists.sourceforge.net; Thu, 06 May 2021 10:02:13 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 86A7BB17F;
 Thu,  6 May 2021 10:02:01 +0000 (UTC)
Received: from localhost (brahms [local])
 by brahms (OpenSMTPD) with ESMTPA id 139b4b61;
 Thu, 6 May 2021 10:03:32 +0000 (UTC)
From: Luis Henriques <lhenriques@suse.de>
To: Eric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov
 <lucho@ionkov.net>, Dominique Martinet <asmadeus@codewreck.org>
Date: Thu, 06 May 2021 11:03:31 +0100
Message-ID: <87czu45gcs.fsf@suse.de>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1leape-00076U-HZ
Subject: [V9fs-developer] 9p: fscache duplicate cookie
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
Cc: David Howells <dhowells@redhat.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi!

I've been seeing fscache complaining about duplicate cookies in 9p:

 FS-Cache: Duplicate cookie detected
 FS-Cache: O-cookie c=00000000ba929e80 [p=000000002e706df1 fl=226 nc=0 na=1]
 FS-Cache: O-cookie d=0000000000000000 n=0000000000000000
 FS-Cache: O-key=[8] '0312710100000000'
 FS-Cache: N-cookie c=00000000274050fe [p=000000002e706df1 fl=2 nc=0 na=1]
 FS-Cache: N-cookie d=0000000037368b65 n=000000004047ed1f
 FS-Cache: N-key=[8] '0312710100000000'

It's quite easy to reproduce in my environment by running xfstests using
the virtme scripts to boot a test kernel.  A quick look seems to indicate
the warning comes from the v9fs_vfs_atomic_open_dotl() path:

[  383.688975]  __fscache_acquire_cookie+0xd1/0x2d0
[  383.688983]  v9fs_cache_inode_get_cookie.part.0+0xd1/0x100
[  383.688988]  ? v9fs_vfs_link+0x160/0x160
[  383.688994]  v9fs_inode_from_fid_dotl+0x141/0x180 
[  383.688998]  v9fs_vfs_lookup.part.0+0x1ab/0x1f0
[  383.689003]  ? v9fs_vfs_create+0x80/0x80 
[  383.689007]  v9fs_vfs_atomic_open_dotl+0x14f/0x4f0 
[  383.689011]  ? do_raw_spin_unlock+0xa3/0x130
[  383.689016]  ? v9fs_inode_from_fid_dotl+0x180/0x180
[  383.689021]  ? __d_lookup_rcu+0x270/0x270
[  383.689029]  ? down_read+0x13b/0x2c0
[  383.689044]  ? rwsem_down_read_slowpath+0x5b0/0x5b0
[  383.689052]  ? __d_lookup+0xb7/0x220
[  383.689059]  path_openat+0xb33/0x15a0
[  383.689068]  ? path_lookupat.isra.0+0x230/0x230
[  383.689073]  ? orc_find.part.0+0x200/0x200
[  383.689078]  ? ftrace_ops_trampoline+0x51/0x80
[  383.689083]  ? __kernel_text_address+0xe/0x30
[  383.689087]  ? unwind_get_return_address+0x2f/0x50
[  383.689091]  ? set_syscall_user_dispatch+0xb0/0xb0
[  383.689096]  ? arch_stack_walk+0x9e/0xf0
[  383.689101]  do_filp_open+0x136/0x1c0
[  383.689105]  ? may_open_dev+0x50/0x50
[  383.689109]  ? simple_attr_release+0x30/0x30
[  383.689113]  ? do_raw_spin_lock+0x119/0x1d0
[  383.689116]  ? rwlock_bug.part.0+0x60/0x60
[  383.689119]  ? do_raw_spin_unlock+0xa3/0x130
[  383.689123]  ? _raw_spin_unlock+0xa/0x10
[  383.689128]  ? alloc_fd+0x12e/0x290
[  383.689132]  do_sys_openat2+0x2f6/0x420
[  383.689137]  ? file_open_root+0x200/0x200
[  383.689141]  ? rwsem_wake.isra.0+0x100/0x100
[  383.689146]  do_sys_open+0x8a/0xe0
[  383.689150]  ? filp_open+0x50/0x50
[  383.689153]  ? asm_exc_page_fault+0x8/0x30
[  383.689156]  ? __x64_sys_openat+0x3e/0x60
[  383.689159]  do_syscall_64+0x45/0x80
[  383.689163]  entry_SYSCALL_64_after_hwframe+0x44/0xae

Is this a know issue?

Cheers,
-- 
Luis


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
