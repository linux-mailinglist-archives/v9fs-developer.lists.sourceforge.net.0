Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 726D1F300D
	for <lists+v9fs-developer@lfdr.de>; Thu,  7 Nov 2019 14:42:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1iSi3C-0006n2-CH; Thu, 07 Nov 2019 13:42:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3LR_EXQkbAHAgmnYOZZSfOddWR.UccUZSigSfQcbhSbh.Qca@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1iSi3A-0006mc-QH
 for v9fs-developer@lists.sourceforge.net; Thu, 07 Nov 2019 13:42:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CZJgdUC1TpRcETObVUB558+pxazKYw5Wn3n/HURXADI=; b=YzoIQoxy3bQi0hBt+fgdbnexW3
 gZq6PMozC5b26ezgRO/+BjKAxR3+J4c5Z1PBltpmUNEvLKwXb1S2L6SL5jbzQ9Znn9neHgxkZzHkO
 iliHbuTJRg6dc24xmm6TIH5NbqjkGlK/DDZ13stwa3X0jgp0o0kq1/Dvw9DCjfqy3EcQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=CZJgdUC1TpRcETObVUB558+pxazKYw5Wn3n/HURXADI=; b=K
 mJ59Ak+hgtYuQu2TRaHimh0IiBOOS+Fe3kT8s5jQzOhz/szHqllp8hNDVb0UoBvuBZ9YJ4+NhQYIA
 b+sSXPnVXdfXZSj0XHruhcIHNQxudMHS02fphBs11GvnIRXMt32vvlY/mHMOoQw9parfM4eFNGCgp
 jFQEwnjvE7Gf1Vsg=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iSi39-003ir5-Hl
 for v9fs-developer@lists.sourceforge.net; Thu, 07 Nov 2019 13:42:12 +0000
Received: by mail-il1-f198.google.com with SMTP id j68so2640071ili.15
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 07 Nov 2019 05:42:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=CZJgdUC1TpRcETObVUB558+pxazKYw5Wn3n/HURXADI=;
 b=DIyF/KR7hk+F5AlmSPmSzFlNATGwI+yB2UZ90kXNaqpUUgC/9qHO3lpOhSr7Yphshn
 GAy0YZTAyp0f8H9Iv5T0YJdc2tm6WHB6CgR+JNgNBJxYUArDJuxYqLtGn1D4Lqg+GKHT
 /ECzMxVQR3acsE4Wb7HNb9Gh710tGH8YRdBwTQbfGXWIehV3s4K2RhYHnJ2ISR1V7qF8
 gI4rwDdRXwTJuAseQcLwGV1EOQ2Hrnpeyg2Zcp0CQD/ovJwbBZyiAuJ0km25nJQqNl1G
 moUaDkqP+pS0nBvUzNMKQFAkcFg6ETzYjrYVd8zJg5LM/JJ9/wiU9vkveRWcZUKSLEkH
 xnsQ==
X-Gm-Message-State: APjAAAVuoJRjpW+sUbSrkbPqH9JS1is+OutotNG2Jz9aPyxEQHH1F7RK
 cTP+vaGB8trdCSd755PF6n5axXHdzgpyE59rB06UEqE0z4fM
X-Google-Smtp-Source: APXvYqynOcIaT2y3jyHS10UgIJT51zZMfk/18yGsgEM4vujcLU66FRilTI2odarVdOVEi2iPozlH+L82DAgMEg7NmWA/wsb0TRhw
MIME-Version: 1.0
X-Received: by 2002:a6b:ed1a:: with SMTP id n26mr3703846iog.112.1573134125729; 
 Thu, 07 Nov 2019 05:42:05 -0800 (PST)
Date: Thu, 07 Nov 2019 05:42:05 -0800
In-Reply-To: <0000000000002a2fdf0573107004@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000bfa1ab0596c1d403@google.com>
From: syzbot <syzbot+1788bd5d4e051da6ec08@syzkaller.appspotmail.com>
To: asmadeus@codewreck.org, davem@davemloft.net, dominique.martinet@cea.fr, 
 ericvh@gmail.com, linux-kernel@vger.kernel.org, lucho@ionkov.net, 
 netdev@vger.kernel.org, rminnich@sandia.gov, syzkaller-bugs@googlegroups.com, 
 tomasbortoli@gmail.com, v9fs-developer@lists.sourceforge.net
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.198 listed in list.dnswl.org]
X-Headers-End: 1iSi39-003ir5-Hl
Subject: Re: [V9fs-developer] BUG: corrupted list in p9_write_work
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

commit 728356dedeff8ef999cb436c71333ef4ac51a81c
Author: Tomas Bortoli <tomasbortoli@gmail.com>
Date:   Tue Aug 14 17:43:42 2018 +0000

     9p: Add refcount to p9_req_t

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=10f2258a600000
start commit:   050cdc6c Merge git://git.kernel.org/pub/scm/linux/kernel/g..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=49927b422dcf0b29
dashboard link: https://syzkaller.appspot.com/bug?extid=1788bd5d4e051da6ec08
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1196b7ba400000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1022391e400000

If the result looks correct, please mark the bug fixed by replying with:

#syz fix: 9p: Add refcount to p9_req_t

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
