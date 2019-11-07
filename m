Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F514F300C
	for <lists+v9fs-developer@lfdr.de>; Thu,  7 Nov 2019 14:42:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1iSi3C-000799-8u; Thu, 07 Nov 2019 13:42:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3LR_EXQkbAHAgmnYOZZSfOddWR.UccUZSigSfQcbhSbh.Qca@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1iSi3A-00078v-ME
 for v9fs-developer@lists.sourceforge.net; Thu, 07 Nov 2019 13:42:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JSje/AH07oDcPbgdMNB1SmnapsrACftv+UWeFURGS+o=; b=H//4RdZ5d7chsMivnVEmUrlXQb
 w6oDc1yW8XzVhWKG9AJQp/H0ahA/MPrM27D+XQJHQnMZ5pZz82idAtH8hZrsh7Fuf0MgyMKlQbGL+
 WQl9NT+wZeaXKq+DT6nBFQzvrhGJ8UA8nW+4zfA4PT08g1Bfb2wwr9yRvv2IzDIgRq8Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=JSje/AH07oDcPbgdMNB1SmnapsrACftv+UWeFURGS+o=; b=G
 RsuUczckspgrShuNHfK/U69XoACDgeEEyz/2qvg/Aa3kT7hh5BEDHoqCXGQIJZGaRMLs4NwUJ/pMN
 aAloa54qq4KPFM8AWJcaszEtZeXfTqv8FLgBLFRB8xEGiJXBYnGRYEbO4p0Hin4EEGHSdGpMEGv5z
 eWRWsNHWfMh5f6GE=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iSi39-003ir4-7O
 for v9fs-developer@lists.sourceforge.net; Thu, 07 Nov 2019 13:42:12 +0000
Received: by mail-il1-f198.google.com with SMTP id o185so2643034ila.8
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 07 Nov 2019 05:42:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=JSje/AH07oDcPbgdMNB1SmnapsrACftv+UWeFURGS+o=;
 b=l+VO8LI2atnNm5NBJedwCPkh7OUZlHt5e9+H19owjHKJtEQR0x/twUB6o9m+N5ASpA
 3GMvYMYQUmTdY5BU3pBQCaobrMu7ff1mX62EH+d2cMOlurp64t2SlaPIsSVaOEsN41Fz
 uejXpiT8RweAwMOGmleFX87hq3Fy2Jojp8dwZhxFvIzG5CoJlEHJv4gYwOdJH1BDF/O+
 1S0cadP+Rq75lruBa/yNnXvRzBkmX7lm7lQqO5LrUc1JoQdMyWAYUnu8OrHWNXUm5pPH
 BgI3dDlLQ5Gv24Oai3wube41ChwYZ+R6X+kPBeZoBepRLmPQDwgWj4cgI1llmA33v8LD
 BFJw==
X-Gm-Message-State: APjAAAUi/tvrWTdt5M0e/yrmKFVdc1+45aXcLrZCXFAk4nUXO0HoVi2D
 Lr7iXoJwPlEn9sERqy8+asiNa8JZcgOn1yxBQKjBTwqPhfzi
X-Google-Smtp-Source: APXvYqxG4legBrqYPkWuqZIqpTsAoWCTwM+LFBpOJApTr736BPZhw6No/JLjYsmAogQRUvC2OoKv/gRcI5B3aQxGny7hDWkav0p7
MIME-Version: 1.0
X-Received: by 2002:a6b:6f09:: with SMTP id k9mr3513083ioc.91.1573134125408;
 Thu, 07 Nov 2019 05:42:05 -0800 (PST)
Date: Thu, 07 Nov 2019 05:42:05 -0800
In-Reply-To: <000000000000afbebb0570be9bf3@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000baac070596c1d4ae@google.com>
From: syzbot <syzbot+0442e6e2f7e1e33b1037@syzkaller.appspotmail.com>
To: asmadeus@codewreck.org, davem@davemloft.net, dominique.martinet@cea.fr, 
 ericvh@gmail.com, jiangyiwen@huwei.com, linux-kernel@vger.kernel.org, 
 lucho@ionkov.net, netdev@vger.kernel.org, rminnich@sandia.gov, 
 syzkaller-bugs@googlegroups.com, tomasbortoli@gmail.com, 
 v9fs-developer@lists.sourceforge.net
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
X-Headers-End: 1iSi39-003ir4-7O
Subject: Re: [V9fs-developer] KASAN: use-after-free Read in p9_fd_poll
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

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1646690c600000
start commit:   d72e90f3 Linux 4.18-rc6
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=68af3495408deac5
dashboard link: https://syzkaller.appspot.com/bug?extid=0442e6e2f7e1e33b1037
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1569b51c400000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16e7a978400000

If the result looks correct, please mark the bug fixed by replying with:

#syz fix: net/9p/trans_fd.c: fix race-condition by flushing workqueue  
before the kfree()

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
