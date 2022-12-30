Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF91659757
	for <lists+v9fs-developer@lfdr.de>; Fri, 30 Dec 2022 11:34:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pBCit-0008Tb-Tl;
	Fri, 30 Dec 2022 10:34:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3ur6uYwkbABcFLM7x881ExCC50.3BB381HF1EzBAG1AG.zB9@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1pBCir-0008TP-U0 for v9fs-developer@lists.sourceforge.net;
 Fri, 30 Dec 2022 10:34:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=l1+xVltypcnxAkvWPCQxFM0n2XimN1lwperOL1Mtxsc=; b=ObeQOtKpaZJHZ9Z0EKlDsft/Gg
 2nQt1BF6ZmYX+F1iZWQc/vjqyJhjKQKW2snAkRPwCvUXU10GFu4ZNLX8L5Ai6zsWTOSsFtyqrhRqk
 bTocN5RAbdkHJ+gvyeMZwN20djjLxtG64pdcoHz6c2YcnDzALsPpkRUVN3PR9JCCjE2Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=l1+xVltypcnxAkvWPCQxFM0n2XimN1lwperOL1Mtxsc=; b=a
 b3H3wBgDIdNyE7CRQ1zCw48+4/wW3VvN8s9W/gRxqmjBvYfOTFMhUXG4d8qVKc6v0LUChv0JSQG2c
 ZUKxNw9fefZQraL2tFR8OVOI8my8OCXzyBlm6SsFWYCkinhzJpOXXXoZamsqSNYCvs1U++9LvDtHj
 fNh5lqmGxAPxNZpw=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pBCil-0003nf-Vq for v9fs-developer@lists.sourceforge.net;
 Fri, 30 Dec 2022 10:34:44 +0000
Received: by mail-il1-f199.google.com with SMTP id
 y11-20020a056e02178b00b0030c048d64a7so7480076ilu.1
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 30 Dec 2022 02:34:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=l1+xVltypcnxAkvWPCQxFM0n2XimN1lwperOL1Mtxsc=;
 b=Y2piT1HkIZYn3IdAH3Kk2HZ+Eu/3XU36XPEU3iAbZxi/58iGmVkWy6mWxstb61HAtH
 SZDevFG3PnTYIaaCsuR4iQqcdfFws/hIqSuL/zqEDES26Q97Y3WnNY0sMqpKJW2mvKHF
 P0CTIP2+bdk1kMXXTEP0H7iEWSkCrSSENm9CauuUUFp9Vt9uJgGnh897HFnkCZqAmiL7
 Y6uD37cg6AzgxGzyRcBjpT1aBi4J9Jd6zAxC1wyYLkqCwZrCd/dDAsY7PafzJBEZGk86
 K3KIX/79fh2UQsEVCyPmW+adnDmK4rWAwhF4INAn73x62dgFGl11tsgv3MdQRAi36kMQ
 KnoQ==
X-Gm-Message-State: AFqh2kpkRS+EOSDV1RTXZNKIhjfjRqBLriv9w9tLrxR11LPdblLb1QHg
 qv+868CWlvcdDrAH4dIzMyYQq8E8NT5B0ygXlr0RBhqJuaJC
X-Google-Smtp-Source: AMrXdXuCVhfuhDVOVDBO2QEW3ZsUFRaZINtASNymA6eBjtRAhCOlpvlwUqMjxK5NbcRex/8HxlW2bK/0gq0OxTMGvKNDTLJeZwSu
MIME-Version: 1.0
X-Received: by 2002:a5e:cb44:0:b0:6df:b793:35ac with SMTP id
 h4-20020a5ecb44000000b006dfb79335acmr2257037iok.33.1672396474461; Fri, 30 Dec
 2022 02:34:34 -0800 (PST)
Date: Fri, 30 Dec 2022 02:34:34 -0800
In-Reply-To: <00000000000015ac7905e97ebaed@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000c8b66105f1092536@google.com>
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.199 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
X-Headers-End: 1pBCil-0003nf-Vq
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
