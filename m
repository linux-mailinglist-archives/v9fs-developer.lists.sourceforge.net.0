Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9273512AE18
	for <lists+v9fs-developer@lfdr.de>; Thu, 26 Dec 2019 19:59:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ikYLt-00030n-7e; Thu, 26 Dec 2019 18:59:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3_AIFXgkbAA05BCxnyyr4n22vq.t11tyr75r4p106r06.p1z@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ikYLr-00030X-Ov
 for v9fs-developer@lists.sourceforge.net; Thu, 26 Dec 2019 18:59:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TNo0QHyIeHdI/8GLONj6hbWPDE88TILb9xkj6RUQsSU=; b=gwjLD0lfds2CRBtN19PWgfpmzm
 DSF9CEsCtdDhU5cMH9FeGWRUSpGUVFx+GSUPTuY+f6MUzWA3/nb0xPTTbaE8ea4dj9Umkxu4Z9qJn
 mJReZfOyZmMcmsI7+v8u4GcfaLzoCv4JUg9Rbapg4BgI79vHDUDzfu16AyJSsOwIEQyA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=TNo0QHyIeHdI/8GLONj6hbWPDE88TILb9xkj6RUQsSU=; b=Q
 /VUp1gGfwRv1niIoBdxPoqHMfbVZIjIkmZjmSugq19L0G8ySmNYfcawifCNK7WFzmrbAkgqNVVkiC
 CY6w3TkJCZxRJISERYvNXNzYVmKq2sp6uaSc2+pII6V37bqLMwfkpj0S/9jJZzRyWiLj1aSy8Urs4
 X5zJUxsADR7iul20=;
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1ikYLq-00FkvN-7J
 for v9fs-developer@lists.sourceforge.net; Thu, 26 Dec 2019 18:59:15 +0000
Received: by mail-io1-f69.google.com with SMTP id t17so12804613ioi.11
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 26 Dec 2019 10:59:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=TNo0QHyIeHdI/8GLONj6hbWPDE88TILb9xkj6RUQsSU=;
 b=JJdgIvDIm0k58u8t1KbEaKhmGbtIPDOZ8mpYh3S42sOhsrwSZgQmsf5GH0MN3WiAHK
 V/ZPg5LdhpiRKEvDsdVcjddzvbDNV9S5lwe+6hC6XPcnqC0mozs5QGIU4dgAAQE3IhES
 tKvSpeb1hB3RBUIvc77n0QVDoAb0g7YdsDry+CAJZgQDkcgdqXb+EOQZB35SxZyVm0rR
 S+eTsbySRE0JvLJC2Hq6RHmQRJ5T867lyOvwlytL9hRGCel50FqnhJimjjF9waAOQshz
 uK3s4+KmZDWZIBXdaffxni1+lh2/yqQr4Bl+xyZ6pFuPing4btKljthBMOcWHKXaUyZj
 VXng==
X-Gm-Message-State: APjAAAUUwrtOtWQIaCK9Ntx9UC5q8DQXSSty8s5uL7kLfU/B8XguPehE
 1i8jocq622l4Ro7JeeY+jsw2hCS4zakLYivUlHMCeMuHKTGD
X-Google-Smtp-Source: APXvYqwLsoPbnZNDL141I7xVT62mvkZcF8D3gKtHxDqMdO+g8VRSHXkHzrX3fgjNRU3y1dP84SMEw9ukIxpeSESgakL8a0gBWPJ+
MIME-Version: 1.0
X-Received: by 2002:a92:d805:: with SMTP id y5mr39807073ilm.194.1577386748390; 
 Thu, 26 Dec 2019 10:59:08 -0800 (PST)
