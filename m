Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF91123DBA
	for <lists+v9fs-developer@lfdr.de>; Wed, 18 Dec 2019 04:11:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ihPjy-0004mZ-P2; Wed, 18 Dec 2019 03:11:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3xZj5XQkbANIGMN8y992FyDD61.4CC492IG2F0CBH2BH.0CA@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ihPjx-0004mQ-KJ
 for v9fs-developer@lists.sourceforge.net; Wed, 18 Dec 2019 03:11:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=B/UHccQy2GUPLjKClLjPB9mKSYRSTTFVhiFG9ktmLyQ=; b=BSw27c6eOeZk/pLeWlVE7FKdI/
 /8hJCVrdWLKuFOCckt1dRaw6tnPh1fZ9TBcHLmyqD+IZXx05bZcuyechdNBBBRbLNZUt4vick4qkv
 allk4eKvAt1mdYRlUV9Zvr3MAHmIoG2UPiZCXJU/fiUoczhMxN0kCZcnSCl5vvnyBSiQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=B/UHccQy2GUPLjKClLjPB9mKSYRSTTFVhiFG9ktmLyQ=; b=n
 CRULJcrZ61RhkUu55aE4SHrsAW6Jpjxse4pKoDhmyYDgyRZqtybq8rm5R7GIWvc5yRG0JfxD37TLq
 2VS6y/mpWxnSavmF4fOpv71QE7yxFqcwbzygz1h50bUnwNdv+V1DBrw3y7ngZuHTb0IYApB9WhR9n
 G5AQo0QSop2OWBQg=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1ihPjv-008QPL-Md
 for v9fs-developer@lists.sourceforge.net; Wed, 18 Dec 2019 03:11:09 +0000
Received: by mail-il1-f199.google.com with SMTP id j17so640641ilc.10
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 17 Dec 2019 19:11:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=B/UHccQy2GUPLjKClLjPB9mKSYRSTTFVhiFG9ktmLyQ=;
 b=OqFhcl7I5/Xtv9XSSeXw7E6/4yJDNwQ07QUHd1UZDcs1lY3vMM+YPIQw9kG7PU+xg3
 kgB0vP6aj9JnLWBmkb+G/krGj76J0QhO6He4U3HujivMUikv53x9HSQVYv5OW5W8otwF
 7QbbTbGU66g4wQU3QgiYFGPPR9jp3VDWir2Y8/oJD+Xu6Q6GKsB0EkNoWwZ3snZcPMcr
 bqSnT54rNgZhLTfJjc5NXNvesCydz2XwlSngPq3JtWrJbNqv2cN3rJUbsxui/8thrjuT
 qzrDSWefQ7hsUXbEVmpWrvS/xp5XTVtgzebSy0voKGL6vCSiFTZfPdUzKUqfpuXNRB7w
 I6xg==
X-Gm-Message-State: APjAAAUJLPutnagUKFBmQOzYHsJaLQBkumB36F7ptBgXtzqLc9MdtRZV
 ugJOt77Z2TDOuiy2ZXeTY5//OsHKtmYBAYrwTYs63pEyLVSH
X-Google-Smtp-Source: APXvYqyMCK4p3QJRNreOaLBgYJejAM1cYoWdGoPJ26FTPuaQyelg3Sjap478JDrBsEezCSHSp7yUtmv244NHO0fzr3UX5/+ddebT
MIME-Version: 1.0
X-Received: by 2002:a02:cdcb:: with SMTP id m11mr361306jap.125.1576638661887; 
 Tue, 17 Dec 2019 19:11:01 -0800 (PST)
Date: Tue, 17 Dec 2019 19:11:01 -0800
In-Reply-To: <000000000000b6b450059870d703@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000618d6a0599f1cb49@google.com>
From: syzbot <syzbot+02d9172bf4c43104cd70@syzkaller.appspotmail.com>
To: davem@davemloft.net, ericvh@gmail.com, hverkuil-cisco@xs4all.nl, 
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, lucho@ionkov.net, 
 mchehab@kernel.org, netdev@vger.kernel.org, rminnich@sandia.gov, 
 syzkaller-bugs@googlegroups.com, v9fs-developer@lists.sourceforge.net, 
 viro@zeniv.linux.org.uk, vivek.kasireddy@intel.com
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.199 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
X-Headers-End: 1ihPjv-008QPL-Md
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

syzbot has bisected this bug to:

commit 7594bf37ae9ffc434da425120c576909eb33b0bc
Author: Al Viro <viro@zeniv.linux.org.uk>
Date:   Mon Jul 17 02:53:08 2017 +0000

     9p: untangle ->poll() mess

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=15e323a6e00000
start commit:   d7688697 Merge tag 'for-linus' of git://git.kernel.org/pub..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=13e323a6e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=121b4285bac421fe
dashboard link: https://syzkaller.appspot.com/bug?extid=02d9172bf4c43104cd70
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=119c517ae00000

Reported-by: syzbot+02d9172bf4c43104cd70@syzkaller.appspotmail.com
Fixes: 7594bf37ae9f ("9p: untangle ->poll() mess")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
