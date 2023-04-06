Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EF6DA6D9156
	for <lists+v9fs-developer@lfdr.de>; Thu,  6 Apr 2023 10:18:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pkKop-00084d-7H;
	Thu, 06 Apr 2023 08:18:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3KIAuZAkbAAs39Avlwwp2l00to.rzzrwp53p2nzy4py4.nzx@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1pkKom-00084O-03 for v9fs-developer@lists.sourceforge.net;
 Thu, 06 Apr 2023 08:18:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2/g4nzehKA+hwiOXEY+4Ds0o+sycPpAKPzUEO7dFZTY=; b=ghCrUaEibb03NG812UbZRBkgcd
 t+VuyG5+gCQt7ear+jqJgQJfjQQpuyT5Etg10900WilaeXECxvGcEfc3K4NMNsjTfOmTmCe1nKecw
 3AtjnR2NDOuZSALMRz7gDw7Uz0EkQQ41OkNCfUPf/fOoYh52Iao+YWuITPABANJpv8RQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=2/g4nzehKA+hwiOXEY+4Ds0o+sycPpAKPzUEO7dFZTY=; b=B
 Ej9fBizIAeLTFSby6aebqQDub5ZNfniusWiq+6tOKscLrc6wC0F+vgcpR1j9j9NpEOvqcmTmMeRmg
 HNsXQjfhWWEYwmUSZVOXXLs8eU7/fdAv+je7y7Avj+tVkVNTRmpV0M5NkX6WtN8rxCE4yWRH92fK0
 cVDVjlUK5c4Wzsts=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pkKoa-0004ac-7s for v9fs-developer@lists.sourceforge.net;
 Thu, 06 Apr 2023 08:18:00 +0000
Received: by mail-il1-f197.google.com with SMTP id
 z19-20020a056e02089300b00326098d01d9so20671825ils.2
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 06 Apr 2023 01:17:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680769064; x=1683361064;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=2/g4nzehKA+hwiOXEY+4Ds0o+sycPpAKPzUEO7dFZTY=;
 b=QqiHQt8a1e5RdB28SRvj6Tk8fKuTvCiO0oBukUorkru8gLiLAC2DUXSPS43RkWi0/U
 Wk14uuTYAn1dIOYhzVrAeaiOnVNnQJIG+Lb50tPjR/h2f+fztv2OX1KnZjdwGXyRPEXu
 yHsZXK/bIc18xyKE8sXiCW7Sv0EEwEmiCC4xbLI/VlZLYxhsT87eU/ao1SXHBZN3t1UN
 zeakw9QFq8hVAo2kxZB4NkJWQkub99zqyLHqYpwSYtmXsBrAkbsJC8EiwXbuhZcszTRo
 ds6ecYAPdqGwim9dbykqtD06UxA2xjyCCPS1W8gMbkfsJORwTK1ON6NAdonrZsn/J4nx
 iE3Q==
X-Gm-Message-State: AAQBX9fwYju/IQEYyyK5+lOQV5oryVh/Mp9e7R7Pok/AAUMP9MbbjEtJ
 8VX6SpwBd/piriw4EE5r/aT0bye0DFgeL7QeeBHtC0rwgqM7
X-Google-Smtp-Source: AKy350YuXMCN3QocCYBM4Ie6yRSB5hDHbkj9MYTwMgoZEdNx8Kce4uWD5ZtPX5sfy0HQ6Wo9POC6ezuVnHRaiLstYhnSBNfs/J1v
MIME-Version: 1.0
X-Received: by 2002:a02:9381:0:b0:3a7:e46f:1016 with SMTP id
 z1-20020a029381000000b003a7e46f1016mr4733802jah.0.1680769064789; Thu, 06 Apr
 2023 01:17:44 -0700 (PDT)
Date: Thu, 06 Apr 2023 01:17:44 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000000e6e2205f8a68bea@google.com>
From: syzbot <syzbot+list4520eff69bc900db1eac@syzkaller.appspotmail.com>
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
 This is a 30-day syzbot report
 for the 9p subsystem. All related reports/information can be found at:
 https://syzkaller.appspot.com/upstream/s/9p
 During the period, 0 new issues were detected and 0 were fixed. In total,
 12 issues are still open and 28 have been fixed so far. 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.197 listed in list.dnswl.org]
X-Headers-End: 1pkKoa-0004ac-7s
Subject: [V9fs-developer] [syzbot] Monthly 9p report
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

This is a 30-day syzbot report for the 9p subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/9p

During the period, 0 new issues were detected and 0 were fixed.
In total, 12 issues are still open and 28 have been fixed so far.

Some of the still happening issues:

Crashes Repro Title
248     Yes   WARNING in inc_nlink (3)
              https://syzkaller.appspot.com/bug?extid=2b3af42c0644df1e4da9
124     Yes   BUG: corrupted list in p9_fd_cancelled (2)
              https://syzkaller.appspot.com/bug?extid=1d26c4ed77bc6c5ed5e6
108     Yes   WARNING in v9fs_fid_get_acl
              https://syzkaller.appspot.com/bug?extid=a83dc51a78f0f4cf20da

---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
