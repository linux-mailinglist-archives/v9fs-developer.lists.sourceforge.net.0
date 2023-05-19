Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DB4F670953C
	for <lists+v9fs-developer@lfdr.de>; Fri, 19 May 2023 12:41:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pzxXe-0004tK-Ei;
	Fri, 19 May 2023 10:40:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3MVJnZAkbAJwOUVG6HHAN6LLE9.CKKCHAQOAN8KJPAJP.8KI@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1pzxXd-0004t7-AW for v9fs-developer@lists.sourceforge.net;
 Fri, 19 May 2023 10:40:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G9TOw2H2TDDn1VQzhH7iezPzkkf4u+p1oMfgUm2gH4s=; b=XpABrTLH1H2mqz+Vwct+K2y1qD
 0Qcapns2LUulvw5dow6F5qNwSDAko2NlpP6QIgJoVHRsARE8HJPhxtrYKmIhu7J6unE8dMj+NFJ6S
 jKvkzHRfJToJYWQTzmk8/Hb0IjafKXdJjEsEIWZBJI1/zSgHM12OWNLQEht0/v3E2du4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=G9TOw2H2TDDn1VQzhH7iezPzkkf4u+p1oMfgUm2gH4s=; b=i
 YNWuu9GGwovEXtI7XOdtDWieG0u+8AYahdbOmnVprkievoyLhOaLosJ7Li7mQ7iEMTOQT9WoNXcFg
 /D+7ly+0CzID9HIKJFTYLx7U1KRiusTthLbSgCYDkbbLAJNvgirprG2g5oPrw+Ghrhpy6OAcx1TSY
 VNFBRhX9O4ZWOW3w=;
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pzxXa-00DH6w-Rv for v9fs-developer@lists.sourceforge.net;
 Fri, 19 May 2023 10:40:58 +0000
Received: by mail-io1-f71.google.com with SMTP id
 ca18e2360f4ac-770222340cfso488270639f.3
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 19 May 2023 03:40:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684492849; x=1687084849;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=G9TOw2H2TDDn1VQzhH7iezPzkkf4u+p1oMfgUm2gH4s=;
 b=CikVG0FJHWWhtXiPizoWO/HsBQi6wiOpyZ0SUdGlFyDtIDHf9INYPNMB4li1oBEk23
 dDA6BjjqPPgo9bumMpwZjryy3VdTgNnGgd1X5TPY82Ec2vq/jpwdEuk6/K7v00eoxAro
 cisWKxlLd0e2vCvMesG+0p4rC7McznekBnHJcpnxJtAAO0GQnOXEYosbGs/QomQX1pr3
 ZPZKT0dmLZJNsp8UXWRygRuPmwF1BSyumFs7aX//MrONAQMH0DpqtBcN1MjiN93oadWP
 gX73ORjy2bE5TpoYOQpzWaWw5LpJDhzONmFmSM3OxaG9ij/ec/tt/X/cC3vuhFiTpoo/
 OLlA==
X-Gm-Message-State: AC+VfDy5BHSBCSJ5icPdb8SW4E4mi+csTd+a4rM4tjg59hWtOt0Sbp3o
 0kHKLXvjcbckxyoQQIROAr9u/8D4+8+xQ60TSa0gC86OwLhK
X-Google-Smtp-Source: ACHHUZ4QMAvvAu11HMro1lpXhxQH2y2TZ7K+U96VwnPLzFF6dbDXZjO027mQ4I6oDWKNp85qzxW9oChkbPZmi5LOXlg+QU7yItqI
MIME-Version: 1.0
X-Received: by 2002:a5d:8e07:0:b0:76c:7d5f:3690 with SMTP id
 e7-20020a5d8e07000000b0076c7d5f3690mr687473iod.1.1684492849358; Fri, 19 May
 2023 03:40:49 -0700 (PDT)
Date: Fri, 19 May 2023 03:40:49 -0700
In-Reply-To: <00000000000015ac7905e97ebaed@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000e9b0a705fc098d91@google.com>
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
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.71 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.71 listed in list.dnswl.org]
X-Headers-End: 1pzxXa-00DH6w-Rv
Subject: Re: [V9fs-developer] [syzbot] KASAN: use-after-free Read in
 rdma_close
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

4. main branch of
git://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git

The full list of 10 trees can be found at
https://syzkaller.appspot.com/upstream/repos


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
