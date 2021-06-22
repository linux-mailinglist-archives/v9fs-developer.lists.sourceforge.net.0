Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A6BD53B0E73
	for <lists+v9fs-developer@lfdr.de>; Tue, 22 Jun 2021 22:16:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lvmp1-0008NC-BX; Tue, 22 Jun 2021 20:16:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jim.cromie@gmail.com>) id 1lvmoz-0008Mu-5K
 for v9fs-developer@lists.sourceforge.net; Tue, 22 Jun 2021 20:16:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C767tPdPdMoTyOta+1ttzfqbko9nfCsk2O/+WzaTSOc=; b=b1n6YCYlLPeXthONXWbb5p+x9a
 Nwcb1qnvqF7WGlZX8ouXbFuQJpG3B1mXeMhwRgmQhhDAHRNzm1W6GmMs+I3MkVKRiZw00mz3fPVyZ
 uiJyjudSj03Cgf4PwsZzWwo4iEj95LVQ5qU0Skmkh4eB6h6zlK/XNvUbdNdbPQ0E6Nqo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=C767tPdPdMoTyOta+1ttzfqbko9nfCsk2O/+WzaTSOc=; b=KVdlrDPlXQyub1K9U5Ml0tTzoy
 x6u/oBLjZZriLMxHUUTxqX/Q9l2KpbI9hnNnyJpEnmpzXTtwsAajX8XUH7kraBWsGwokuGIrf2mFR
 TCfa9y0noRBDAi1WMyqskoWguhAzd8tL6RY3GFXGc+Ln707uBox3cAcqb+nhNzF04NtY=;
