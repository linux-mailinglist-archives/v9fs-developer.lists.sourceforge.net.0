Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B19D6CB42A
	for <lists+v9fs-developer@lfdr.de>; Tue, 28 Mar 2023 04:32:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pgz8O-00054D-Ml;
	Tue, 28 Mar 2023 02:32:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pgz8K-000547-HR
 for v9fs-developer@lists.sourceforge.net;
 Tue, 28 Mar 2023 02:32:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=81JrcBOQ6HGB6EQY6ONrHs1iEnNy5OL0G/POddTYXyU=; b=XJfjh/0aEHj8ddQPN/MKWolRvv
 OyqTWFbOtWC6jAGd16uZSAT5kzx7U9j8kKWpdMravwgau6ybA3hr4kmMPKzYnt7AHG76Xp+kaWK02
 u7CTu8ZVd1xfy7Y9M7X3LY6lX58KP3zlaiU1A8w120QKNj89ner5tO1e5Cx59fccFbfk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=81JrcBOQ6HGB6EQY6ONrHs1iEnNy5OL0G/POddTYXyU=; b=heVUTGuuu3l4s/KvgkP7Oy2pgd
 WaQQDEAqiTSGsLZEb1t5VdPUG7y4rfX7YRgKje/iArHijmxM1crRC5frmaCFcd7gtIiAVrja6sM+5
 Op3+viKRragmSxhdJWYLFvJQS/cll/suwumQ4Uk6hwWOJp11vXNJbmXguvXMUcR017jI=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pgz8G-006QSv-Bo for v9fs-developer@lists.sourceforge.net;
 Tue, 28 Mar 2023 02:32:23 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id AFB38C020; Tue, 28 Mar 2023 04:32:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1679970731; bh=81JrcBOQ6HGB6EQY6ONrHs1iEnNy5OL0G/POddTYXyU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=itRRNX2eB0DQ1gxwFaq2n5GXVmDLpjFHrgcqsjGJ+dOHE7zfcLBcnQYR0yUnIJ3Su
 OdG9BUu+up2wcGMEPp6BQW7uTQKXb68HOtRlDAgzno1FE5gNHt5zBj8tdvSZsoGaUM
 pjM7cIcv26x9FTIeMNggTP+l/g8m/fNsk15CJUPyXjFbeqnBcvMkb3eNvZiStqNb0J
 uiX1Zdl6sK/r37jlFdQFhfbROo9R9GTNRJ8jBLB90B1nLTH7lE0X2sWNshDFwoLpco
 9KoNYifWhvKvQWXuidpVQtQ+zlXypwY6QTIC56L1Jq1wEwO6xVNaQP2s/KT+7FiGH6
 NsjryNW1cZv4g==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id C7076C009;
 Tue, 28 Mar 2023 04:32:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1679970730; bh=81JrcBOQ6HGB6EQY6ONrHs1iEnNy5OL0G/POddTYXyU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MM+pUzpA2WJXaL+n7pKT9cu9WJq2oGsHnA4aIxto+gfAe4pQCj8DClbYFGstZK/tS
 5K+HgHPTKM5ydeKNVYtR3eQA9Vw+bs3fmna7oNRgX683+0i7e5x/6osVDJVbEMeG4R
 X4xX9S7K7DQAwG3HSEVbWzXmwPHjnKHxv+wA4H0rL2+CSInT8NV4jrXS5YYmzg0mZF
 VDoiePvb4CdCJMrNIT/nv5iFbWrU8aRXMvsD571g8hz5MZ5X3QjcCcvdDlR4BMXeeK
 0ADH0U6zYvX97P+EVs257svnbcsN6Q7WTrkHRBczve0eFvsAwqH0mTU5G914g1Tnmj
 5vNSOoQaza7zA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 4a1f5aef;
 Tue, 28 Mar 2023 02:32:05 +0000 (UTC)
Date: Tue, 28 Mar 2023 11:31:50 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Luis Chamberlain <mcgrof@kernel.org>
Message-ID: <ZCJRlqc/epbRhm93@codewreck.org>
References: <ZA0FEyOtRBvpIXbi@bombadil.infradead.org>
 <CAFkjPTmVbyuA0jEAjYhsOsg-SE99yXgehmjqUZb4_uWS_L-ZTQ@mail.gmail.com>
 <ZBSc1jjYJn6noeMl@bombadil.infradead.org>
 <CAFkjPTmc-OgMEj9kF3y04sRGeOVO_ogEv1fGG=-CfKP-0ZKC_g@mail.gmail.com>
 <ZCHU6k56nF5849xj@bombadil.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZCHU6k56nF5849xj@bombadil.infradead.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Luis Chamberlain wrote on Mon, Mar 27, 2023 at 10:39:54AM
 -0700: > > I have fixed what > > I hope to be my last bug with the new patch
 series so it should be > > going into linux-next today. > > Nice, [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1pgz8G-006QSv-Bo
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
 Amir Goldstein <amir73il@gmail.com>, Eric Van Hensbergen <ericvh@gmail.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Jeff Layton <jlayton@kernel.org>, Josef Bacik <josef@toxicpanda.com>,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Luis Chamberlain wrote on Mon, Mar 27, 2023 at 10:39:54AM -0700:
> > I have fixed what
> > I hope to be my last bug with the new patch series so it should be
> > going into linux-next today.
> 
> Nice, thanks, since kdevops relies on a host kernel though and we strive
> to have stability for that, I personally like to recommend distro
> kernels and so they're a few kernel releases out of date. So debian-testing
> is on 6.1 as of today for example.
> [...]
> -    opts: "ro,trans=virtio,version=9p2000.L,posixacl,cache=loose"
> +    opts: "ro,trans=virtio,version=9p2000.L,posixacl,cache=none"

Yes, if you want something mostly coherent with the host, cache=none (or
cache=mmap if you need mmap, iirc linux build does for linking? if you
want to do that on guest...) is what you'll want to use on current
kernels.


> BTW the qemu wiki seems to suggest cache=loose and its why I used it on
> kdevops as a default. What about the following so to avoid folks running
> into similar issues? I can go and update the wiki too.

I've added Christian in Cc for this point, he's more active on the qemu
side
(thread started here:
https://lkml.kernel.org/r/ZA0FEyOtRBvpIXbi@bombadil.infradead.org
)

I have no opinion on the current wording, the default is there for a
reason and it's a safe default (none), and cache=loose is clearly
described with "no attempts are made at consistency, intended for
exclusive, read-only mounts" which I think ought to be clear enough
(exclusive means not shared with the host), but if you think it's not
clear enough it probably isn't.

A word on the qemu wiki "if you want to share with host..." would
probably be good though.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