Date: Thu, 26 Dec 2019 10:59:08 -0800
In-Reply-To: <000000000000b6b450059870d703@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000cfb39e059a9ff822@google.com>
From: syzbot <syzbot+02d9172bf4c43104cd70@syzkaller.appspotmail.com>
To: davem@davemloft.net, ericvh@gmail.com, hverkuil-cisco@xs4all.nl, 
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, lucho@ionkov.net, 
 mchehab@kernel.org, netdev@vger.kernel.org, rminnich@sandia.gov, 
 syzkaller-bugs@googlegroups.com, v9fs-developer@lists.sourceforge.net, 
 viro@zeniv.linux.org.uk, vivek.kasireddy@intel.com
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: appspotmail.com]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.69 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.69 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
X-Headers-End: 1ikYLq-00FkvN-7J
Subject: Re: [V9fs-developer] KASAN: global-out-of-bounds Read in
 precalculate_color
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

syzbot has found a reproducer for the following crash on:

HEAD commit:    46cf053e Linux 5.5-rc3
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=11932ce1e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=ed9d672709340e35
dashboard link: https://syzkaller.appspot.com/bug?extid=02d9172bf4c43104cd70
compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14861a49e00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1794423ee00000

The bug was bisected to:

commit 7594bf37ae9ffc434da425120c576909eb33b0bc
Author: Al Viro <viro@zeniv.linux.org.uk>
Date:   Mon Jul 17 02:53:08 2017 +0000

     9p: untangle ->poll() mess

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=15e323a6e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=13e323a6e00000

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+02d9172bf4c43104cd70@syzkaller.appspotmail.com
Fixes: 7594bf37ae9f ("9p: untangle ->poll() mess")

==================================================================
BUG: KASAN: global-out-of-bounds in precalculate_color+0x2154/0x2480  
drivers/media/common/v4l2-tpg/v4l2-tpg-core.c:942
Read of size 1 at addr ffffffff88b3d3f9 by task vivid-000-vid-c/9278

CPU: 0 PID: 9278 Comm: vivid-000-vid-c Not tainted 5.5.0-rc3-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS  
Google 01/01/2011
Call Trace:
  __dump_stack lib/dump_stack.c:77 [inline]
  dump_stack+0x197/0x210 lib/dump_stack.c:118
  print_address_description.constprop.0.cold+0x5/0x30b mm/kasan/report.c:374
  __kasan_report.cold+0x1b/0x41 mm/kasan/report.c:506
  kasan_report+0x12/0x20 mm/kasan/common.c:639
  __asan_report_load1_noabort+0x14/0x20 mm/kasan/generic_report.c:132
  precalculate_color+0x2154/0x2480  
drivers/media/common/v4l2-tpg/v4l2-tpg-core.c:942
  tpg_precalculate_colors drivers/media/common/v4l2-tpg/v4l2-tpg-core.c:1093  
[inline]
  tpg_recalc+0x561/0x2850 drivers/media/common/v4l2-tpg/v4l2-tpg-core.c:2118
  tpg_calc_text_basep+0xa1/0x290  
drivers/media/common/v4l2-tpg/v4l2-tpg-core.c:2136
  vivid_fillbuff+0x1a5f/0x3af0  
drivers/media/platform/vivid/vivid-kthread-cap.c:466
  vivid_thread_vid_cap_tick+0x8cf/0x2210  
drivers/media/platform/vivid/vivid-kthread-cap.c:727
  vivid_thread_vid_cap+0x5d8/0xa60  
drivers/media/platform/vivid/vivid-kthread-cap.c:866
  kthread+0x361/0x430 kernel/kthread.c:255
  ret_from_fork+0x24/0x30 arch/x86/entry/entry_64.S:352

The buggy address belongs to the variable:
  kbd_keycodes+0x119/0x760

Memory state around the buggy address:
  ffffffff88b3d280: fa fa fa fa 00 00 04 fa fa fa fa fa 00 00 00 00
  ffffffff88b3d300: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
> ffffffff88b3d380: 00 00 00 00 00 00 00 00 00 00 00 00 fa fa fa fa
                                                                 ^
  ffffffff88b3d400: 00 00 00 00 07 fa fa fa fa fa fa fa 00 00 00 00
  ffffffff88b3d480: 00 fa fa fa fa fa fa fa 02 fa fa fa fa fa fa fa
==================================================================



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
