Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B132F300B
	for <lists+v9fs-developer@lfdr.de>; Thu,  7 Nov 2019 14:42:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1iSi3C-00079G-CA; Thu, 07 Nov 2019 13:42:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3LR_EXQkbAHAgmnYOZZSfOddWR.UccUZSigSfQcbhSbh.Qca@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1iSi3A-000791-Ru
 for v9fs-developer@lists.sourceforge.net; Thu, 07 Nov 2019 13:42:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9/okOXkdmyxLp+oZdwuHSBXPqMIfQXakCi7QdBsKzL0=; b=jWbbDXDkAFCuFBG66LdYFJpti/
 bne601O5r3paLoSYuEvZwogVo0TmIqKsP90O1DFvI1AzYq/+UiLY3ACjnrdTOPUl7tTxUq6EQ9Zrc
 1V3uejoX6q/dtx7YZmLsBiLUAIe5WVIuguNQg3DyEFvsx3oBcO+r7C3FrSjytYUjVlmM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=9/okOXkdmyxLp+oZdwuHSBXPqMIfQXakCi7QdBsKzL0=; b=O
 K2gSJ4D/5MJjiwS7wMuqz5798AfBFupe3Y3xSU+NGWNyJWl/Ra6gBcrkFWlFddQRrT3GYHKT+YjXU
 HcepvWwBvZnnQbOiW5kAe67JqSbzm7wEoMUbaUhyZpbBeyo77kiLtGL0m49VM5abe7yss+tUmdzwb
 UFc+Esd+59pnju6Y=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iSi39-003mJt-GQ
 for v9fs-developer@lists.sourceforge.net; Thu, 07 Nov 2019 13:42:12 +0000
Received: by mail-il1-f200.google.com with SMTP id z14so2675289ill.0
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 07 Nov 2019 05:42:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=9/okOXkdmyxLp+oZdwuHSBXPqMIfQXakCi7QdBsKzL0=;
 b=clf0jHHfd9/I6hxrmHHybbhr/syPkM9Q0ee+5RwCcgVeO/qg6B0HHghuVdERzwmG34
 dXjIT7NqEWT/VN4P1fUK30tjPGp8Z9T0GWgBfbl/aX89IGd5sGwaP1ivxnvR3j+Lbi6V
 uX/D0u9J8V8EqFu3m/fbQgBqz4zJhYvD6hvesqCCoRO9vjwIIRTib636Vx+Hp1sTuZaC
 zVAiYiZXaqEc5kcLzJryQinWWP20tHm3uJAy5TlkfAs+pIFIg8I6IRIUFS795fqGQmYq
 EfIjAFv3LBEgWd0L0se+F5pJ3MiL9Mpc7YrJfxRt2l10oTLi6ibYMjOb6tTtAc7etteQ
 tbKA==
X-Gm-Message-State: APjAAAXLWAWoduS3blYa64QFljsr4RdmpC9fcIGIkoWaRXPa+FkFuM+h
 zPdUBNttxOO4/uiUaNOgfxVNNuXUdv2Rf0Nv6Z+fo396yr07
X-Google-Smtp-Source: APXvYqz62VjOcTgDOFUdTJ8ThmzQiqH3nU+L2+77ligMCjRnKr8tpBSanxdr4g/glcLnWKYfWPvY/mTB8gNEft9wB4uAI6DEqooQ
MIME-Version: 1.0
X-Received: by 2002:a6b:f914:: with SMTP id j20mr3763359iog.223.1573134125585; 
 Thu, 07 Nov 2019 05:42:05 -0800 (PST)
Date: Thu, 07 Nov 2019 05:42:05 -0800
In-Reply-To: <00000000000024f01405708aab83@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000bd5cdb0596c1d4a7@google.com>
From: syzbot <syzbot+d702a81aadeedd565723@syzkaller.appspotmail.com>
To: asmadeus@codewreck.org, davem@davemloft.net, dominique.martinet@cea.fr, 
 ericvh@gmail.com, jiangyiwen@huwei.com, linux-kernel@vger.kernel.org, 
 lucho@ionkov.net, netdev@vger.kernel.org, rminnich@sandia.gov, 
 syzkaller-bugs@googlegroups.com, tomasbortoli@gmail.com, 
 v9fs-developer@lists.sourceforge.net
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.200 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
X-Headers-End: 1iSi39-003mJt-GQ
Subject: Re: [V9fs-developer] WARNING: ODEBUG bug in p9_fd_close
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

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=12b5c342600000
start commit:   1e4b044d Linux 4.18-rc4
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=25856fac4e580aa7
dashboard link: https://syzkaller.appspot.com/bug?extid=d702a81aadeedd565723
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=17fa550c400000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1214c2c2400000

If the result looks correct, please mark the bug fixed by replying with:

#syz fix: net/9p/trans_fd.c: fix race-condition by flushing workqueue  
before the kfree()

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
