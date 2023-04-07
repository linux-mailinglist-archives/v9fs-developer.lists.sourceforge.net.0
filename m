Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B836DAB92
	for <lists+v9fs-developer@lfdr.de>; Fri,  7 Apr 2023 12:39:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pkjUh-0001WY-6a;
	Fri, 07 Apr 2023 10:38:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3t_IvZAkbAIQ067sittmzixxql.owwotm20mzkwv1mv1.kwu@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1pkjUe-0001WR-Cr for v9fs-developer@lists.sourceforge.net;
 Fri, 07 Apr 2023 10:38:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G9TOw2H2TDDn1VQzhH7iezPzkkf4u+p1oMfgUm2gH4s=; b=AJgou+DGTd3eT28fn5LN0/0GcG
 TDbdqYwrafYwJN56iVc8DOoomA0kcshaWyZ+QQ6P+0NQqiD2LeBpHDK9p5FR7yQH1GuH8Bg/08c7d
 QwtnEdhTMBtzkfMW1Ceunj5WBE56YhMjFO26epfr1koqDGIjmmgG8fOu6iPNaH4QgueY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=G9TOw2H2TDDn1VQzhH7iezPzkkf4u+p1oMfgUm2gH4s=; b=W
 1PH0FIaI7G+EFmsSE4yUNoB7uYmGklAL4f1zq4KtIaO0a3j5iyNAegQ6KJp/vnV1IMq0A/Fs+kx68
 J9UvDjoVPPUe0bSpBB6L9ScOTG/YomT6K/1/I7Zi9/6SyRLU7l9vmAtSapF0xOmgPDfH1K6y6rTVe
 /FHPC2yft+p03UBM=;
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pkjUb-0005iV-Rw for v9fs-developer@lists.sourceforge.net;
 Fri, 07 Apr 2023 10:38:56 +0000
Received: by mail-io1-f71.google.com with SMTP id
 d204-20020a6bb4d5000000b00758cfdd36c3so25713176iof.0
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 07 Apr 2023 03:38:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680863927; x=1683455927;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=G9TOw2H2TDDn1VQzhH7iezPzkkf4u+p1oMfgUm2gH4s=;
 b=Zn86BXIj7OgYnwR5PyTpWrc5HzZoA9xc7Nx5djWGXfRVw/vOyb3KXMqRKnsBYnSx1/
 PRRIY2X61Gorng14xaDzWXILScqx8zNv6sFDJa5eIM/5T7BlHYpLkL9QY1+YjHGBLeZ4
 MPDOpOrU3PI1jf6IYEhsIu8jMYok1YIHn5nsFg/PF4tm8PqSj0oNKN63J3BOg6/YtDIu
 DFd416+EXQ4clEunmd5yyq1SlJURtvD5vjLvYMXWTxCJ9jqNC/KKL3Ve1zShoz1sRNN+
 tBvdSj5QACn3qON812sTva7RiTLVBdLO9bqeQbQKOWqrdXGNyQHRBqnel5npMD+S1t84
 H7Bw==
X-Gm-Message-State: AAQBX9c/JdOqi7J+HfhMBo+cal1iWh/4Kpqzcz85NqOd/woR+n517wDc
 TeSMOPFA0C1W1cy5Yu9l+faS7mwQ5Ms5uH2DgZ42tNPx+QLb
X-Google-Smtp-Source: AKy350bTIloAMOJJCWF2F+P3ocOqmsKkwIitkngIToLoISfzb+CofxA0fYn2DshSsa/5n9OaLiw4mn36VAr9CwfHsfRY+1WsVc7M
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:b29:b0:310:d36c:35e6 with SMTP id
 e9-20020a056e020b2900b00310d36c35e6mr1109451ilu.3.1680863927533; Fri, 07 Apr
 2023 03:38:47 -0700 (PDT)
Date: Fri, 07 Apr 2023 03:38:47 -0700
In-Reply-To: <00000000000015ac7905e97ebaed@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000510b2d05f8bca14b@google.com>
From: syzbot <syzbot+67d13108d855f451cafc@syzkaller.appspotmail.com>
To: asmadeus@codewreck.org, dan.carpenter@oracle.com, davem@davemloft.net, 
 edumazet@google.com, ericvh@gmail.com, kuba@kernel.org, leon@kernel.org, 
 linux-kernel@vger.kernel.org, linux_oss@crudebyte.com, lucho@ionkov.net, 
 netdev@vger.kernel.org, pabeni@redhat.com, syzkaller-bugs@googlegroups.com, 
 v9fs-developer@lists.sourceforge.net
X-Spam-Score: 3.1 (+++)
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
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.71 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.71 listed in list.dnswl.org]
X-Headers-End: 1pkjUb-0005iV-Rw
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
