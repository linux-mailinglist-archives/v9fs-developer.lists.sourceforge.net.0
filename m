Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ECBF56EA874
	for <lists+v9fs-developer@lfdr.de>; Fri, 21 Apr 2023 12:39:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ppoB6-0007Wq-Ap;
	Fri, 21 Apr 2023 10:39:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <35mdCZAkbAOcbhiTJUUNaJYYRM.PXXPUNdbNaLXWcNWc.LXV@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ppoB4-0007WX-Ly for v9fs-developer@lists.sourceforge.net;
 Fri, 21 Apr 2023 10:39:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G9TOw2H2TDDn1VQzhH7iezPzkkf4u+p1oMfgUm2gH4s=; b=idfiElV+HXhZddEQ/O1LgrGDm/
 UbneZa0hk+BA8028hhz6NajfVybJ0NrH6XwylPV2h4vWz8/cK/VxIUdcjoTZX/ofPMT4cFe1b+A4D
 fSRZH3QTSw5a5LzWNfSn9xyi5SiWm8+MuIl/LG6+ZpcbrHvf7dh4S8adgxNE9cRr1+Wo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=G9TOw2H2TDDn1VQzhH7iezPzkkf4u+p1oMfgUm2gH4s=; b=c
 i7ipDBz/79xEAwXZ8wb/90/G0FYCI++NwFxuGOq+mdRTon7ALpd8aU90pSY9vFGbS6qboZ5MYfryb
 sCpd+Z3ERRz6KK2o1uM6hmzLRo+PzV55d11Pwcf4/aFwKNo3wRmQo37Iehl7j6qP2Fo2h2liaOJAe
 Shj+PWSxG/O7+3pk=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ppoB1-0003SP-U9 for v9fs-developer@lists.sourceforge.net;
 Fri, 21 Apr 2023 10:39:41 +0000
Received: by mail-io1-f70.google.com with SMTP id
 ca18e2360f4ac-7606d44d4cfso148100739f.1
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 21 Apr 2023 03:39:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682073574; x=1684665574;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=G9TOw2H2TDDn1VQzhH7iezPzkkf4u+p1oMfgUm2gH4s=;
 b=GgLnnjjbJ3gjn73XRCrHqVIUgojAld/+KWdazdw5d0k0gbWD7yZHJ1cH4lFy3E9JOl
 XbfvQO/TdoqpZtQS0Z3Qyvsz/hddVFaclXmJXKDevEOtXZxr+Vjh8nMh6SeGnSCYb0Lj
 h5ihOfB8AQ6mBMJ50LODls51mmsod9kiO+TojwYqK4ExkPhPvI6J7neht+sMjHTMIHVw
 c5xilqu0wvYFXyeAxCjrVChRFaKj4J/MwcU1pthuTG0DhAkeoF04NIxqq2HXktyNeVIk
 JtLxgSE/z9nkktBKXDnSMa6h0cL9LRASSCDEvChBhzX3Yl0mJlO8zmV0M3p/ToN/JySI
 3jwQ==
X-Gm-Message-State: AAQBX9ct6DCSkzLeo2vvY27hYt0os4WQThhS1YKMQTcIkOWzgY7EOvqC
 UoTPaHXiumnrnqKgA9jW1PhWq6gNLgqXW6LdMq8GXjiCPSxL
X-Google-Smtp-Source: AKy350YyCFmua8oWPJ4Yg0OC2jZMgh0inWc9TsFM5D0fT3r23bveFRBsJ3dexBUvmI5UDsULh2YriO+HvaWQi4f6SSMZylMOO7au
MIME-Version: 1.0
X-Received: by 2002:a6b:e30e:0:b0:760:a66f:af61 with SMTP id
 u14-20020a6be30e000000b00760a66faf61mr2285637ioc.2.1682073574354; Fri, 21 Apr
 2023 03:39:34 -0700 (PDT)
Date: Fri, 21 Apr 2023 03:39:34 -0700
In-Reply-To: <00000000000015ac7905e97ebaed@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000e2ba1c05f9d645f5@google.com>
From: syzbot <syzbot+67d13108d855f451cafc@syzkaller.appspotmail.com>
To: asmadeus@codewreck.org, dan.carpenter@oracle.com, davem@davemloft.net, 
 edumazet@google.com, ericvh@gmail.com, kuba@kernel.org, leon@kernel.org, 
 linux-kernel@vger.kernel.org, linux_oss@crudebyte.com, lucho@ionkov.net, 
 netdev@vger.kernel.org, pabeni@redhat.com, syzkaller-bugs@googlegroups.com, 
 v9fs-developer@lists.sourceforge.net
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This bug is marked as fixed by commit: 9p:
 client_create/destroy:
 only call trans_mod->close after create But I can't find it in the tested
 trees[1] for more than 90 days. Is it a correct commit? Please update it
 by replying: 
 Content analysis details:   (3.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.70 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1ppoB1-0003SP-U9
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