Received: from mail-vs1-f48.google.com ([209.85.217.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lvmoo-0001I4-JT
 for v9fs-developer@lists.sourceforge.net; Tue, 22 Jun 2021 20:16:33 +0000
Received: by mail-vs1-f48.google.com with SMTP id z7so222841vso.3
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 22 Jun 2021 13:16:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=C767tPdPdMoTyOta+1ttzfqbko9nfCsk2O/+WzaTSOc=;
 b=brsp2b6GVfjwXNcqR2+Qwfm6Fvs7W9Zb8Zn4KFCLs0CY1f1BwuGWwZYrwhZbudPH1+
 lJhJglZA1LL0iEJ+qeSpSp6D77Y1qN5OEN3a63A/BFY2t1nUhmFzPgfs/lEk8/qFOzn3
 CK8qTWVM0sDLUdkgcv1yRy1SNqdo0rU1HA5ww/eQCkev99yRXErh0SkON2OSxCs244ZE
 Jzabknghr5ZFRcGCVwkYoPEzIgMBUBLL/C8+1lX2B+yxT6KaSp8qLKFtBdifa25tXLp6
 KDPV0b/lH4D9iDFO+nDg2FlY/9HYE/s54f63iV/To43CAR9pk+2bG8ndyuasBjsUHvmD
 fgRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=C767tPdPdMoTyOta+1ttzfqbko9nfCsk2O/+WzaTSOc=;
 b=hPxIYqhc2TBxlr6qPiOQ6hNHj+QObLxml/e/CPb3IPJRZqwpTUU0TyD9u2GurIpgC6
 LkW27uPi64SmTjhs+GyGa1DO4VIhhFHVKmQOSfYq4mPYg2qNTVVZovjYkPaV9rZzxT3g
 8vDvhvUMG43R3Io66xzlMqWYKy38Eb7lkElS6vczjt43GU+2dT67jAnrHVls/JNs18aX
 0RQU/SHn0UyMPq/uDgw38P/w+CMJXXf9p81opg4tUTiPTn948BRI8T2SzrtVAw/+GDwe
 tPjWgbzZY9SlHo2tGR8JvftLw28NCzPEtwcW7ciSVr3r7AWLCd22HBSg5vT5caMUoo6/
 Yoeg==
X-Gm-Message-State: AOAM531lSkNTb9xxoGx7VEt7DRBqUdbsd4g81Nxea32Fb2XfTrHfhKaH
 +OplSBJ9cSR56CVSpr1wEvav1XI283TsIKpz7ko=
X-Google-Smtp-Source: ABdhPJwl5YHZlpHVwKERaOMdceiaG0z1359qLrs+ioFKajlKoThSbOVGz5t1kfVs/copPPM8Bds5BjMmoeVFn8KRjPU=
X-Received: by 2002:a67:6948:: with SMTP id e69mr25073072vsc.26.1624392978322; 
 Tue, 22 Jun 2021 13:16:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAJfuBxxH9KVgJ7k0P5LX3fTSa4Pumcmu2NMC4P=TrGDVXE2ktQ@mail.gmail.com>
 <YNIaFnfnZPGVd1t3@codewreck.org>
 <CAJfuBxywD3QrsoGszMnVbF2RYcCF7r3h7sCOg6hK7K60E+4qKA@mail.gmail.com>
In-Reply-To: <CAJfuBxywD3QrsoGszMnVbF2RYcCF7r3h7sCOg6hK7K60E+4qKA@mail.gmail.com>
From: jim.cromie@gmail.com
Date: Tue, 22 Jun 2021 14:15:52 -0600
Message-ID: <CAJfuBxw-JUpnENT9zNgTq2wdHqH-77pAjNuthoZYbtiCud4T=g@mail.gmail.com>
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (jim.cromie[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.217.48 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.48 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lvmoo-0001I4-JT
Subject: Re: [V9fs-developer] KCSAN BUG report on p9_client_cb /
 p9_client_rpc
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
Cc: v9fs-developer@lists.sourceforge.net, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

 >
> > I had assumed the p9_req_put() in p9_client_cb would protect the tag,
> > but that doesn't appear to be true -- could you try this patch if this
> > is reproductible to you?
> >
>
> I applied your patch on top of my triggering case, it fixes the report  !
> you have my tested-by

I seem to have gotten ahead of my skis,
Im seeing another now, similar to 1st, differing in 2nd block

[    8.730061] Run /bin/sh as init process
[    9.027218] ==================================================================
[    9.028237] BUG: KCSAN: data-race in p9_client_cb / p9_client_rpc
[    9.029073]
[    9.029282] write to 0xffff888005e45ea0 of 4 bytes by interrupt on cpu 0:
[    9.030214]  p9_client_cb+0x1a/0x100
[    9.030735]  req_done+0xd3/0x130
[    9.031171]  vring_interrupt+0xac/0x130
[    9.031752]  __handle_irq_event_percpu+0x64/0x260
[    9.032381]  handle_irq_event+0x93/0x120
[    9.032950]  handle_edge_irq+0x123/0x400
[    9.033502]  __common_interrupt+0x3e/0xa0
[    9.034051]  common_interrupt+0x7e/0xa0
[    9.034608]  asm_common_interrupt+0x1e/0x40
[    9.035173]  native_safe_halt+0xe/0x10
[    9.035826]  default_idle+0xa/0x10
[    9.036299]  default_idle_call+0x38/0xc0
[    9.036845]  do_idle+0x1e7/0x270
[    9.037294]  cpu_startup_entry+0x19/0x20
[    9.037905]  rest_init+0xd0/0xd2
[    9.038354]  arch_call_rest_init+0xa/0x11
[    9.038922]  start_kernel+0xacb/0xadd
[    9.039444]  secondary_startup_64_no_verify+0xc2/0xcb
[    9.040140]
[    9.040369] read to 0xffff888005e45ea0 of 4 bytes by task 1 on cpu 1:
[    9.041283]  p9_client_rpc+0x185/0x860
[    9.041837]  p9_client_getattr_dotl+0x71/0x160
[    9.042645]  v9fs_inode_from_fid_dotl+0x21/0x160
[    9.043418]  v9fs_vfs_lookup.part.0+0x139/0x180
[    9.044059]  v9fs_vfs_lookup+0x32/0x40
[    9.044584]  __lookup_slow+0xc3/0x190
[    9.045095]  walk_component+0x1b8/0x270
[    9.045626]  link_path_walk.part.0.constprop.0+0x336/0x550
[    9.046425]  path_lookupat+0x59/0x340
[    9.046935]  filename_lookup+0x134/0x2a0
[    9.047484]  user_path_at_empty+0x6d/0x90
[    9.048145]  vfs_statx+0x79/0x1a0
[    9.048610]  __do_sys_newfstatat+0x1e/0x40
[    9.049173]  __x64_sys_newfstatat+0x4e/0x60
[    9.049755]  do_syscall_64+0x42/0x80
[    9.050233]  entry_SYSCALL_64_after_hwframe+0x44/0xae
[    9.050940]
[    9.051148] Reported by Kernel Concurrency Sanitizer on:
[    9.051893] CPU: 1 PID: 1 Comm: virtme-init Not tainted
5.13.0-rc7-dd7i-00038-g4e27591489f1-dirty #126
[    9.053185] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996),
BIOS 1.14.0-3.fc34 04/01/2014
[    9.054358] ==================================================================




>
> > The tag is actually reclaimed in the woken up p9_client_rpc thread so
> > that would be a good match (reset in the other thread vs. read here),
> > caching the value is good enough but that is definitely not obvious...
> >
> > --
> > Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
