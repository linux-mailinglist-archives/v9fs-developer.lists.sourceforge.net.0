Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 15CA7496C9C
	for <lists+v9fs-developer@lfdr.de>; Sat, 22 Jan 2022 14:34:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nBGXV-00041I-2N; Sat, 22 Jan 2022 13:34:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1nBGXU-00041B-74
 for v9fs-developer@lists.sourceforge.net; Sat, 22 Jan 2022 13:34:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7tVvPw1gbjN1VQGvs1wPWPfPeY44jYM8vCN3iw8Q8mY=; b=lD4oc6pK8ZtuB+diaA9u3ZWob0
 9qNkzp6M+lvLQeGOnHz8NLMpAkdiWWEKRKNetTFliQRM7lN8jMMwK/XL11tBsqaF8B3YiYp+tAUXK
 FWiAqN/0J4H3EAUF+lIfSEr0i+YtE/qbQdFtVqmWpGt6xduK1mskp6XimEuUc7nWpAYs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7tVvPw1gbjN1VQGvs1wPWPfPeY44jYM8vCN3iw8Q8mY=; b=k9MvFnQCJr1B0huvrtTRJvTgW7
 DyW6WUWwDbF4+xkTpfchyOG6eT/aGqmVqQ+te7kTVn2L5ZIiweNcHAteYPxQTii/wr/6c2CzZ1jEr
 nNUNoNMHJPamVRXl7QXfBInZJVEUsh1tJCxYA6+oWt8kQJtM0alyhh9kHJegtYvcXMbQ=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nBGXO-0003kW-Jj
 for v9fs-developer@lists.sourceforge.net; Sat, 22 Jan 2022 13:34:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=7tVvPw1gbjN1VQGvs1wPWPfPeY44jYM8vCN3iw8Q8mY=; b=YG2T92gSjy+9+Cr1l2pEg96PqR
 wdnblpAX9r7DdwUX0H2932PXncxDoVmjkBRj7lyk4MYltQqsL7Vunl5dUuCysWPnpHSm0I4p05W2q
 C/F8XcrDr4WDDViTQziHwY9E2ig4yi38HFaOZuoRHPzjhxYrQnQ747Z6havpuTqS09WjQpm4BY4uW
 PZjNhi47rWkP5SzQ6EwORGTLxmQPYFg9oLjlv4TKyE+LwH7UElwe7KHQY2kqjCSIOcGe3jwWNL6tW
 OD0imTgWnjXZ9ddxbSMPP1KwSBURhTJiJ4GDcR7f/ahteL2VyQQvMEM0DdUp+9dPt4vj7uADBvETh
 mr25wlrUiStenSnOmJTm5I9QgJfVV2O+nJxR1FyX1yyC7L7Zd4jkCzPQn3eOXoUBZpOjcRyhVWM4P
 EI7+swDZG4xad/3/G/H50TyIIRCZp9Br+4GWuIg1gZcyoITpA6dgsKPRa0oCMwlurhauiUtaK+Nwe
 MFa7d23OJfJBf3/aPqvxNyo0Al53ZWBN2pajyfZa3qSoMFXSmyMc23jCMh75IQnHOcQ6O7to11hzb
 SdKeks++Z7D4Q+P5NweXRJotLW/z1r6ksoQInKUc/NelApP8DaJeTXIuFopJu0T8PNFF+1If+HEuU
 gAZdKavfGy3HFtymHBOfBd73s1g6nj519aR+Ecdzk=;
To: Nikolay Kichukov <nikolay@oldum.net>
Date: Sat, 22 Jan 2022 14:34:24 +0100
Message-ID: <1835287.xbJIPCv9Fc@silver>
In-Reply-To: <29a54acefd1c37d9612613d5275e4bf51e62a704.camel@oldum.net>
References: <cover.1640870037.git.linux_oss@crudebyte.com>
 <29a54acefd1c37d9612613d5275e4bf51e62a704.camel@oldum.net>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Donnerstag, 20. Januar 2022 23:43:46 CET Nikolay Kichukov
 wrote: > Thanks for the patches. I've applied them on top of 5.16.2 kernel
 and it > works for msize=1048576. Performance-wise, same through [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1nBGXO-0003kW-Jj
Subject: Re: [V9fs-developer] [PATCH v4 00/12] remove msize limit in virtio
 transport
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, Greg Kurz <groug@kaod.org>,
 v9fs-developer@lists.sourceforge.net, Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Donnerstag, 20. Januar 2022 23:43:46 CET Nikolay Kichukov wrote:
> Thanks for the patches. I've applied them on top of 5.16.2 kernel and it
> works for msize=1048576. Performance-wise, same throughput as the
> previous patches, basically limiting factor is the backend block
> storage.

Depends on how you were testing exactly. I assume you just booted a guest and 
then mounted a humble 9p directory in guest to perform some isolated I/O 
throughput tests on a single file. In this test scenario yes, you would not 
see much of a difference between v3 vs. v4 of this series.

However in my tests I went much further than that by running an entire guest 
on top of 9p as its root filesystem:
https://wiki.qemu.org/Documentation/9p_root_fs
With this 9p rootfs setup you get a completely different picture. For instance 
you'll notice with v3 that guest boot time *increases* with rising msize, 
whereas with v4 it shrinks. And also when you benchmark throughput on a file 
in this 9p rootfs setup with v3 you get worse results than with v4, sometimes 
with v3 even worse than without patches at all. With v4 applied though it 
clearly outperforms any other kernel version in all aspects.

I highly recommend this 9p rootfs setup as a heterogenous 9p test environment, 
as it is a very good real world test scenario for all kinds of aspects.

> However, when I mount with msize=4194304, the system locks up upon first
> try to traverse the directory structure, ie 'ls'. Only solution is to
> 'poweroff' the guest. Nothing in the logs.

I've described this in detail in the cover letter under "KNOWN LIMITATIONS" 
already. Use max. msize 4186112.

> Qemu 6.0.0 on the host has the following patches:
> 
> 01-fix-wrong-io-block-size-Rgetattr.patch
> 02-dedupe-iounit-code.patch
> 03-9pfs-simplify-blksize_to_iounit.patch

I recommend just using QEMU 6.2. It is not worth to patch that old QEMU 
version. E.g. you would have a lousy readdir performance with that QEMU 
version and what not.

You don't need to install QEMU. You can directly run it from the build 
directory.

> The kernel patches were applied on the guest kernel only.
> 
> I've generated them with the following command:
> git diff
> 783ba37c1566dd715b9a67d437efa3b77e3cd1a7^..8c305df4646b65218978fc6474aa0f5f
> 29b216a0 > /tmp/kernel-5.16-9p-virtio-drop-msize-cap.patch
> 
> The host runs 5.15.4 kernel.

Host kernel version currently does not matter for this series.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
