Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B2F44B97C
	for <lists+v9fs-developer@lfdr.de>; Wed, 10 Nov 2021 00:51:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mkatW-0004s8-Dt; Tue, 09 Nov 2021 23:51:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1mkatV-0004ry-5n
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Nov 2021 23:51:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vmSFDaCPi8DnwE17dsxm2GHByi1ky6lumSc6dbJflws=; b=YS32xeaDXfIADqCRrh2DTGx4s3
 JZO3QIn3+YE2I/60UcoMU4CxkUfrvc0+m2AcHL5Q16OwxQkuEyRHg1gCqrBd7AfW4QkM3Nu8jmNt2
 Qvz4nSVH7D8+Qrf1/7L0l3RpVBWlp5w/CETwK61wqgBpAo4Peiv5HwoQuK8PB3Ffng9o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vmSFDaCPi8DnwE17dsxm2GHByi1ky6lumSc6dbJflws=; b=eQK8WdSuLthill794qmeW8GaJO
 XeyDn79Zx3mQVMJxUJ+Ul9btLxyoUeD5yg4TzNbWNGOMMzfoZvvgqkuJ5JW/BebuyW7770qXBc2fE
 7ULZjBFxDrPKrHbYZ/z0snAKFA8eUIOUUjg+Ex7Imyv66agl2MS1dkFxiivVRtZpKdq4=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mkatR-0000Nt-BD
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Nov 2021 23:51:13 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 2D75CC01B; Wed, 10 Nov 2021 00:50:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1636501856; bh=vmSFDaCPi8DnwE17dsxm2GHByi1ky6lumSc6dbJflws=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TagJwnaomPmVJ6p9xRhYeOdCoU7GCaGz2bcDmptBBau7VcopO8QJ5PD/24QW9I2mt
 MSS+tuiu3fBVOQBrPWh4l7mD46Zx3p2sJxDAU9TuzQ9mPjxd0t2WHY2h7/ZDrqnzrD
 FcbpwhTDFR9MYFx8ijK2yJcjtA5Uc9GNLVXr8pK9sFMB7sfwdTrzLrK2q40LovlaEj
 neuUOoy5lP8rhamV48PqG+ZCkUoSWijvkGwmkp4x1aI0f7tJWp4G3NZfq8hFn+blA4
 2XNqdLcnlCzhTH0FRCm7MjnnNHonDn3ju0wlj5DpckWnHk9kpjt/sKHnoBCMM4/Tch
 OXXpvyP2rRnPA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 3F3D7C009;
 Wed, 10 Nov 2021 00:50:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1636501855; bh=vmSFDaCPi8DnwE17dsxm2GHByi1ky6lumSc6dbJflws=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rP43Jc72HIxeVOrsytav2Cyo04kI0YwXvqTcaxfUsekRISzuC5q1zTQNp9xMrcMoh
 xbhJQjbEg1b/Dyg8OxjkBrjsUyPC3bOcTsdopSklmvYcbEzC9jWrDGuQEhmEpigZ8w
 hi9Ee1MlaKRZFQQTX/6jyG99FdCbGIRCI3YqAZqYcWiLrPvCpzGyJrfH3PVuUBKCbF
 CNGEroGhwrvK+HPZmtT+dA8vz/o8dldS1fPz/nQGHZ3OdN1JhQznC+i9PQpVD2KzPt
 +9ittHCJY5xSgC0uWPfqhPf5n2lxTZsl9odepejIyzsvB7jC4SxBD5v3gUQZYx1Rv8
 AejT/hnqS+vmg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 5f0b9f15;
 Tue, 9 Nov 2021 23:50:49 +0000 (UTC)
Date: Wed, 10 Nov 2021 08:50:34 +0900
From: asmadeus@codewreck.org
To: cgel.zte@gmail.com
Message-ID: <YYsJSsihm05kKFgh@codewreck.org>
References: <20211109114343.132844-1-deng.changcheng@zte.com.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211109114343.132844-1-deng.changcheng@zte.com.cn>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  cgel.zte@gmail.com wrote on Tue, Nov 09, 2021 at 11:43:43AM
 +0000: > From: Changcheng Deng <deng.changcheng@zte.com.cn> > > Fix the
 following
 coccicheck review: > ./fs/9p/vfs_file.c: 117: 5-8: Unneede [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1mkatR-0000Nt-BD
Subject: Re: [V9fs-developer] [PATCH] fs: 9p: remove unneeded variable
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
Cc: lucho@ionkov.net, ericvh@gmail.com, Zeal Robot <zealci@zte.com.cn>,
 Changcheng Deng <deng.changcheng@zte.com.cn>, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

cgel.zte@gmail.com wrote on Tue, Nov 09, 2021 at 11:43:43AM +0000:
> From: Changcheng Deng <deng.changcheng@zte.com.cn>
> 
> Fix the following coccicheck review:
> ./fs/9p/vfs_file.c: 117: 5-8: Unneeded variable
> 
> Remove unneeded variable used to store return value.
> 
> Reported-by: Zeal Robot <zealci@zte.com.cn>
> Signed-off-by: Changcheng Deng <deng.changcheng@zte.com.cn>

Sure, why not.
Queueing this patch.

-- 
Dominique Martinet


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
