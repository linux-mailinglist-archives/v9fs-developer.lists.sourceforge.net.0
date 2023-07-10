Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 056B874D1BE
	for <lists+v9fs-developer@lfdr.de>; Mon, 10 Jul 2023 11:37:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1qInKD-00012R-MB;
	Mon, 10 Jul 2023 09:36:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3M9GrZAkbALAiopaQbbUhQffYT.WeeWbUkiUhSedjUdj.Sec@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1qInKC-00012L-KA for v9fs-developer@lists.sourceforge.net;
 Mon, 10 Jul 2023 09:36:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RnTD0HSeYeYRW45r5BzyURwgfeKtTm2Aa5ttdcweVdw=; b=W6wqMZSL5MRsxyhC6Gv7/2/0eY
 j6YWSEZ7HSBQ3aIKHg1LB7Dwdk7447cShuIz+a9HQ2m10zKIcEJLYzaaEai2I1vuFhukbFFYfv9hk
 d5zRYBXktTgvN16iWqx/KiD/BzW//GpTHyBJ8bRc5aBga0PlHPfid5Dl9mmO4RI+l1/A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=RnTD0HSeYeYRW45r5BzyURwgfeKtTm2Aa5ttdcweVdw=; b=K
 EY7LfkaQLfs8KeLIzUtW3eo8JPL9zoIgm4K9wkea6tCP8lWlJVTSNivMgkyLJTdFX1hD1aI0rASIH
 Mge7lBvgTkCuDDGYs6421TbGXGK+1LoZ57r1hLB1zB0Hh8XvdgAgrlSb8gDU+6zNhRJwV4JhoASp1
 AI5T8Wo47HI/KsOk=;
Received: from mail-pf1-f200.google.com ([209.85.210.200])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qInKC-003Dzv-JF for v9fs-developer@lists.sourceforge.net;
 Mon, 10 Jul 2023 09:36:57 +0000
Received: by mail-pf1-f200.google.com with SMTP id
 d2e1a72fcca58-67e3c6c4624so4962481b3a.3
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 10 Jul 2023 02:36:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688981811; x=1691573811;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=RnTD0HSeYeYRW45r5BzyURwgfeKtTm2Aa5ttdcweVdw=;
 b=Wm0weZsipaKQ/8TF5wsks2CoztfTVcT4GAecW0sBJnzVVmEgyT+rFPdioPKUddthoF
 AU+jRxDLdjEJzq5Is+D9DuA25BWKp5uMkK16n+dMEiPckaN/Tjwfrq/gu65BSsmWsmsQ
 zYSHRc3+PZ8SqJWNoFEv/V5sRVYtqldE4MYi2pVxDu2wvCuOjU2bfbgaF4DdFOIu7CUI
 q4TNv5KAFb100BXodlbh3Vwov+nHoxE9yMPdgYd/KhsLGY12pPfAelLAHSOLcIFL9Hbp
 /JmioklvaDLE60rdg8xky6+oKodVE75AIqQ5xXlD/UQHFc0SGnAsQeUioG3nJ/o/T+nh
 3dKQ==
X-Gm-Message-State: ABy/qLb2eAjXi+SBkNDZg+bbv/ARwjkiphgVZpxPQo+fpkeBUl/cbaSu
 d1rso+X9rWm9dXJ6NbCA8j7RP1LVWdASNWJaauWO9Ff9jowy
X-Google-Smtp-Source: APBJJlESCmTDIZJZKnX+i56deNw+aZ+Vck5iZlsDZy7rq0A6CKCzoNcEVAngi5sMsEmON+chNwbM5NU9pEMHZb1ZXYTlMS0kTFj8
MIME-Version: 1.0
X-Received: by 2002:a05:6a00:2d8c:b0:67a:36e3:36b6 with SMTP id
 fb12-20020a056a002d8c00b0067a36e336b6mr16850748pfb.6.1688981811093; Mon, 10
 Jul 2023 02:36:51 -0700 (PDT)
Date: Mon, 10 Jul 2023 02:36:50 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000e1e51506001eb812@google.com>
From: syzbot <syzbot+list898eee0d471aba70d101@syzkaller.appspotmail.com>
To: asmadeus@codewreck.org, ericvh@gmail.com, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, lucho@ionkov.net, 
 syzkaller-bugs@googlegroups.com, v9fs-developer@lists.sourceforge.net
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello 9p maintainers/developers,
 This is a 31-day syzbot report
 for the 9p subsystem. All related reports/information can be found at:
 https://syzkaller.appspot.com/upstream/s/9p
 During the period, 0 new issues were detected and 0 were fixed. In total,
 6 issues are still open and 27 have been fixed so far. 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.200 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.200 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qInKC-003Dzv-JF
Subject: [V9fs-developer] [syzbot] Monthly 9p report (Jul 2023)
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
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

Hello 9p maintainers/developers,

This is a 31-day syzbot report for the 9p subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/9p

During the period, 0 new issues were detected and 0 were fixed.
In total, 6 issues are still open and 27 have been fixed so far.

Some of the still happening issues:

Ref Crashes Repro Title
<1> 1262    Yes   INFO: task hung in iterate_supers
                  https://syzkaller.appspot.com/bug?extid=2349f5067b1772c1d8a5
<2> 554     Yes   WARNING in inc_nlink (3)
                  https://syzkaller.appspot.com/bug?extid=2b3af42c0644df1e4da9
<3> 489     Yes   WARNING in v9fs_fid_get_acl
                  https://syzkaller.appspot.com/bug?extid=a83dc51a78f0f4cf20da
<4> 180     Yes   BUG: corrupted list in p9_fd_cancelled (2)
                  https://syzkaller.appspot.com/bug?extid=1d26c4ed77bc6c5ed5e6

---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

To disable reminders for individual bugs, reply with the following command:
#syz set <Ref> no-reminders

To change bug's subsystems, reply with:
#syz set <Ref> subsystems: new-subsystem

You may send multiple commands in a single email message.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
