Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C68716A1A67
	for <lists+v9fs-developer@lfdr.de>; Fri, 24 Feb 2023 11:37:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pVVST-0007u8-7x;
	Fri, 24 Feb 2023 10:37:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3cZP4YwkbAKASYZKALLERAPPID.GOOGLEUSERCONTENT.COM@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1pVVSR-0007u2-0I for v9fs-developer@lists.sourceforge.net;
 Fri, 24 Feb 2023 10:37:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=l1+xVltypcnxAkvWPCQxFM0n2XimN1lwperOL1Mtxsc=; b=OrkWlyfDUPCWTHwQ35pyAvThqa
 czbt/uhWe32IGtOR9kbFav48tPwQZ+ZOH0tuvoRrj2a4RUi8v+XVlHL4H39yyxQII+qj1jXloSFBU
 galF68nIigNGW8XUlws+77ZIQhfgSZ4h0dxmlvsBM6oN/D/kg7QFWtZQPwYHRDLSTdoA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=l1+xVltypcnxAkvWPCQxFM0n2XimN1lwperOL1Mtxsc=; b=i
 o6qMOMR3whgav2g5SuVBXP/0XyleHJCmvSkMi1gurLj1WFIUYTos4XVN6IeecHL7HZ9bpYcPFQye7
 qQLxCjzTiZqhlXXAJrzqTlnR93M1YJqMktDhm/vI+BBJnyEoQoY2tn1giccXRTxgx9kBDCXP57j8/
 HTIn3gyxjgTQC3mk=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pVVSQ-00FgIT-Ik for v9fs-developer@lists.sourceforge.net;
 Fri, 24 Feb 2023 10:37:43 +0000
Received: by mail-il1-f199.google.com with SMTP id
 y7-20020a056e02174700b00315831bdfffso7132009ill.18
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 24 Feb 2023 02:37:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=l1+xVltypcnxAkvWPCQxFM0n2XimN1lwperOL1Mtxsc=;
 b=cYKcw2OTLe0QICTSXaO1AIW5bAkMYEwpcAIfKtArVDludun6VWXu1xy6RWTmbAM7Qf
 e8aQQezli63Pc/cAsMdep3C1Fuo+IqFRtUrqKGMiuFn9TtuldT1UiJBSvJAuQrqLqWBh
 Hg3lUWayqK7WmpNzQZy/LkQ5arJCpXH5o90C53jrPUiuK2Wm5QccuRZilxPeg3DDrNGa
 gJXy8a7iuuX0L9vY3VikosSUtWM8ezQuMVPYB+vQkHItoh8IV5lLRsRNvpMcwlapwR8N
 TX36II4GZtVQSvd3GQhY6znzawbp7imARbSyCSmoz6x0j44J8gk/voUeK/mpHFudRdx1
 e7eA==
X-Gm-Message-State: AO0yUKXYEMaxclQY1V6gsygG4lJjn95t3ZMxXsPyXAlZdlpnWHLqFFx1
 nBdTAcyx/4N7fwBYcNs7cC6TpS5Fg83jO7C5qj8070qIF1N7
X-Google-Smtp-Source: AK7set9BQ2hLGkH4rh6LoB1pxceRVcoO+duNseH2oJ7Z8vnoT9cTfctrdK8+cxyn/3t4o+rlHABCUXESiz5flpE9j9PDcihi/jRF
MIME-Version: 1.0
X-Received: by 2002:a02:a15e:0:b0:3c5:19e6:b532 with SMTP id
 m30-20020a02a15e000000b003c519e6b532mr5810674jah.6.1677235057020; Fri, 24 Feb
 2023 02:37:37 -0800 (PST)
Date: Fri, 24 Feb 2023 02:37:37 -0800
In-Reply-To: <00000000000015ac7905e97ebaed@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000c7553a05f56fb722@google.com>
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
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.199 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
X-Headers-End: 1pVVSQ-00FgIT-Ik
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
