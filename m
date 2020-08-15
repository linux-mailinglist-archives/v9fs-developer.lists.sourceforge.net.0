Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFE22450B1
	for <lists+v9fs-developer@lfdr.de>; Sat, 15 Aug 2020 07:23:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k6of1-00044i-Ae; Sat, 15 Aug 2020 05:23:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3PHE3XwkbAPsv12ndoohudsslg.jrrjohxvhufrqwhqw.frp@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1k6oez-00044b-U3
 for v9fs-developer@lists.sourceforge.net; Sat, 15 Aug 2020 05:23:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+25FmT8dO4pWjXPGwlb17rDpAfTAbCr3FFkhBNcwuAs=; b=J67A2tB1dyp8vEEW8nuF9TcFWq
 okW92QnDfE3xoTKOw/KNK2M+LJBPMyIPJWERW+lFqHe4sznB7IzWhncsyQCpbAIsHKd49VQlVzT8X
 Mm0uHSbn1r7wVQy7uZ2cTr3xQ+g7rrncT3Ybu+gLx/bozwdnA1uDhrXaFb1v28BixhoU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+25FmT8dO4pWjXPGwlb17rDpAfTAbCr3FFkhBNcwuAs=; b=k
 7ZXTyJA83WRSpL+VPNn/73nlW+C0Lg1gIWVmONGZyL5l1tuq+El/rB9NDsmheX0Z5Il8QKxPu8IoI
 HeHLrsTZBsh+8ME6ZfhdUAesCfN8LorcHuUIj8/ptQg9v5YYu6/WBNVvmk1krCLwEJbVA2x+2atWa
 SfTv9H/D5t46YvBI=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k6oew-00C4Db-3N
 for v9fs-developer@lists.sourceforge.net; Sat, 15 Aug 2020 05:23:17 +0000
Received: by mail-il1-f199.google.com with SMTP id q17so7912321ile.22
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 14 Aug 2020 22:23:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=+25FmT8dO4pWjXPGwlb17rDpAfTAbCr3FFkhBNcwuAs=;
 b=acteCAuLzfHKvMGwYftKZ0OP3i2rkE5Ro+2iQ5cJxfOi+FbbCmt2EGGeyjVatL9zFO
 Tc7lh7ZmCytBrIHuavjiF8NTKU7IM0Zcwb7g0t8he0822cFvlGP5IrY3ufd4RV8Jbmxm
 mCs+E+qKRS2iIuvT8dftdGHYoa0RBpIj90UxaMvaWwB2YQKZd1Al1A+SmLkLLqa9lKIt
 T5Hs07cKx7OaTW9vOLyNNbRDw93zriPfNKS4gGWZ5w90l+2UIAr1+EMiIf7Hh7vrUVFJ
 9alqzSoyev8SaD8dxUqUYCulCwtLQLsVsbjpjhiWHyW1Gk3pt+TrfUc0P85s7PMh1xgb
 Eo5A==
X-Gm-Message-State: AOAM5334CFk1E1Jg6z9rNNqtbydV687kZ+C7myoe9aqAOrnjVTSFT8qt
 YmcpvuAxA4yy+1nJSrxIHpblwTIknhhpTIyx3Rp+Exzxxyq3
X-Google-Smtp-Source: ABdhPJydlCxs/36cUc4UNHPK6M0HkLjuUhkbtL2IuaVgPgv4K8a6I+NSpBzJX7MWxkS2M/6tiP8RcVV1wSXKsNQxeGt/4EVo4FU6
MIME-Version: 1.0
X-Received: by 2002:a92:b712:: with SMTP id k18mr2432857ili.220.1597468988463; 
 Fri, 14 Aug 2020 22:23:08 -0700 (PDT)
Date: Fri, 14 Aug 2020 22:23:08 -0700
In-Reply-To: <000000000000eb6a8e057ab79f82@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000098e02c05ace3bbfb@google.com>
From: syzbot <syzbot+edec7868af5997928fe9@syzkaller.appspotmail.com>
To: asmadeus@codewreck.org, davem@davemloft.net, ericvh@gmail.com, hch@lst.de, 
 kuba@kernel.org, linux-kernel@vger.kernel.org, lucho@ionkov.net, 
 netdev@vger.kernel.org, syzkaller-bugs@googlegroups.com, 
 v9fs-developer@lists.sourceforge.net
X-Spam-Score: 2.9 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lst.de]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.199 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
X-Headers-End: 1k6oew-00C4Db-3N
Subject: Re: [V9fs-developer] WARNING: refcount bug in p9_req_put
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

syzbot suspects this issue was fixed by commit:

commit a39c46067c845a8a2d7144836e9468b7f072343e
Author: Christoph Hellwig <hch@lst.de>
Date:   Fri Jul 10 08:57:22 2020 +0000

    net/9p: validate fds in p9_fd_open

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1015f012900000
start commit:   459e3a21 gcc-9: properly declare the {pv,hv}clock_page sto..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=ef1b87b455c397cf
dashboard link: https://syzkaller.appspot.com/bug?extid=edec7868af5997928fe9
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1642ee48a00000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: net/9p: validate fds in p9_fd_open

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
