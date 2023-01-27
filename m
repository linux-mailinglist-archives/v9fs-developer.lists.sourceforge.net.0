Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C36D67E1C3
	for <lists+v9fs-developer@lfdr.de>; Fri, 27 Jan 2023 11:36:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pLM65-0000NN-K2;
	Fri, 27 Jan 2023 10:36:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3L6nTYwkbAPQouvgWhhanWlleZ.ckkchaqoanYkjpajp.Yki@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1pLM62-0000NG-Mb for v9fs-developer@lists.sourceforge.net;
 Fri, 27 Jan 2023 10:36:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=l1+xVltypcnxAkvWPCQxFM0n2XimN1lwperOL1Mtxsc=; b=LGiGI7aio/4IP+6XZ+sxdIcuKm
 F7bueoBnMk99GYRZEq+w4LbD8W60uiSHR2Nfoty2OKFmNf3b1zUNzPld7Zn2Lg1E9vIgNp6wiF9k4
 DXWwbH8v09itdhhFkfHTbP3W0qnl3sFrcPIsGwdu4c3Pb+nEVE9Db/o6P/wEx7OAtEcI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=l1+xVltypcnxAkvWPCQxFM0n2XimN1lwperOL1Mtxsc=; b=B
 AU3+8ivBFPA5njarXf3BsHtW6gA/MW/ayZea1l50Buf/CeF/raB/bvFe/CVp2oUJ0kxnJIWrKZzDN
 6+pdJd6boWCKnggeldlwhIjjdBj1EaA9ObUzYiyXfY6SC1jzaHH/0sTmyY/k5s+9kiIXEYUb/H1uM
 kuJX9ZwdymTt4i74=;
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pLM60-000Lz2-M3 for v9fs-developer@lists.sourceforge.net;
 Fri, 27 Jan 2023 10:36:37 +0000
Received: by mail-io1-f69.google.com with SMTP id
 11-20020a5ea50b000000b00704d9039115so2500757iog.22
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 27 Jan 2023 02:36:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=l1+xVltypcnxAkvWPCQxFM0n2XimN1lwperOL1Mtxsc=;
 b=hcgMHtKB7qt/h/rnxUq7FPxVhWuE4Yv6n2UdltFXQ5+Qd5AV5y9bcRzUDMIo4gAbcq
 HRpvxk2HuBDaEp18fKB8q4g4/qLIBhsKx9NM79e7SfG0pB4jeTGaOAmaoXzCrGaq4ueR
 yWOvxmvuvU5VvmgMCtMDWPfjdaDstqq1zhEkDZCBF8hskgA/49nX6w1KJUDNzHF63ltK
 IiMn9cleehYnI7ROMKcw8+5f0H1HC+sjmd2do92hdqe7acTU9uT1uGWP0BTQkCm6ajdS
 KjLckrf5Phofd3uyGNqcvBcVUjzzDFksTDEYROdeePmZWScA0ctuOOfFANOzDg0De0rp
 +Rmg==
X-Gm-Message-State: AO0yUKUX6+o063PdE+Dx9fiJQ8pB0nPRtsh/Y20agDzN5qDcmnAf5HXN
 tGqSgfXF2v90IqNl+Fa7e8vDqFKo1LmT4B0di3x4tZpYXBmc
X-Google-Smtp-Source: AK7set/LRjnKN3c3QPuyatvHLLG5RJKQV+J+jrRWeqchw7/XkjSPAx+OlYIsIezViEiSxTHqMMHTc0HR/QmM25RqTNZHS3j2E2Q8
MIME-Version: 1.0
X-Received: by 2002:a92:8e4d:0:b0:310:c52c:81ff with SMTP id
 k13-20020a928e4d000000b00310c52c81ffmr294320ilh.50.1674815791087; Fri, 27 Jan
 2023 02:36:31 -0800 (PST)
Date: Fri, 27 Jan 2023 02:36:31 -0800
In-Reply-To: <00000000000015ac7905e97ebaed@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000004acbb005f33c7013@google.com>
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.69 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.69 listed in wl.mailspike.net]
X-Headers-End: 1pLM60-000Lz2-M3
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
