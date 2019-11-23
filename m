Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 57EA0108117
	for <lists+v9fs-developer@lfdr.de>; Sun, 24 Nov 2019 00:37:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1iYexi-00044G-HW; Sat, 23 Nov 2019 23:37:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3ncLZXQkbAH4u01mcnngtcrrkf.iqqingwugteqpvgpv.eqo@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1iYexh-000449-8b
 for v9fs-developer@lists.sourceforge.net; Sat, 23 Nov 2019 23:37:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rcXyQARNFeEGX/5R/wh8uboQxfvT9hdMO0gGiQWOSiI=; b=SYO2bZQwJ7JX/5gIw3q86rc0RS
 tVhmwRHOmjHp68cz1Q2oZ61IyS2eQozUnxJvhtqoqYN9v1/VzN76u3ubCa0Be/Ugxrz+4GF5trVGt
 qr49JmE0FV+lItizKmjvEmvSWShFE1JqcMdJzWIvFApc2XRGbSGH+XXDOE50rG21wKEk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=rcXyQARNFeEGX/5R/wh8uboQxfvT9hdMO0gGiQWOSiI=; b=d
 PLhFaqG6JCXOnvPF5ZiDRYASLPjjzhqxMXqSdgCXqKqYb76hr+9SgdXhiM0vY9cNT+FV/oq7maFV/
 vJ5v7itPleCbLax44itsy09IqZKlmgAkL72u/3ILSCbK1pUHu2LpO3+A08OKGV0dNjipHFtJYAEB1
 3yt9x16y/Geq/ndM=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iYexf-002fjz-1C
 for v9fs-developer@lists.sourceforge.net; Sat, 23 Nov 2019 23:37:09 +0000
Received: by mail-io1-f72.google.com with SMTP id y16so7934629ior.14
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 23 Nov 2019 15:37:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=rcXyQARNFeEGX/5R/wh8uboQxfvT9hdMO0gGiQWOSiI=;
 b=VRQ5g/IeJmEUXen7Jx37+kNx2jhwH0lnuypR1PSYn5tMTEehv6XpAdvJ7ZgA8O68G8
 Pso63GaGQqvAO1K4PECgShsB4gpr+Rr3KrA1ipWnezNJp3H4xPBM5ooQ8NVneLqdsCH3
 EHccik7L0KKutrzCMwTapA8zGiiDRRJ93h8cssGyfWWc14RtwtuBOK/BxFgFVXlbkEXs
 zosllirot4JWELwSaa3LQmz/1HFE/RYa1SshVv89FQL574nWOQbwB4+u5AtKIkvYLYUL
 H+JNEA9COEuEIROMQZFSasBWqU0957rx0rwjJgoL9uhpGFDed1NW4w5ufx/Cf+szhNTi
 AP2Q==
X-Gm-Message-State: APjAAAVF8XLmjH0x3WDTury28IXNQUCTymQv7O1YlWhOqE6NuIHVNV1t
 2cDGNYgvcuUIFD3tdzy1Wqy5KsBk8jzsnj/RLyYIoDgyPpCp
X-Google-Smtp-Source: APXvYqwj40xk+Xd7ru4QMKddn8/SsIpJKtP1YXxZ615/+EY9PfAFOY8RE0ZRU+3mTx9eSm5J1cqivLB4uhge43PShk8uF8pfq69t
MIME-Version: 1.0
X-Received: by 2002:a92:3904:: with SMTP id g4mr7836256ila.242.1574552221276; 
 Sat, 23 Nov 2019 15:37:01 -0800 (PST)
Date: Sat, 23 Nov 2019 15:37:01 -0800
In-Reply-To: <000000000000f665a30570885589@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000d45f7b05980c01ce@google.com>
From: syzbot <syzbot+1c9db6a163a4000d0765@syzkaller.appspotmail.com>
To: davem@davemloft.net, ericvh@gmail.com, linux-kernel@vger.kernel.org, 
 lucho@ionkov.net, netdev@vger.kernel.org, rminnich@sandia.gov, 
 syzkaller-bugs@googlegroups.com, v9fs-developer@lists.sourceforge.net, 
 viro@zeniv.linux.org.uk
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.72 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
X-Headers-End: 1iYexf-002fjz-1C
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

syzbot has bisected this bug to:

commit 7594bf37ae9ffc434da425120c576909eb33b0bc
Author: Al Viro <viro@zeniv.linux.org.uk>
Date:   Mon Jul 17 02:53:08 2017 +0000

     9p: untangle ->poll() mess

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=12ad235ee00000
start commit:   ca04b3cc Merge tag 'armsoc-fixes' of git://git.kernel.org/..
git tree:       upstream
final crash:    https://syzkaller.appspot.com/x/report.txt?x=11ad235ee00000
console output: https://syzkaller.appspot.com/x/log.txt?x=16ad235ee00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=2ca6c7a31d407f86
dashboard link: https://syzkaller.appspot.com/bug?extid=1c9db6a163a4000d0765
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1473a452400000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14087748400000

Reported-by: syzbot+1c9db6a163a4000d0765@syzkaller.appspotmail.com
Fixes: 7594bf37ae9f ("9p: untangle ->poll() mess")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
