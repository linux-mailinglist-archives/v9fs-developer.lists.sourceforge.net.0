Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B95F115E44
	for <lists+v9fs-developer@lfdr.de>; Sat,  7 Dec 2019 20:45:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1idg0y-0000Ua-Vh; Sat, 07 Dec 2019 19:45:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3PAHsXQkbAOMXdePFQQJWFUUNI.LTTLQJZXJWHTSYJSY.HTR@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1idg0q-0000Tg-BC
 for v9fs-developer@lists.sourceforge.net; Sat, 07 Dec 2019 19:45:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wS16iwY4SHAgS9TQBNqZiLR/a6ESQzbpzGaub4GpqpA=; b=R+T02V7A0WzL0hhzfnZAMPBh/z
 Zxv/FPG+NqVHSGf++yorpb112MVQFBeGoqM/tSsrQsXgv9nXwmu49hxlHv+V8dwPsarME9Yv0I5Ux
 t0Qr5rb4wwulv6Nrhwk1YR5EMZg5mSo3Nd/Om0pcXi5PuMIAuJzNq8DS62F9FSBpJIBA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=wS16iwY4SHAgS9TQBNqZiLR/a6ESQzbpzGaub4GpqpA=; b=E
 vphcEjZaELmGOWHOqfTkllnFOSl/VEa9Ny0EFFD67XMo4Na9VPBXVWpl6uAWjtrG6I8LbT4Y8rmUL
 ya7B+Tj8RS+U+dx1a937mSOoJNF3v92o2AqpmXQmktBT3ey1Bjx3RqSjAgOFVY9hboP2z1w/qn7Ku
 3W1t+fLGcVP719cI=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1idg0o-00Cycc-Ee
 for v9fs-developer@lists.sourceforge.net; Sat, 07 Dec 2019 19:45:08 +0000
Received: by mail-il1-f197.google.com with SMTP id s85so8166844ild.13
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 07 Dec 2019 11:45:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=wS16iwY4SHAgS9TQBNqZiLR/a6ESQzbpzGaub4GpqpA=;
 b=qdZlkJDjGRCVSZK25oDvGZOpyXMTpeIlZi4Ep6mPzC2BmjU9PdYKdgGrUSHoSBnZpZ
 RmVhknqJkNGcsBu9GA6H6DaMPKPvBjKWhDUl/+hlMqRjruzNrdkagQIGSCx8XrJT2ICO
 ZZ8Fa7s9u6nkC6emCF1AV5+NQQFRKTe6jPv3q8i5Ge2YRbtt7UjX9Im4fEy2wEi/k8pg
 YdRm/KmLUr/NJ9DionIpFO63jcItRNku45MRGiNy4A2DVjTUiVOY+cIZmJ1spQdrjiTF
 n9zSAzl2Qy61qrq6A22Wu18q6FQYlpi6izUw9niebdlKnrLUeU9QkmnUeo69CM07bRmL
 QFew==
X-Gm-Message-State: APjAAAVyTe7773nZXWUCTZTwJCucwoSwzIpNm7onESekR3E/0LkC8+KY
 FJI9vjXBEP9ox2fTiY0N/IThDap/8UysmjrcfiSx1a5Cbz4Q
X-Google-Smtp-Source: APXvYqxMOz34v4xow1dYjI+bbaCYsdOSN0ZdxyIPBJDZ8r/SQQJ0i2OUsyFKZ5sPLHCufzkzxsAmqoemLoiPMD9bsX8FJt+NfxS0
MIME-Version: 1.0
X-Received: by 2002:a6b:f60e:: with SMTP id n14mr14826689ioh.147.1575747900539; 
 Sat, 07 Dec 2019 11:45:00 -0800 (PST)
Date: Sat, 07 Dec 2019 11:45:00 -0800
In-Reply-To: <000000000000f665a30570885589@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000de09e70599226583@google.com>
From: syzbot <syzbot+1c9db6a163a4000d0765@syzkaller.appspotmail.com>
To: asmadeus@codewreck.org, davem@davemloft.net, dominique.martinet@cea.fr, 
 ericvh@gmail.com, jiangyiwen@huwei.com, linux-kernel@vger.kernel.org, 
 lucho@ionkov.net, netdev@vger.kernel.org, rminnich@sandia.gov, 
 syzkaller-bugs@googlegroups.com, tomasbortoli@gmail.com, 
 v9fs-developer@lists.sourceforge.net, viro@zeniv.linux.org.uk
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.197 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
X-Headers-End: 1idg0o-00Cycc-Ee
Subject: Re: [V9fs-developer] KASAN: use-after-free Read in __queue_work (2)
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

syzbot suspects this bug was fixed by commit:

commit 430ac66eb4c5b5c4eb846b78ebf65747510b30f1
Author: Tomas Bortoli <tomasbortoli@gmail.com>
Date:   Fri Jul 20 09:27:30 2018 +0000

     net/9p/trans_fd.c: fix race-condition by flushing workqueue before the  
kfree()

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=15661282e00000
start commit:   ca04b3cc Merge tag 'armsoc-fixes' of git://git.kernel.org/..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=2ca6c7a31d407f86
dashboard link: https://syzkaller.appspot.com/bug?extid=1c9db6a163a4000d0765
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1473a452400000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14087748400000

If the result looks correct, please mark the bug fixed by replying with:

#syz fix: net/9p/trans_fd.c: fix race-condition by flushing workqueue  
before the kfree()

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
