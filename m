Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 310D3433711
	for <lists+v9fs-developer@lfdr.de>; Tue, 19 Oct 2021 15:30:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mcpBz-0003o2-DQ; Tue, 19 Oct 2021 13:30:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <marc.c.dionne@gmail.com>) id 1mcpBx-0003nw-DT
 for v9fs-developer@lists.sourceforge.net; Tue, 19 Oct 2021 13:30:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=l2fMMxDDiXx3vgfR9XbtY8zVEKvNNXiKJ69kmRp4vQM=; b=V2H8lt5zeUp4dK1Y4K5k7Rw0td
 ub6zFWMHN4tuz+FVsDtknP/+0Jsyx44qMkjnDBkLWB93zOLvlvW8ALA3sfV1mu2fzz/BF3V5OhBxc
 0WjJz8Nat2Ezi5saNb/vyMxGIxUlwhWPy7xONtNvin0XoRhEWNs9ptaav2x/wP48UkW8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=l2fMMxDDiXx3vgfR9XbtY8zVEKvNNXiKJ69kmRp4vQM=; b=OAPtMhGfmLPdNM1KVihvhtLdEd
 1bP8t+28bDxF4YCIO8Vs8FlM5sWEihmzrRZ5ZW5U873pmAUuYkPcT0mw1sGg17j5UbjV/Caxga2SY
 oFJQiiRcdhfALKJIflyAX8RiAscj8tlz5YxilX76kKNc6MtUV4yHSR5bT0/LAROu9QeQ=;
Received: from mail-ed1-f48.google.com ([209.85.208.48])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mcpBw-0061eC-C2
 for v9fs-developer@lists.sourceforge.net; Tue, 19 Oct 2021 13:30:09 +0000
Received: by mail-ed1-f48.google.com with SMTP id r18so13108155edv.12
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 19 Oct 2021 06:30:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=l2fMMxDDiXx3vgfR9XbtY8zVEKvNNXiKJ69kmRp4vQM=;
 b=Fg4QW0vH6co74RpmKZA29UzkchI4MPFFm9zOa0jadQ/haqm8DXZ8auBbpb69tXjyD/
 vTAFEFwb5BehAYpRuIeXSh+GIXb9SZq1nwFp8dq7KKmrzR88WAE24l5EE/KUBvBDC3We
 YUaL+HMxcUsN4ZkoW32fb0b5hOeYfq7o0tPMS1HzaxxS2iXw+g/6a2/CTb56RDoEM9bA
 hRG2NM6i9n1RdA9DkVwMfAJ8GedANaDZ2wSaB2TGuhxSpHH22FZ42RJRArNO+iqgje7a
 Jui427NbPIb2Hq3bmKXqcqetDu0RKZEn0kifXBw13RKtNTT7CDh5+YBu9rgBoG3eHseO
 3Gdg==
X-Gm-Message-State: AOAM530fVG7sj5ePJXY1mClTnursnHjLZqYWE3VFbVoyFDIlclPwDV6Y
 wlJE/lAopFVct8sYQpdqvbZ5i29uLHJxLIEL
X-Google-Smtp-Source: ABdhPJyW8onkrdd8elpX6Rj+Vkg08IdcgZyHo6NQQBj3HQPqXVMlNUPixDHxlPSJ11JkBZ4hEbcQKQ==
X-Received: by 2002:a17:907:6d9f:: with SMTP id
 sb31mr37390794ejc.109.1634650177198; 
 Tue, 19 Oct 2021 06:29:37 -0700 (PDT)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com.
 [209.85.128.50])
 by smtp.gmail.com with ESMTPSA id j1sm560699edk.53.2021.10.19.06.29.35
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 Oct 2021 06:29:36 -0700 (PDT)
Received: by mail-wm1-f50.google.com with SMTP id g2so11921248wme.4
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 19 Oct 2021 06:29:35 -0700 (PDT)
X-Received: by 2002:a1c:a443:: with SMTP id n64mr6116840wme.32.1634650175559; 
 Tue, 19 Oct 2021 06:29:35 -0700 (PDT)
