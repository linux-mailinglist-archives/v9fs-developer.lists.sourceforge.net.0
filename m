Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B6657F52E
	for <lists+v9fs-developer@lfdr.de>; Sun, 24 Jul 2022 15:17:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oFbU6-0006j4-CF; Sun, 24 Jul 2022 13:17:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <3XEbdYgkbAHsrxyjZkkdqZoohc.fnnfkdtrdqbnmsdms.bnl@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1oFbU4-0006ix-DD
 for v9fs-developer@lists.sourceforge.net; Sun, 24 Jul 2022 13:17:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hjEUNMgdvQs7+SQfFq8IM6gLNyCL0JlcuMD7/mHIX5A=; b=JXVWRp9LFte1WwfLSXzxNiV7V4
 OjNG5uJ7otA+a3aSs8yZ0Wm2CwI+R5F97gADJjBFBRcPByNAZ/+U8NoNXnw9Qk3yViW1LEMrfPzYY
 vK8NN9Vr/97vpXojkLlYiuPdkfpDcrGpj1V/Zegmp5I/klvrKjw7FnA/6WEuWgwfeCvg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hjEUNMgdvQs7+SQfFq8IM6gLNyCL0JlcuMD7/mHIX5A=; b=B
 E1yyNr8dAEt6K/6z4j3lCzDbj4x8mrCO/ZEtGA3CW5iMQYYYe71j2nDHNLkZ95qgaS/gnNNef+nrW
 PLeVwB2Gzye3ljbQfY/gfQN2PWccGURn2zlUZgOETGRJ9CVyyGI71HtU2e7ut5Gp2zxqP5T8KxYKM
 xYKIfADfzcCfJiqc=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oFbU2-0006RB-Dg
 for v9fs-developer@lists.sourceforge.net; Sun, 24 Jul 2022 13:17:22 +0000
Received: by mail-il1-f199.google.com with SMTP id
 z2-20020a056e02088200b002dc4022c15fso5750430ils.11
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 24 Jul 2022 06:17:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=hjEUNMgdvQs7+SQfFq8IM6gLNyCL0JlcuMD7/mHIX5A=;
 b=4vxHFfJwsu/rQ3mTaEooYuGnb2GwdVlSuXiax2uTk/hO782WSS8ujBE9FeUGB+YgNa
 FJwpVZ6dSN7U2b8sWYsPnkRFO+jwoRL7qyqt2au218OWtDt4Kt9/Bqd9X2A9xVlGabu9
 932PD4pqFl3588+tpejx54wdV4Vt2TSjncFdLBZj5gtulvc55NghXqb3NtrcIOrPU7YK
 21/ItIHUJw4NZt1y6rnMMy43bZs5SvnmIDhxbIF/IXqhf+Y2CxFCR+pyiTqOBTh1VPCR
 27hNPYU6uBiumf11VviX34h2NadobkgrMhVhjr71qurNAIVQT2nZl21sKPCiO+ohb9RH
 Qxxw==
X-Gm-Message-State: AJIora9LpsT8Xd9QyLdnG9qpDpfvJLJwJyX0envCgFFgLoqahhYOiwx9
 5ieoZc5aGXElnMzFgSn6jH3M3XpkRy94vIwbqKVJyOLVBpTS
X-Google-Smtp-Source: AGRyM1u73sB/d40+FJtdvxjS5zQsJTrRiTiu0Z8RQGmxOnP1tvrQ7TjhLqZC76uGpi9cdO/lQahHFSbrR4hSNom7Q5/LF/pUMjbT
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1c45:b0:2dc:dc24:c103 with SMTP id
 d5-20020a056e021c4500b002dcdc24c103mr3199320ilg.132.1658668636866; Sun, 24
 Jul 2022 06:17:16 -0700 (PDT)
Date: Sun, 24 Jul 2022 06:17:16 -0700
In-Reply-To: <00000000000011f0c905d9097a62@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000e6917605e48ce2bf@google.com>
From: syzbot <syzbot+5e28cdb7ebd0f2389ca4@syzkaller.appspotmail.com>
To: akpm@linux-foundation.org, asmadeus@codewreck.org, davem@davemloft.net, 
 edumazet@google.com, elver@google.com, ericvh@gmail.com, hdanton@sina.com, 
 k.kahurani@gmail.com, kuba@kernel.org, linux-kernel@vger.kernel.org, 
 linux_oss@crudebyte.com, lucho@ionkov.net, netdev@vger.kernel.org, 
 pabeni@redhat.com, rientjes@google.com, syzkaller-bugs@googlegroups.com, 
 torvalds@linux-foundation.org, v9fs-developer@lists.sourceforge.net, 
 vbabka@suse.cz
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzbot has bisected this issue to: commit
 7302e91f39a81a9c2efcf4bc5749d18128366945
 Author: Marco Elver <elver@google.com> Date: Fri Jan 14 22:03:58 2022 +0000
 mm/slab_common: use WARN() if cache still has objects on destroy 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.199 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
X-Headers-End: 1oFbU2-0006RB-Dg
Subject: Re: [V9fs-developer] [syzbot] WARNING in p9_client_destroy
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

syzbot has bisected this issue to:

commit 7302e91f39a81a9c2efcf4bc5749d18128366945
Author: Marco Elver <elver@google.com>
Date:   Fri Jan 14 22:03:58 2022 +0000

    mm/slab_common: use WARN() if cache still has objects on destroy

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=142882ce080000
start commit:   cb71b93c2dc3 Add linux-next specific files for 20220628
git tree:       linux-next
final oops:     https://syzkaller.appspot.com/x/report.txt?x=162882ce080000
console output: https://syzkaller.appspot.com/x/log.txt?x=122882ce080000
kernel config:  https://syzkaller.appspot.com/x/.config?x=badbc1adb2d582eb
dashboard link: https://syzkaller.appspot.com/bug?extid=5e28cdb7ebd0f2389ca4
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=156f74ee080000

Reported-by: syzbot+5e28cdb7ebd0f2389ca4@syzkaller.appspotmail.com
Fixes: 7302e91f39a8 ("mm/slab_common: use WARN() if cache still has objects on destroy")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
