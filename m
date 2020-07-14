Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 88FA62200F5
	for <lists+v9fs-developer@lfdr.de>; Wed, 15 Jul 2020 01:15:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jvU8s-0005x3-Aj; Tue, 14 Jul 2020 23:15:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3fDwOXwkbAC0bhiTJUUNaJYYRM.PXXPUNdbNaLXWcNWc.LXV@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1jvU8r-0005ww-UC
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Jul 2020 23:15:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y4iEWtfU0KeH/HIu2aGf4JNxF8z33lh3eOzOWOGJp8c=; b=J32DhRJeW4607Jim91BHIlKhzQ
 Hdcu74SWrDU3RoPH1IH0Eud6D/BFO0twW5NejWdZX0NPyDXe4tHlhEF4b2u5o2COe0S9x+rjyn/u+
 lpSLiYQIoN14OcAFB5v/h6Evg79SLB00uRCmyqPH4eqciTiLFaWzI8oKIN8eg47Vknic=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=y4iEWtfU0KeH/HIu2aGf4JNxF8z33lh3eOzOWOGJp8c=; b=b
 wGAWvjp+F9I5XO00lIsocFDRha04f6WlXajfp6NZg+GY956VdP6+BUDU2Lsanr2qt3JXcgW9HNNbg
 Jwkd0wv8xOdvPyWOC+rTpwMjf3Q2enwZdsovMYvAjuaLP5Rm1a34QOseCpKSAoa7B/TB+05fCy4nz
 ksHznCAkhJJM9K1Y=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jvU8q-003bGl-L5
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Jul 2020 23:15:17 +0000
Received: by mail-io1-f70.google.com with SMTP id d22so218399iom.14
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 14 Jul 2020 16:15:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=y4iEWtfU0KeH/HIu2aGf4JNxF8z33lh3eOzOWOGJp8c=;
 b=C23jtw1i1Q0DRSr5keOTgi7YY8wNy4rHveaJsuoTBBoqcq5LNONeLyYhBqQS/DvT8p
 fH7X0SHjM5XR86VKYhvx4L9aArmYaiaCFdmGK47RUDNxPcDgg5aX2s8OzJziMMT1cwE4
 Z7tSvcBhZymNRKFe14gcFBN26g97DEVL7Xq7wzIUiMujNAzttt8EPxY9Phv3e3KMt1ik
 uat3j+dTg2o1iz+i7LWFng/2mmjo16G6/HSB6D2RkFIz6F78m8vYi3k++HiBif54eKoX
 wHJrMSLt3Bh/wblcIKhyX6ymK4blR2GzkIX6H3hHsrKSaRxt5yusAj4NMemlk4QLEcMV
 twVQ==
X-Gm-Message-State: AOAM532YbikV9vz0AvXd1Mm2mXm/LfNnY/jw8641DE91aAsT94zegjp9
 A5IDfwEgmA16+NlrFgMwEOgdWfZHujgiKjuC3p2ymm5ZyxNC
X-Google-Smtp-Source: ABdhPJzfIFFcizVg12hR+hNQck2LRndW+7B2KWWZoAqBVlSMjhnFcb+cKydgja6nAeyP//6r0JVKHznfXB7ulbcFhzayU6bf3/s6
MIME-Version: 1.0
X-Received: by 2002:a6b:d301:: with SMTP id s1mr7292773iob.146.1594768508659; 
 Tue, 14 Jul 2020 16:15:08 -0700 (PDT)
Date: Tue, 14 Jul 2020 16:15:08 -0700
In-Reply-To: <0000000000005f350105aa0af108@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000752cbc05aa6efa98@google.com>
From: syzbot <syzbot+e6f77e16ff68b2434a2c@syzkaller.appspotmail.com>
To: asmadeus@codewreck.org, ericvh@gmail.com, hch@infradead.org, hch@lst.de, 
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 lucho@ionkov.net, 
 nazard@nazar.ca, netdev@vger.kernel.org, syzkaller-bugs@googlegroups.com, 
 v9fs-developer@lists.sourceforge.net, viro@zeniv.linux.org.uk
X-Spam-Score: 2.8 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: appspotmail.com]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.70 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
X-Headers-End: 1jvU8q-003bGl-L5
Subject: Re: [V9fs-developer] WARNING in __kernel_write
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

syzbot has bisected this issue to:

commit 81238b2cff1469ff5b94390d026cd075105d6dcd
Author: Christoph Hellwig <hch@lst.de>
Date:   Thu May 7 17:33:03 2020 +0000

    fs: implement kernel_write using __kernel_write

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=10d829bf100000
start commit:   be978f8f Add linux-next specific files for 20200713
git tree:       linux-next
final oops:     https://syzkaller.appspot.com/x/report.txt?x=12d829bf100000
console output: https://syzkaller.appspot.com/x/log.txt?x=14d829bf100000
kernel config:  https://syzkaller.appspot.com/x/.config?x=3fe4fccb94cbc1a6
dashboard link: https://syzkaller.appspot.com/bug?extid=e6f77e16ff68b2434a2c
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=11fe004f100000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16d35f33100000

Reported-by: syzbot+e6f77e16ff68b2434a2c@syzkaller.appspotmail.com
Fixes: 81238b2cff14 ("fs: implement kernel_write using __kernel_write")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
