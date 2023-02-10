Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A2229691CF4
	for <lists+v9fs-developer@lfdr.de>; Fri, 10 Feb 2023 11:36:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pQQlu-0006K5-6B;
	Fri, 10 Feb 2023 10:36:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3NB7mYwkbAC8djkVLWWPcLaaTO.RZZRWPfdPcNZYePYe.NZX@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1pQQlq-0006Jz-OC for v9fs-developer@lists.sourceforge.net;
 Fri, 10 Feb 2023 10:36:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=l1+xVltypcnxAkvWPCQxFM0n2XimN1lwperOL1Mtxsc=; b=dr/OCUBV9ad1ihy4vcjsV824gP
 EOEP7lIE0hv7DuLtom87Pfcu1U21oeJTpp/m9EQxBDd/qRFWCrtp2M5u37u1yH4VDtyiZZkCMJqcZ
 GdlHsTiMBHEz5f8n/h2rYO3EHkN6wDuups+zoWxUmcYrT6jgLJr5d8r6LRboFzD3nUdQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=l1+xVltypcnxAkvWPCQxFM0n2XimN1lwperOL1Mtxsc=; b=U
 q76LGOowQheY0x2Hpo1CPc5fYshHsNax/BL9IZZodZifZYRIxkvBAP1HHgwuIiwytmIo0JLLsYID5
 XFIrAv/Xd4fquJ1HNjvT+9yun0Tf6RSL/tUSw/zyodHiGXCWVLwMS+9opSF6Od0OabkLTA0KeS8LU
 UN2UK3YgDAr1xgEc=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pQQll-0006TA-5p for v9fs-developer@lists.sourceforge.net;
 Fri, 10 Feb 2023 10:36:46 +0000
Received: by mail-io1-f72.google.com with SMTP id
 y22-20020a5d94d6000000b007076e06ba3dso3177706ior.20
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 10 Feb 2023 02:36:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=l1+xVltypcnxAkvWPCQxFM0n2XimN1lwperOL1Mtxsc=;
 b=0I+pvodlPgQW/HZoQJ0sO5vr5QGborLpTl51jO0RJ+kHWnYkRL5qF/KWFHPXhpfraC
 eS6EU5sfJ2QpufxZkdG1+XSgFg7PpKRjL4NERNeeu4a0OxCQH8oeVqbu6m1uYyW40VOb
 U33TtKNKX+P5a5QA8RvzxQiq9i1CZu/vJhEIPzWK5/SSoleS4O2osnPYV1EsK+Mi5sjR
 ChNqwhheIIqNWQRnf4f097JpFof/sW5ko+Y3gcdCWlG9rtdhAinycMkT91f4K5D3TBDr
 VaNuRF5QgKM1gbyaaSLS6X1PBloOlFXdm1YoEgnOqwlB+ycjqTfqeu8AZcDcE68RWjal
 colA==
X-Gm-Message-State: AO0yUKVrT5Mbf8xcRoY2fcZnY+F5vgu3NcTe5gc3FpBQOXh6QOXuOBx0
 GjyMg38Ew9ObcJijxNbT63Xu/NeVuEpOFIVLgEqW5ljH6AZu
X-Google-Smtp-Source: AK7set8RPGGTXi5zLTnyjKswbEgN7LWwYzgzA5VGCB+OqcXXhMpBY6wGX14MoheR8H5OO5X6bCqt5kKFvh74/+6PMpEY5/Lis7ba
MIME-Version: 1.0
X-Received: by 2002:a6b:cf12:0:b0:713:f12d:40ba with SMTP id
 o18-20020a6bcf12000000b00713f12d40bamr7429931ioa.72.1676025396365; Fri, 10
 Feb 2023 02:36:36 -0800 (PST)
Date: Fri, 10 Feb 2023 02:36:36 -0800
In-Reply-To: <00000000000015ac7905e97ebaed@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000062913f05f45612ae@google.com>
From: syzbot <syzbot+67d13108d855f451cafc@syzkaller.appspotmail.com>
To: asmadeus@codewreck.org, dan.carpenter@oracle.com, davem@davemloft.net, 
 edumazet@google.com, ericvh@gmail.com, kuba@kernel.org, leon@kernel.org, 
 linux-kernel@vger.kernel.org, linux_oss@crudebyte.com, lucho@ionkov.net, 
 netdev@vger.kernel.org, pabeni@redhat.com, syzkaller-bugs@googlegroups.com, 
 v9fs-developer@lists.sourceforge.net
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This bug is marked as fixed by commit: 9p:
 client_create/destroy:
 only call trans_mod->close after create But I can't find it in the tested
 trees[1] for more than 90 days. Is it a correct commit? Please update it
 by replying: 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.72 listed in list.dnswl.org]
X-Headers-End: 1pQQll-0006TA-5p
Subject: Re: [V9fs-developer] [syzbot] KASAN: use-after-free Read in
 rdma_close
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

This bug is marked as fixed by commit:
9p: client_create/destroy: only call trans_mod->close after create

But I can't find it in the tested trees[1] for more than 90 days.
Is it a correct commit? Please update it by replying:

#syz fix: exact-commit-title

Until then the bug is still considered open and new crashes with
the same signature are ignored.

Kernel: Linux
Dashboard link: https://syzkaller.appspot.com/bug?extid=67d13108d855f451cafc

---
[1] I expect the commit to be present in:

1. for-kernelci branch of
git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git

2. master branch of
git://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next.git

3. master branch of
git://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf.git

4. master branch of
git://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git

The full list of 10 trees can be found at
https://syzkaller.appspot.com/upstream/repos


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
