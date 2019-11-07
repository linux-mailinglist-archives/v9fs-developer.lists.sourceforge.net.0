Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 038A3F300F
	for <lists+v9fs-developer@lfdr.de>; Thu,  7 Nov 2019 14:42:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1iSi3F-0007ew-NQ; Thu, 07 Nov 2019 13:42:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3LR_EXQkbAHAgmnYOZZSfOddWR.UccUZSigSfQcbhSbh.Qca@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1iSi3E-0007eg-3R
 for v9fs-developer@lists.sourceforge.net; Thu, 07 Nov 2019 13:42:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Vf6K/h0qpqQKsSoL002ZxeehhKzDYr+4ythimfWKfZ8=; b=MLRnqGQPJeSVIpUG+HHi9i9VaL
 DlDHfoluVRA/f3PnqY3dnv8m6fKfAxgkVtU0cya4mwqEkO8SKc9eaiIpMTVaUuy2P1eHaM2d7HbPb
 5ZGepsAMzFkfrB9yW/bfpY+3vC7m+Mfp7eUKvqFLX+MPzIfsZDYFE0RvLXKCTQzjr1ms=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Vf6K/h0qpqQKsSoL002ZxeehhKzDYr+4ythimfWKfZ8=; b=f
 KHEXO9tDHLDtM3wzV+MbYwU9k9Txd9tZVFH4KThYPkLe6ACWFgdeWnTgpYEkoU3swAZ3cSpWHMQm9
 QZRKuY9F8dv1vV6rEtst6pk8pr7Y5ebxwW+3PpUeF80vc/9WCcCJbTf7Z8bbnj9/c7pkZE+tVnJpr
 Ci8KRlZgUbpC0bhQ=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iSi39-004u54-OU
 for v9fs-developer@lists.sourceforge.net; Thu, 07 Nov 2019 13:42:16 +0000
Received: by mail-il1-f200.google.com with SMTP id x2so2614422ilk.18
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 07 Nov 2019 05:42:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=Vf6K/h0qpqQKsSoL002ZxeehhKzDYr+4ythimfWKfZ8=;
 b=PQmb7ABXXCCfet5/ZV/vNLHEHVWyCZFFGoxQlg+Iqd2uDJxwlwcRHw3f4rKKDpVrDP
 sG8uCVCgFIu6+Ii833OjgKycOK+TC6+3WKFT3grWsyTIheYcLuoR5Z3Yq4v6yo1RRKV4
 DVlT16GZ/Zb7evmYpMjv+V3cMoJm6amzkPeY3BB7DSawXzf5EbKCWEGy6siF2c1yNvvE
 GR7oPRlTVRdOlnr6WcVFjNeJIJzQa/w+0OIpiLeW4sjv7t9A4OzbzKoE2fkpmXsGC5cE
 rADec1yqK/kCZdWpF5PdCigt8p81RwHpUhsW0+an2ctygRzEGjkmpeGpnrBg8k/WVv+6
 P68A==
X-Gm-Message-State: APjAAAXJ3ihfVOwRwIthXE9uyiz+xPh46k6q/zPdACWPMcer439Jm0VS
 X70pf5Nwa+3TCX62ZkLuKGS9Oz9QWIhBwK7xz+USty6Af8qh
X-Google-Smtp-Source: APXvYqxtqS9jnDj10uHB/QHrMRUKjJWOjaExI73Hx2xEMNtJxQbyy5I+Msc61BdsDsl5SzjhgXSd4Tpv0SaNrrMljsv9YcDnaitG
MIME-Version: 1.0
X-Received: by 2002:a5e:aa10:: with SMTP id s16mr1261527ioe.113.1573134125893; 
 Thu, 07 Nov 2019 05:42:05 -0800 (PST)
Date: Thu, 07 Nov 2019 05:42:05 -0800
In-Reply-To: <00000000000054395605708fbd13@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000c214300596c1d487@google.com>
From: syzbot <syzbot+ad0832746849421bba05@syzkaller.appspotmail.com>
To: davem@davemloft.net, dominique.martinet@cea.fr, ericvh@gmail.com, 
 jiangyiwen@huwei.com, linux-kernel@vger.kernel.org, lucho@ionkov.net, 
 netdev@vger.kernel.org, rminnich@sandia.gov, syzkaller-bugs@googlegroups.com, 
 tomasbortoli@gmail.com, v9fs-developer@lists.sourceforge.net
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.200 listed in list.dnswl.org]
 0.0 FROM_LOCAL_DIGITS      From: localpart has long digit sequence
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
X-Headers-End: 1iSi39-004u54-OU
Subject: Re: [V9fs-developer] BUG: corrupted list in p9_conn_cancel
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

commit 9f476d7c540cb57556d3cc7e78704e6cd5100f5f
Author: Tomas Bortoli <tomasbortoli@gmail.com>
Date:   Mon Jul 23 18:42:53 2018 +0000

     net/9p/trans_fd.c: fix race by holding the lock

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=11adad06600000
start commit:   c25c74b7 Merge tag 'trace-v4.18-rc3-2' of git://git.kernel..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=25856fac4e580aa7
dashboard link: https://syzkaller.appspot.com/bug?extid=ad0832746849421bba05
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=13d8db0c400000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=10c12a58400000

If the result looks correct, please mark the bug fixed by replying with:

#syz fix: net/9p/trans_fd.c: fix race by holding the lock

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
