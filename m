Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 74526F300E
	for <lists+v9fs-developer@lfdr.de>; Thu,  7 Nov 2019 14:42:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1iSi3B-0007e3-MP; Thu, 07 Nov 2019 13:42:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3LR_EXQkbAHAgmnYOZZSfOddWR.UccUZSigSfQcbhSbh.Qca@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1iSi3A-0007dq-ME
 for v9fs-developer@lists.sourceforge.net; Thu, 07 Nov 2019 13:42:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ENxD+/fIw0mYa6vyCEJ9BP1QogAHJZe3kkohsrzQFAg=; b=TrC4YV0XnyKdcjSSajuC5zX9XE
 Ii6HmZx+rhQHpC3PFXk4CjWaw2NqztbUtEpFQ/PQvDBQzGdzovCa/GR/7WVIc8tnAdWsxlkaL+Xib
 Gu/ZoJPY7quLJ3rZvi5+Js8kYo5sOcPZVEnNapziqh9FGAmqab5Sm82mzdDDulc1e/Ag=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ENxD+/fIw0mYa6vyCEJ9BP1QogAHJZe3kkohsrzQFAg=; b=U
 wd65oe/gBVvtCPq1UTR5kbyUi7mOT3/2dD/9ySbnAb58RHHtpA1/PTBNXuEU89SzazXzGC2Ts6DFp
 nv39cKHOQfhg+nNFJVnBiajqfai2bhqtit2HD/ZRbn5fUPkrdHPYzZMZk/gDV00+yE+cAWczzWbp9
 zCzRb+sAesUemx0E=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iSi38-004u51-RL
 for v9fs-developer@lists.sourceforge.net; Thu, 07 Nov 2019 13:42:12 +0000
Received: by mail-il1-f198.google.com with SMTP id w69so2679069ilk.2
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 07 Nov 2019 05:42:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=ENxD+/fIw0mYa6vyCEJ9BP1QogAHJZe3kkohsrzQFAg=;
 b=cA28PLswghIa4+btI03e/vGo45+pbsM13O4VmQezn7qr9efSmXpUspYIFs4Dvq+uA4
 KwAH2IV6uughjrt6qh16RyipSS93M18YwpJpkEuxYEXrK7cCvSX/dhUk7C5mciijsFfO
 rGDBhEs3LOMZcBmOyONQI/mrvP33T5lJ5/VMwNUsat3KwsHOZy/t+9u5/ICa0IFhclHT
 gKvfv7c+fvW5PyBmEDJCqAKrVkEU4gY4Ckp1VLZPc1okTaEfet31z99k8bouBQxq5ogq
 YnQarRVHSgkvYYyE4z3cXvqFFCNRQnJhWirYZq48tATGePs/L8sbwAqBMF8XJB9qSCrX
 kHKg==
X-Gm-Message-State: APjAAAXuNuuDZhJ7UD6SaaE0drzxEaFe+vn7hu4g5CeHauntDYn4wm4K
 DsuUuEv72D0RV6xR0qs6RKf7o5LvFg2FFmLkCCBiZNqT+Ie8
X-Google-Smtp-Source: APXvYqxgUiKUUpVf8mANbwuq5h5ETdkG1+2bc1EZcA3Iu8zgmeR5189VzsX5FO9eWFvmABYaiGgJH8JWUel87EI/ZKuu+fPSmejM
MIME-Version: 1.0
X-Received: by 2002:a6b:ee07:: with SMTP id i7mr3695643ioh.26.1573134125000;
 Thu, 07 Nov 2019 05:42:05 -0800 (PST)
Date: Thu, 07 Nov 2019 05:42:04 -0800
In-Reply-To: <000000000000ee4dab0570be896c@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000b4731e0596c1d418@google.com>
From: syzbot <syzbot+4d29d76a0da7a8c4d86c@syzkaller.appspotmail.com>
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
 trust [209.85.166.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
X-Headers-End: 1iSi38-004u51-RL
Subject: Re: [V9fs-developer] general protection fault in p9_conn_cancel
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

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1150b430600000
start commit:   30c2c32d Merge tag 'drm-fixes-2018-07-10' of git://anongit..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=25856fac4e580aa7
dashboard link: https://syzkaller.appspot.com/bug?extid=4d29d76a0da7a8c4d86c
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10e2c5b2400000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=179415b2400000

If the result looks correct, please mark the bug fixed by replying with:

#syz fix: net/9p/trans_fd.c: fix race by holding the lock

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
