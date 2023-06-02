Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9A471FF9C
	for <lists+v9fs-developer@lfdr.de>; Fri,  2 Jun 2023 12:42:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1q52F1-00050v-Eu;
	Fri, 02 Jun 2023 10:42:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3nMd5ZAkbAD0rxyjZkkdqZoohc.fnnfkdtrdqbnmsdms.bnl@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1q52F0-00050p-KA for v9fs-developer@lists.sourceforge.net;
 Fri, 02 Jun 2023 10:42:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G9TOw2H2TDDn1VQzhH7iezPzkkf4u+p1oMfgUm2gH4s=; b=GyRb9Exmj9WLMeHvtJgGwOm0vo
 Xq1bLazyIvOI5mtcrMvRcwbcaQv19SI0ngKI7awbprGMQOHqnq9L+Gg1SmQ5GnCGNwHS6EdxJjDAS
 noKXwE1+Qn/CfJBQ2R22eqVdwDeuniPYbWTNQm04s5uIw3pQa1ZDgNHKXlSZwRq5yuSk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=G9TOw2H2TDDn1VQzhH7iezPzkkf4u+p1oMfgUm2gH4s=; b=m
 pGgzm7T1gAFyAamtjKwDD3LvQyngqMJGqxPpPgz8xKpSwdsih3AnhnX2P88J+FtcwvM/F5j7E/8ST
 AEJxR3RFYg278CBImcGksx6isoCDj7zHGtqKnv0GiMqScZCZcoh8c6/TxC77DTTPw7uwXLu3AdTyg
 rM4FvJR1i7KYv0cQ=;
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1q52F0-0001b7-AJ for v9fs-developer@lists.sourceforge.net;
 Fri, 02 Jun 2023 10:42:42 +0000
Received: by mail-io1-f69.google.com with SMTP id
 ca18e2360f4ac-777683e803bso86380139f.3
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 02 Jun 2023 03:42:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685702556; x=1688294556;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=G9TOw2H2TDDn1VQzhH7iezPzkkf4u+p1oMfgUm2gH4s=;
 b=B6aqF8fSFnuy5V9skKl9H7Y9wzskfQF+H6RnGPYDHPpowO0aPvVhhwhyVUdHwfm8nz
 g89ywFBJ3jMjp7Dg0U8rOvH79td+LSVYEhZIKC9VVr3JQssrTg/gvkvUdN8Z7/2TT2rL
 R553jcaB28nezLDLCf0bkXdLGFLdfDjUm4C4YJHLp5yyrhkj8nwp+qC7ZjL5alW34BrG
 VSCKmvgiNLsErZinODRrXiAsgTJFesG8eIQg4AuLCDxNsn1RPM4lDPfP0b9dwSTQiUHw
 hNBauNGvRS6GErH62IV0bD76F8Tr/kaRojPczJpAHxH0ya1kLtFLRejqA5w8XklQZmx+
 wfaw==
X-Gm-Message-State: AC+VfDz6h17b/uQceRkmZExxOdirH5GI72dEwSXG475EaEfSqsZ/5Vk7
 bEHDegZXdqgd0vyVrKp50emZFf6A9TfZTptNgvfZp9vSA/hN
X-Google-Smtp-Source: ACHHUZ5g81UbT0rdYhiZsxkJQRZusYNFheAl9Q2G8/fz5X7oyogzCbJ3gEEO9e7RVn0nSDYkK4N6utNhjlOH6ehZj7UVEKz1AfvE
MIME-Version: 1.0
X-Received: by 2002:a5e:a814:0:b0:774:7cc5:6682 with SMTP id
 c20-20020a5ea814000000b007747cc56682mr799847ioa.3.1685702556762; Fri, 02 Jun
 2023 03:42:36 -0700 (PDT)
Date: Fri, 02 Jun 2023 03:42:36 -0700
In-Reply-To: <00000000000015ac7905e97ebaed@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000017cc6205fd233643@google.com>
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
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.69 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.69 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1q52F0-0001b7-AJ
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
