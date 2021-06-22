Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3242F3B0A8F
	for <lists+v9fs-developer@lfdr.de>; Tue, 22 Jun 2021 18:43:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lvjUw-0008Cc-R4; Tue, 22 Jun 2021 16:43:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <jim.cromie@gmail.com>) id 1lvjUv-0008CV-Qk
 for v9fs-developer@lists.sourceforge.net; Tue, 22 Jun 2021 16:43:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vxFrkh6PfJNY2iqd2AHDe5xeAdZHifSt7a5NfrAQdks=; b=k2Tq/jDixsk/92BiXxFm2+Z9bY
 E9lMYAms50ktBqqDq0GSpzJPy8ok8C7D7Ewajwe887lcfzLmVv8Jnr5NHK6DTdJZ2eO04NaOsJ1Wm
 YekWO2O5IgKoyCJzeyYWZq8s1hVMux8XhBYQCaKp4+X+ewhN1psnIQEqUs2vEIhVxEow=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:MIME-Version:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=vxFrkh6PfJNY2iqd2AHDe5xeAdZHifSt7a5NfrAQdks=; b=c
 XLTsRz071dBRpoODQ5EEQseU+VS/LONiAFy54jmdOI2+jtXzZ/V7ziEZyZDaeTVePYMJaVElTs4tc
 buyZqClUkKBc9HcOO01s2pK9mY7BM0Tv+nLDuzymUfUWvUJy+UmWe/QY/zUjrw4HvKwhuY+AeWras
 QZawivK4AeBNVYnY=;
