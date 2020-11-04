Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BF92A63BB
	for <lists+v9fs-developer@lfdr.de>; Wed,  4 Nov 2020 12:57:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kaHQD-0000IA-DL; Wed, 04 Nov 2020 11:57:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1kaHQC-0000I3-81
 for v9fs-developer@lists.sourceforge.net; Wed, 04 Nov 2020 11:57:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2t1AiDgkKOtehlJf9ksFzwCpxYWIkcr1ROs3yTQip1Y=; b=i4GrlFMKWtwojqSMon7anS4G3s
 vOMWVJvOboIMTGaezS9QgyI+HMM8+VMRRZ0uOEybER+TX+z9Wrl22m3Swu2qpnHS4vumj/2oSKirv
 wZFoexLtoV17Zh2YHZJAeEYsvUkzDJUdIAABszikLBqa613W5BGYdvEiUjtby2/HSFME=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2t1AiDgkKOtehlJf9ksFzwCpxYWIkcr1ROs3yTQip1Y=; b=Mc8B0QjqyXa8BghJmYqG7c7BCD
 AVf0KN5943JBxUsrPx3mTvVwMOZviog9BsZP/u+zqimJO4jh2oBPUH8yzck2GD+S5paa9yFxhfPRC
 F5Pq4ydNxSR23wVuv3RMB5raPGjEAWwsAog3nmhrUoxtilZaj7ju9xso2bor18GfkL0g=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kaHQ3-0097un-Ru
 for v9fs-developer@lists.sourceforge.net; Wed, 04 Nov 2020 11:57:48 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 653E9C01B; Wed,  4 Nov 2020 12:57:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1604491043; bh=2t1AiDgkKOtehlJf9ksFzwCpxYWIkcr1ROs3yTQip1Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=syYxOsh8Q/ebgtC4yxsyxN5Qdt0aRu85IZXEBj0oK2AWULlHpCnmAQ4fSVCdLNk6y
 TWf3jcRX3EoFhpfoQayn3WWQHUDhN7Bz1vQzr9JO8dhht+24YeDSnAKtkJJgeYdUcm
 yh7uIrZGyCGmmmwzBydG4JQ+KZZfPkteAnWx+t3BObik+OLDUfCSWo8nsJ/uEXJGhm
 8YfFmi78gmkJiKHaUO+ya5cIEZiLR2599zwWMKiS7Qq9P1wRxPzb2jPAJehWLKlxJb
 YpJj2c6G45qumFh305/qHSbcRQSiLiQQwCtBDv1iXhtygeYoAoCl4zowiku5xCQmvU
 YwiqTOtM62Mcg==
Date: Wed, 4 Nov 2020 12:57:08 +0100
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <qemu_oss@crudebyte.com>
Message-ID: <20201104115708.GA30104@nautica>
References: <20200923141146.90046-1-jianyong.wu@arm.com>
 <20200923141146.90046-5-jianyong.wu@arm.com>
 <20201103104116.GA19587@nautica> <1755303.6a88tIVZ8j@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1755303.6a88tIVZ8j@silver>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kaHQ3-0097un-Ru
Subject: Re: [V9fs-developer] [PATCH RFC v2 4/4] 9p: fix race issue in fid
 contention.
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
Cc: lucho@ionkov.net, justin.he@arm.com, ericvh@gmail.com,
 Jianyong Wu <jianyong.wu@arm.com>, groug@kaod.org,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Wed, Nov 04, 2020:
> > Greg, Christian - from what I understood (in private, hopefully I'm
> > allowed to repeat!), he won't be able to contribute to qemu because of
> > company policies and I'm unlikely to take the time either right now.
> > I don't think it's a problem to continue as is though, we can land linux
> > kernel support (it's still useful for non-qemu servers) and if someone
> > is interested later on they'll just need to finish that bit.
> 
> Hmm, no idea what kind of policy that is; there is no GPL3 in qemu at least 
> that some companies are concerned about, but OK not my business.
> 
> I actually thought this would still take a while on kernel side,

To be honest, so did I -- the original patches are so old I had more or
less given up on it :P

But I don't see any more problem now and we'll want to get there
eventually so now's a good time as any... I just want to get fault
injection to work to test various refcounting cornercases but shouldn't
be much longer.

> so in the 
> meantime we layed the ground in qemu for resolving this issue independent of 
> clients and independent of any guest OS installation by introducing test cases 
> using the 9pfs 'local' filesystem driver:
> 
> https://github.com/qemu/qemu/blob/master/tests/qtest/virtio-9p-test.c
> 
> So the idea was to resolve that chicken egg problem of this issue that way and 
> also handle it a bit more systematically. If you now run qemu's 9p tests with 
> latest git version (or at least with yesterday's QEMU 5.2 rc1 tarball):
> 
> cd qemu/build
> make
> export QTEST_QEMU_BINARY=x86_64-softmmu/qemu-system-x86_64
> tests/qtest/qos-test
> 
> these tests will now create a test directory qtest-9p-local-XXXXXX under the 
> current directory (i.e. the build directory) where they are creating real 
> directories and files like on a production system would do, just without a 
> guest OS.
> 
> As you can see, there are already 9p tests for creating and deleting 
> directories, files, symlinks and hard links, etc.
> 
> Maybe somebody interested to see this issue resolved in qemu might help by 
> rebasing Greg's old patches and testing it with some test cases this way. 
> Personally I need to work on some other things in the next couple weeks, but 
> if somebody needs help, questions, review, etc., I'll be there.

Great news, nice work there.
I see the new tests it doesn't look hard to add new ones reproducing
open-unlink-fstat for example; I think it's good to have regardless of
kernel progress.

We'll get there!
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
