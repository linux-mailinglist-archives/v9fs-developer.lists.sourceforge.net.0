Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5CC5525D6
	for <lists+v9fs-developer@lfdr.de>; Mon, 20 Jun 2022 22:35:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o3O78-0000ab-Qh; Mon, 20 Jun 2022 20:35:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1o3O77-0000aU-QP
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Jun 2022 20:35:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tYtUszc9zzrvsFDcvZRSmgfIOw95+uFnGbWke6FtW8g=; b=e4+n6rewTs8Z2snjqrifo9359c
 UFosZVvGuFcWpoyN9qXRnyWKTcLiwJI9zD/FPgKXohGWTk2fWtm8UgwMl8FXoEmcDRBISY4pPEOnR
 bfS/kA7ikV0hFp9cgSSvmN7IHgXp+JY6GeV21D6s7K2MVaTSOfcn+9NHdXRCzm1zcfc8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tYtUszc9zzrvsFDcvZRSmgfIOw95+uFnGbWke6FtW8g=; b=ZWVfY6kttAYE1hXlchAfAKI/QS
 ktxNlW35lnGMRROOdRnJYcbMUvI8GtdXthinyZciPvkwZwHa+CIJ6f6Fq3l3H2Y3fEtnDaNtO2akN
 GlWbX/hEugoVcEPVGAlX45rOZPW3koTkNaRy9Y+IT8ZgLB85suPWTWjmOPDke7kUNMaY=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o3O72-00036c-PA
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Jun 2022 20:35:13 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 85FE7C01C; Mon, 20 Jun 2022 22:35:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655757300; bh=tYtUszc9zzrvsFDcvZRSmgfIOw95+uFnGbWke6FtW8g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zIlm2Ws4qdLF/t897tnGdNcbyPmW1Kw92abguwEr4tvT4x+j1WVjkiGAN/Qo7f3jH
 ahqXcNGQ/p5vpwmJLF/ivjcoD9rgr46aEbbyBgr/J+n5NS0XHyhHchqFi5caeYGfuX
 Nta4tlldtMBrySG5e59UNkGuZvh0NuX0z+eBfqtaDNe241vYNHbA+RoFSwczGbrgIk
 GFtegkhsm7j6uVUKwoUpVeEIvLraTZxYu6hIZMvLo3QtaZnosSXk4qtBLCZcHXZCBG
 f+4jBNFTXbzMRUErL+4oN9fRhGDUVUi5UKekrKNL9Q+geT4LPoseEiz7xEzwe44S3m
 EDvkCARr3II1Q==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 08EA1C009;
 Mon, 20 Jun 2022 22:34:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655757300; bh=tYtUszc9zzrvsFDcvZRSmgfIOw95+uFnGbWke6FtW8g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zIlm2Ws4qdLF/t897tnGdNcbyPmW1Kw92abguwEr4tvT4x+j1WVjkiGAN/Qo7f3jH
 ahqXcNGQ/p5vpwmJLF/ivjcoD9rgr46aEbbyBgr/J+n5NS0XHyhHchqFi5caeYGfuX
 Nta4tlldtMBrySG5e59UNkGuZvh0NuX0z+eBfqtaDNe241vYNHbA+RoFSwczGbrgIk
 GFtegkhsm7j6uVUKwoUpVeEIvLraTZxYu6hIZMvLo3QtaZnosSXk4qtBLCZcHXZCBG
 f+4jBNFTXbzMRUErL+4oN9fRhGDUVUi5UKekrKNL9Q+geT4LPoseEiz7xEzwe44S3m
 EDvkCARr3II1Q==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id ab3519d4;
 Mon, 20 Jun 2022 20:34:53 +0000 (UTC)
Date: Tue, 21 Jun 2022 05:34:38 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <YrDZ3nlTFwJ4ytl8@codewreck.org>
References: <15767273.MGizftpLG7@silver>
 <20220616211025.1790171-1-asmadeus@codewreck.org>
 <1902408.H94Nh90b8Q@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1902408.H94Nh90b8Q@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Mon, Jun 20,
 2022 at 02:47:24PM
 +0200: > Some more tests this weekend; all looks fine. It appears that this
 also fixed > the performance degradation that I reported earl [...] 
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
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1o3O72-00036c-PA
Subject: Re: [V9fs-developer] [PATCH v3] 9p: fix EBADF errors in cached mode
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 David Howells <dhowells@redhat.com>, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Mon, Jun 20, 2022 at 02:47:24PM +0200:
> Some more tests this weekend; all looks fine. It appears that this also fixed
> the performance degradation that I reported early in this thread.

wow, I wouldn't have expected the EBADF fix patch to have any impact on
performance. Maybe the build just behaved differently enough to take
more time with the errors?

> Again, benchmarks compiling a bunch of sources:
> 
> Case  Linux kernel version         msize   cache  duration (average)
> 
> A)    EBADF fix only [1]           512000  loose  31m 14s
> B)    EBADF fix only [1]           512000  mmap   44m 1s
> C)    EBADF fix + clunk fixes [2]  512000  loose  29m 32s
> D)    EBADF fix + clunk fixes [2]  512000  mmap   44m 0s
> E)    5.10.84                      512000  loose  35m 5s
> F)    5.10.84                      512000  mmap   65m 5s
> 
> [1] 5.19.0-rc2 + EBADF fix v3 patch (alone):
> https://lore.kernel.org/lkml/20220616211025.1790171-1-asmadeus@codewreck.org/
> 
> [2] 5.19.0-rc2 + EBADF fix v3 patch + clunk fix patches, a.k.a. 9p-next:
> https://github.com/martinetd/linux/commit/b0017602fdf6bd3f344dd49eaee8b6ffeed6dbac
> 
> Conclusion: all thumbs in my possession pointing upwards. :)
> 
> Thanks Dominique!

Great news, thanks for the tests! :)

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
