Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D2266944C
	for <lists+v9fs-developer@lfdr.de>; Fri, 13 Jan 2023 11:35:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pGHPe-0003RJ-M7;
	Fri, 13 Jan 2023 10:35:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <39DPBYwkbAIU178tjuun0jyyrm.pxxpun31n0lxw2nw2.lxv@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1pGHPR-0003R3-IA for v9fs-developer@lists.sourceforge.net;
 Fri, 13 Jan 2023 10:35:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=l1+xVltypcnxAkvWPCQxFM0n2XimN1lwperOL1Mtxsc=; b=YQxHE40WndMBoCwsZljDIYnDM4
 N3l4D0+C0UHj+gVmqAnWXREcIEZpt4W3FWEp+wiP1HCF8DxJ/Ourn+DPAWgcL9Vw2Zw9sZhm1h/Fi
 LDPdpVnhn8iMyjkjiR/5Ka/zpmbrXc4idawKLoYU8BlNw666gdSH61KynS/Nxo/xTOF8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=l1+xVltypcnxAkvWPCQxFM0n2XimN1lwperOL1Mtxsc=; b=N
 Qz83Mf4IlXhOUUG8Wpv/BMb/BuUCLOZmPH+Ff//bkAHARhu9KqU9dEi7JMyVskDVGWFmMoZdrtyeS
 WWLo6yYl2ECx35qPzKCE9jyZjN5daCZgt/aA9soMSXDXigQdKtgOL+7lA4l+74akm/oTp7pnmFxiz
 Pxi/0bYWFf4xj4Po=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pGHPN-0006aw-Ty for v9fs-developer@lists.sourceforge.net;
 Fri, 13 Jan 2023 10:35:39 +0000
Received: by mail-il1-f198.google.com with SMTP id
 o10-20020a056e02102a00b003006328df7bso15634112ilj.17
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 13 Jan 2023 02:35:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=l1+xVltypcnxAkvWPCQxFM0n2XimN1lwperOL1Mtxsc=;
 b=AeF+Vj3EWwKqdCj7+UETIL+FWd0HeYZTJ70557T4RBy2jagZ7nxxIndGeCHN6Nj9u0
 eb3ufs2TQ4cDfbMIeY59708uvXzwSEpT+p+7bztrva7dzcLEXkpidA9v/q8acWae782O
 BRyiLO7F7c/FMJegpeUM2f8+zxNCzqWwRKGuZg3seDeGDKnoniSWVDlszcIoNC7IIKS5
 rj/PHEXG8fIgYvG5h//BUe+Hg79yqz+shfAD1p9Hul6dGIH5dOVnbZwNtT8D7e2yhvD6
 2DXHmgxWfqrLHo06k/+whZRH7u/7u75wrQK8pc02cNJbaIYNSgMZF+FTb1ivJDy31ubF
 lthw==
X-Gm-Message-State: AFqh2koYfWwiRQOZE9w7oAKf4tscj8XM06pLUVjVGDuXqmX20oaRl/hq
 hIy/DXSQFQsuNn0m375Yn0w58uzZzHkIODxR50aURD1R8D0a
X-Google-Smtp-Source: AMrXdXueeOIjbgfJsuBkstMAC9Xwe+1dbnbo484X5eHTUi4XAlHe/5Z1A3bZDcjhLu3OpLSqti+aeZx4FW67RwpWMZUBFutdcV5B
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:789:b0:30d:a9e6:785c with SMTP id
 q9-20020a056e02078900b0030da9e6785cmr2630943ils.213.1673606132313; Fri, 13
 Jan 2023 02:35:32 -0800 (PST)
Date: Fri, 13 Jan 2023 02:35:32 -0800
In-Reply-To: <00000000000015ac7905e97ebaed@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000002b67005f222cbba@google.com>
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
X-Headers-End: 1pGHPN-0006aw-Ty
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
