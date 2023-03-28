Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 996D56CC976
	for <lists+v9fs-developer@lfdr.de>; Tue, 28 Mar 2023 19:41:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1phDJw-0008MK-Uu;
	Tue, 28 Mar 2023 17:41:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mcgrof@infradead.org>) id 1phDJv-0008MA-95
 for v9fs-developer@lists.sourceforge.net;
 Tue, 28 Mar 2023 17:41:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XA3V/SqCMK03TX/XK2Fih6eGxCHfmkEQA7ESYIGi5Fk=; b=MfhCS3GReLcQntWd1Fk/tCLjUC
 XOH4l8ygj5UKa6GtjNNdc6gIencD0T7aW0l0DJGBBFnUW5bAVqzwd5flO1sBBSjivAtaFzcrmApn1
 26mcKzF/gLL/PcZWygu0R9uVoBQO0LaDTOdKpxODwGTQIwL3ieGzdMWD2PggwnWR7SM4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XA3V/SqCMK03TX/XK2Fih6eGxCHfmkEQA7ESYIGi5Fk=; b=Hp4T64I+aQROeXa2p0UffM286c
 KHfSWiD2kiTDnHpR7cfyTql6TUtj/k0mFvVDkJLW4SA7ed0AxiHgDCSFZunUSTTkDFlVGt+wD5cZD
 +YVt/7pvQKyxHZ6UjrYkZ3xf64GUClFGRQhxYA9hsMzAVxPjd8wrEDLrY1xQiY4LEUIg=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phDJu-007MMQ-Qf for v9fs-developer@lists.sourceforge.net;
 Tue, 28 Mar 2023 17:41:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=XA3V/SqCMK03TX/XK2Fih6eGxCHfmkEQA7ESYIGi5Fk=; b=wSBhrhYnvDL1WlDW+LBAElxarl
 ZR2NCQ2dBSyG9IhbY5oWyVLJGh0Yc3uNJZ7hiV3EiTSqux8Fa/936yvG4bjeQ3F6+auHlCsNZYe2j
 UWqkpvzzMvld0VUXKopREQfYoOAn5GBnLiISGA3Mv1vqRtqBVrNuLGUTDBkJ6cXz8cUOy/1XfPdi8
 m2j/hLjPyWNp+m5ShslGKL+X4ndyaaHFZj+PraJxfT6esn+4g9Ms49NZFXVE2W0vLjWco1U4SZDIB
 eNvtI97S8YJpvgWbXEm4hcReX9tq9JhmM4Bhg3FW9yboPKIkJMPXwSc/nGazL2qODu3KJYjQXBfVe
 LgdAEKZA==;
Received: from mcgrof by bombadil.infradead.org with local (Exim 4.96 #2 (Red
 Hat Linux)) id 1phDJe-00FLag-0g; Tue, 28 Mar 2023 17:41:02 +0000
Date: Tue, 28 Mar 2023 10:41:02 -0700
From: Luis Chamberlain <mcgrof@kernel.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <ZCMmrnmZFcH65Orp@bombadil.infradead.org>
References: <ZA0FEyOtRBvpIXbi@bombadil.infradead.org>
 <ZCHU6k56nF5849xj@bombadil.infradead.org>
 <ZCJRlqc/epbRhm93@codewreck.org> <2391219.DQnbcWml7j@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2391219.DQnbcWml7j@silver>
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Mar 28, 2023 at 01:53:49PM +0200,
 Christian Schoenebeck
 wrote: > Hi Luis, > > not sure which QEMU wiki page you are referring to.
 AFAIK we currently have 3 > QEMU wiki pages concerning 9p: > > [...] 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1phDJu-007MMQ-Qf
Subject: Re: [V9fs-developer] 9p caching with cache=loose and cache=fscache
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
Cc: lucho@ionkov.net, Pankaj Raghav <p.raghav@samsung.com>,
 Eric Van Hensbergen <ericvh@gmail.com>, Amir Goldstein <amir73il@gmail.com>,
 Jeff Layton <jlayton@kernel.org>, Josef Bacik <josef@toxicpanda.com>,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Mar 28, 2023 at 01:53:49PM +0200, Christian Schoenebeck wrote:
> Hi Luis,
> 
> not sure which QEMU wiki page you are referring to. AFAIK we currently have 3
> QEMU wiki pages concerning 9p:
> 
> 1. 9p documentation for users:
> https://wiki.qemu.org/Documentation/9psetup

It was this one. I hadn't looked at the other ones.

> 2. 9p documentation for developers only:
> https://wiki.qemu.org/Documentation/9p
> 
> 3. How to setup an entire guest on top of a 9p root filesystem:
> https://wiki.qemu.org/Documentation/9p_root_fs
> 
> Only the latter wiki page mentions cache=loose at all:
> 
>   "To speedup things you can also consider to use e.g. cache=loose instead. 
>    That will deploy a filesystem cache on guest side and reduces the amount
>    of 9p requests to hosts. As a consequence however guest might not 
>    immediately see file changes performed on host side. So choose wisely upon
>    intended use case scenario. You can change between cache=mmap or e.g.
>    cache=loose at any time."
> 
> Which I now changed to:
> 
>   "To speedup things you can also consider to use e.g. cache=loose instead.

My experience is that cache=loose is totally useless.

>    That will deploy a filesystem cache on guest side and reduces the amount of
>    9p requests to hosts. As a consequence however guest might not see file
>    changes performed on host side *at* *all*

I think that makes it pretty useless, aren't most setups on the guest read-only?

It is not about "may not see", just won't. For example I modified the
Makefile and compiled a full kernel and even with those series of
changes, the guest *minutes later* never saw any updates.

> (as Linux kernel's 9p client 
>    currently does not revalidate for fs changes on host side at all, which is
>    planned to be changed on Linux kernel side soon though). So choose wisely
>    upon intended use case scenario. You can change between cache=mmap or e.g.
>    cache=loose at any time."
> 
> On the user page it was already clearly mentioned though:
> 
>   "Mount the shared folder on guest using
> 
>       mount -t 9p -o trans=virtio test_mount /tmp/shared/ -oversion=9p2000.L,posixacl,msize=104857600,cache=none
> 
>   In the above example the folder /home/guest/9p_setup/ shared of the host
>   is shared with the folder /tmp/shared on the guest. We use no cache because
>   current caching mechanisms need more work and the results are not what you
>   would expect."

I got a wiki account now and I was the one who had clarified this.

  Luis


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