MIME-Version: 1.0
References: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
In-Reply-To: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
From: Marc Dionne <marc.dionne@auristor.com>
Date: Tue, 19 Oct 2021 10:29:24 -0300
X-Gmail-Original-Message-ID: <CAB9dFdumxi0U_339S3PfC4TL83Srqn+qGz2AAbJ995NiLhbxnw@mail.gmail.com>
Message-ID: <CAB9dFdumxi0U_339S3PfC4TL83Srqn+qGz2AAbJ995NiLhbxnw@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Oct 18,
 2021 at 11:50 AM David Howells <dhowells@redhat.com>
 wrote: > > > Here's a set of patches that rewrites and simplifies the fscache
 index API > to remove the complex operation schedulin [...] 
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.48 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.48 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [marc.c.dionne[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mcpBw-0061eC-C2
Subject: Re: [V9fs-developer] [Linux-cachefs] [PATCH 00/67] fscache: Rewrite
 index API and management system
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, linux-mm@kvack.org,
 linux-afs@lists.infradead.org, Shyam Prasad N <nspmangalore@gmail.com>,
 linux-cifs@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-cachefs@redhat.com, Trond Myklebust <trondmy@hammerspace.com>,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 Kent Overstreet <kent.overstreet@gmail.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, ceph-devel@vger.kernel.org,
 Trond Myklebust <trond.myklebust@hammerspace.com>, linux-nfs@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Steve French <sfrench@samba.org>, linux-fsdevel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Oct 18, 2021 at 11:50 AM David Howells <dhowells@redhat.com> wrote:
>
>
> Here's a set of patches that rewrites and simplifies the fscache index API
> to remove the complex operation scheduling and object state machine in
> favour of something much smaller and simpler.  It is built on top of the
> set of patches that removes the old API[1].

Testing this series in our afs test framework, saw the oops pasted below.

cachefiles_begin_operation+0x2d maps to cachefiles/io.c:565, where
object is probably NULL (object->file is at offset 0x28).

Marc
===
BUG: kernel NULL pointer dereference, address: 0000000000000028
#PF: supervisor read access in kernel mode
#PF: error_code(0x0000) - not-present page
PGD 0 P4D 0
Oops: 0000 [#1] SMP NOPTI
CPU: 5 PID: 16607 Comm: ar Tainted: G            E
5.15.0-rc5.kafs_testing+ #37
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS
1.14.0-2.fc34 04/01/2014
RIP: 0010:cachefiles_begin_operation+0x2d/0x80 [cachefiles]
Code: 00 00 55 53 48 83 ec 08 48 8b 47 08 48 83 7f 10 00 48 8b 68 20
74 0c b8 01 00 00 00 48 83 c4 08 5b 5d c3 48 c7 07 a0 12 1b a0 <48> 8b
45 28 48 89 fb 48 85 c0 74 20 48 8d 7d 04 89 74 24 04 e8 3a
RSP: 0018:ffffc90000d33b48 EFLAGS: 00010246
RAX: ffff888014991420 RBX: ffff888100ae9cf0 RCX: 0000000000000000
RDX: 0000000000000001 RSI: 0000000000000000 RDI: ffff888100ae9cf0
RBP: 0000000000000000 R08: 00000000000006b8 R09: ffff88810e98e000
R10: 0000000000000000 R11: 0000000000000000 R12: ffff888014991434
R13: 0000000000000002 R14: ffff888014991420 R15: 0000000000000002
FS:  00007f72d0486b80(0000) GS:ffff888139940000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000000000000028 CR3: 000000007bac8004 CR4: 0000000000770ee0
PKRU: 55555554
Call Trace:
 fscache_begin_operation.part.0+0x1e3/0x210 [fscache]
 netfs_write_begin+0x3fb/0x800 [netfs]
 ? __fscache_use_cookie+0x120/0x200 [fscache]
 afs_write_begin+0x58/0x2c0 [kafs]
 ? __vfs_getxattr+0x2a/0x70
 generic_perform_write+0xb1/0x1b0
 ? file_update_time+0xcf/0x120
 __generic_file_write_iter+0x14c/0x1d0
 generic_file_write_iter+0x5d/0xb0
 afs_file_write+0x73/0xa0 [kafs]
 new_sync_write+0x105/0x180
 vfs_write+0x1cb/0x260
 ksys_write+0x4f/0xc0
 do_syscall_64+0x35/0x80
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x7f72d059a7a7
Code: 0d 00 f7 d8 64 89 02 48 c7 c0 ff ff ff ff eb b7 0f 1f 00 f3 0f
1e fa 64 8b 04 25 18 00 00 00 85 c0 75 10 b8 01 00 00 00 0f 05 <48> 3d
00 f0 ff ff 77 51 c3 48 83 ec 28 48 89 54 24 18 48 89 74 24
RSP: 002b:00007fffc31942b8 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
RAX: ffffffffffffffda RBX: 0000000000000008 RCX: 00007f72d059a7a7
RDX: 0000000000000008 RSI: 000055fe42367730 RDI: 0000000000000003
RBP: 000055fe42367730 R08: 0000000000000000 R09: 00007f72d066ca00
R10: 000000000000007c R11: 0000000000000246 R12: 0000000000000008


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