Received: from mail-vs1-f47.google.com ([209.85.217.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lvjUn-0004mM-0g
 for v9fs-developer@lists.sourceforge.net; Tue, 22 Jun 2021 16:43:38 +0000
Received: by mail-vs1-f47.google.com with SMTP id v12so3046173vsg.10
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 22 Jun 2021 09:43:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=vxFrkh6PfJNY2iqd2AHDe5xeAdZHifSt7a5NfrAQdks=;
 b=Umxe35UwNjjAj+hJrhbXSFm925lsc4u1dcC9gWmt/oNuXPcZf6IMOfyqWba1dlU7XR
 X4j1bnaCLRyZsrXH/XeRxFnDgPsmtS4xkAIG3JnBz2UXpEKN2FBe/RzmEu415j5XWea1
 oK4DVief2uEtFwqgktetSFFwgGh0IrziVEbNxLAZMJ5fooSbie2dHEF061ZIXRxb4BDN
 +JTEHPLyTkDSd3VisOkuY6f/10X/crO0vmAYvGuSFVdHRLJL6yH0j/BlSgUoAEjTOpLD
 8cGuKiMcvnZkaJcd1YtGQEEauTsE5Wn4dj+AsKrzRxXlF7OsL1U+4PFvfNmSX5FTjl99
 wZ6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=vxFrkh6PfJNY2iqd2AHDe5xeAdZHifSt7a5NfrAQdks=;
 b=V6dJ9YbqlTLwyD9PJztFSRETNGW9FAJI0hKenYVYbZdbwfcq38lQYshqbx178bWY49
 uRfCMRtFQyQkOnbhbawm0quisoHGAOpE8yVkzAkAYgUIedvxk5cPPlUQsjJ6Iz1Nfn/I
 fPUIfGAKzVlEaqxhroSkp3Q+5AHJ94nHtSO/Br9qyyjRIFHej0JxKe32+q5MMy30vZ/i
 IbJ1t6+Xfkqahyd6M8HKN19zIzpI5vu0z6gqUlw2/RCXoir8zJrossO9n1c+MicM54nM
 xVMBJtD8LgPNIBxPpzGtEtrTF0LQxXlG8Tgzc1BwVCImfECkN6IKg0WoTl6if5HzMiKJ
 Iyng==
X-Gm-Message-State: AOAM531ODjZ2qrn2FIxPknJyodgUK5EHwsVta8+Ln/pZDE0/DQ4Hss4L
 a+M3j8BbxOoHEPWTwdVSo9LW4h6US/sqrEzRlR4=
X-Google-Smtp-Source: ABdhPJwWLkaCAb7h1X1XLmSqxGwnF3HXSwVDTLJg6WxGQusSIoHDNyvkJfDpkK3Yi9UK8mDI+q7uEu0/oTSyBYU2Ax8=
X-Received: by 2002:a05:6102:ed6:: with SMTP id
 m22mr10980416vst.60.1624380204705; 
 Tue, 22 Jun 2021 09:43:24 -0700 (PDT)
MIME-Version: 1.0
From: jim.cromie@gmail.com
Date: Tue, 22 Jun 2021 10:42:58 -0600
Message-ID: <CAJfuBxxH9KVgJ7k0P5LX3fTSa4Pumcmu2NMC4P=TrGDVXE2ktQ@mail.gmail.com>
To: kasan-dev@googlegroups.com, v9fs-developer@lists.sourceforge.net
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (jim.cromie[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.47 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.217.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lvjUn-0004mM-0g
Subject: [V9fs-developer] KCSAN BUG report on p9_client_cb / p9_client_rpc
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
Cc: LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

I got this on rc7 + my hacks ( not near p9 )
ISTM someone here will know what it means.
If theres anything else i can do to help,
(configs, drop my patches and retry)
 please let me know



[   14.904783] ==================================================================
[   14.905848] BUG: KCSAN: data-race in p9_client_cb / p9_client_rpc
[   14.906769]
[   14.907040] write to 0xffff888005eb0360 of 4 bytes by interrupt on cpu 0:
[   14.907989]  p9_client_cb+0x1a/0x100
[   14.908485]  req_done+0xd3/0x130
[   14.908931]  vring_interrupt+0xac/0x130
[   14.909460]  __handle_irq_event_percpu+0x64/0x260
[   14.910095]  handle_irq_event+0x93/0x120
[   14.910637]  handle_edge_irq+0x123/0x400
[   14.911156]  __common_interrupt+0x3e/0xa0
[   14.911723]  common_interrupt+0x7e/0xa0
[   14.912270]  asm_common_interrupt+0x1e/0x40
[   14.912816]  native_safe_halt+0xe/0x10
[   14.913350]  default_idle+0xa/0x10
[   14.913801]  default_idle_call+0x38/0xc0
[   14.914361]  do_idle+0x1e7/0x270
[   14.914840]  cpu_startup_entry+0x19/0x20
[   14.915436]  rest_init+0xd0/0xd2
[   14.915878]  arch_call_rest_init+0xa/0x11
[   14.916428]  start_kernel+0xacb/0xadd
[   14.916927]  secondary_startup_64_no_verify+0xc2/0xcb
[   14.917613]
[   14.917819] read to 0xffff888005eb0360 of 4 bytes by task 261 on cpu 1:
[   14.918764]  p9_client_rpc+0x1cf/0x860
[   14.919340]  p9_client_walk+0xcf/0x350
[   14.919857]  v9fs_file_open+0x16c/0x340
[   14.920411]  do_dentry_open+0x298/0x6a0
[   14.920980]  vfs_open+0x58/0x60
[   14.921475]  path_openat+0x1130/0x1860
[   14.922126]  do_filp_open+0x116/0x1f0
[   14.922731]  do_sys_openat2+0x91/0x190
[   14.923267]  __x64_sys_openat+0x9b/0xd0
[   14.923790]  do_syscall_64+0x42/0x80
[   14.924295]  entry_SYSCALL_64_after_hwframe+0x44/0xae
[   14.924955]
[   14.925159] Reported by Kernel Concurrency Sanitizer on:
[   14.925899] CPU: 1 PID: 261 Comm: ip Not tainted
5.13.0-rc7-dd7i-00036-gb82eaba47adf-dirty #121
[   14.927094] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996),
BIOS 1.14.0-3.fc34 04/01/2014
[   14.928292] ==================================================================
virtme-init: console is ttyS0


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
