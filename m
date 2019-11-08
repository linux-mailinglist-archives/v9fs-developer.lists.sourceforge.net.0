Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A33F53D9
	for <lists+v9fs-developer@lfdr.de>; Fri,  8 Nov 2019 19:53:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1iT9Ne-0000nr-9n; Fri, 08 Nov 2019 18:53:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3jLnFXQkbAAs39Avlwwp2l00to.rzzrwp53p2nzy4py4.nzx@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1iT9Nc-0000nj-Nh
 for v9fs-developer@lists.sourceforge.net; Fri, 08 Nov 2019 18:53:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Sl9ZT+3VnhHk9C9hUuWzxJC0ZnzOKIM3/flYfXRQH6Y=; b=LaVPaNvl6uy+EO3JiZi73+wu4W
 akuwSrXnfYZ3sPWyO7zyu4FP6peUGjqI1j00gTj2s9f3LzOQIIFvYHOsYUCoOfv4LRJzR5qUZZNSw
 nHEkRmCGkGtn7yAKVph0hbJJpOcWLYLNSmeeudpblXsTDTSDGtD0i2+Q6j9lqd05146Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Sl9ZT+3VnhHk9C9hUuWzxJC0ZnzOKIM3/flYfXRQH6Y=; b=A
 7973Zd5HWWya67NSLcH07smkJ6OzKn+QQz9pVfNfvwylvF+qTWHneEtO9BElrRVSoGiyo7WDWAhLE
 3bTFPqMHFKkt/WUivdxuUZEoD7dZv5c+tBB4/oF/tpedDU8zdNBZLRv0sf8MRoaORbg2IE6ahWbPH
 UEYBHmDn7BX00T3M=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iT9Na-005oHh-Oi
 for v9fs-developer@lists.sourceforge.net; Fri, 08 Nov 2019 18:53:08 +0000
Received: by mail-il1-f198.google.com with SMTP id f6so7863912ilg.5
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 08 Nov 2019 10:53:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=Sl9ZT+3VnhHk9C9hUuWzxJC0ZnzOKIM3/flYfXRQH6Y=;
 b=IQEiowZH/e5RbC1F4iWDaECxfwd6GizFjxsiyZ9gcJ5Y4MOXQRCKce0csVdWYSOI71
 L6/rbC5ibvkgFOb9SOsjkZ5QU/X2qqHEEQCwP4XI4Fsj0AHcqJnkU7F1b1xS6HlgffZ7
 2J2/RJu1EOiTtkdbViDMWlqFfHpxiTviueVp01m8Hh3leRoM0dzAI+idh/eGDQZhklVo
 tZUiTrZ2oItpdvrJRwy9da/goy5xAiPw8W9k5pvJXYM48SBTLXP8uIN+kZFOi/SGgVqq
 KSySYxgNLST80DhvfQT8zPpdoZ/c9513yZMBtYO6oF5MzJmN+52RYLgPgMXJgtHeS8h7
 iuOA==
X-Gm-Message-State: APjAAAUNrHSJJYHHtGdreEtxxnE0D89YXKZB3zy2yFwqMgY762KtDYAr
 tpyhZoCeSia/K3GEYfPJpcSFBbIpj9b7UO2X7g3wC2UvdsNU
X-Google-Smtp-Source: APXvYqzQP9CYRfTlLHLsV6QBEQYBhPgI8bypq0U9hHsKzSMeEB/CVu4ed4IzOfkvt3dGwLP0hHzE142Gz/VsIc1tEwnjoCJ+zd1h
MIME-Version: 1.0
X-Received: by 2002:a02:c4cf:: with SMTP id h15mr12593320jaj.112.1573239180629; 
 Fri, 08 Nov 2019 10:53:00 -0800 (PST)
Date: Fri, 08 Nov 2019 10:53:00 -0800
In-Reply-To: <0000000000005e2bf90570bbe2ab@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000821d620596da4ad0@google.com>
From: syzbot <syzbot+78b902c73c69102cb767@syzkaller.appspotmail.com>
To: asmadeus@codewreck.org, davem@davemloft.net, dominique.martinet@cea.fr, 
 ericvh@gmail.com, jiangyiwen@huwei.com, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, lucho@ionkov.net, netdev@vger.kernel.org, 
 syzkaller-bugs@googlegroups.com, tomasbortoli@gmail.com, 
 v9fs-developer@lists.sourceforge.net, viro@zeniv.linux.org.uk
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
X-Headers-End: 1iT9Na-005oHh-Oi
Subject: Re: [V9fs-developer] KASAN: use-after-free Read in
 ep_scan_ready_list
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

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=167fa19ae00000
start commit:   1e09177a Merge tag 'mips_fixes_4.18_3' of git://git.kernel..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=25856fac4e580aa7
dashboard link: https://syzkaller.appspot.com/bug?extid=78b902c73c69102cb767
userspace arch: i386
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=135660c8400000

If the result looks correct, please mark the bug fixed by replying with:

#syz fix: net/9p/trans_fd.c: fix race-condition by flushing workqueue  
before the kfree()

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
