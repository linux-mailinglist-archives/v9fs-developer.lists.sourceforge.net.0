Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 51EE16CCCCF
	for <lists+v9fs-developer@lfdr.de>; Wed, 29 Mar 2023 00:08:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1phHUv-0004st-0U;
	Tue, 28 Mar 2023 22:08:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1phHUu-0004sk-3j
 for v9fs-developer@lists.sourceforge.net;
 Tue, 28 Mar 2023 22:08:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lIAxBZX8Ok9MLTzD8LQPfEMHK5pZ4ioFrz+9hrOO4h4=; b=UA6u3/iXrSawTBWqPErjjYtrRU
 CfLaufIh27px/+g5fd44OGUvQk5N0MCFRnCCXqXBy1uHDZSI+pxSpHE1gUQoXEnqE3s/+kRsK8IP+
 +/fDSLeVywxJjGvJhLcsfMNOPdk8gS1Hirb899kLaUlApPxEeFbx/8ZLWMpCRqDYHRkE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lIAxBZX8Ok9MLTzD8LQPfEMHK5pZ4ioFrz+9hrOO4h4=; b=Y8iqj9l1iiXQsYhhDII16eDGGZ
 T9rA/AisK+u9F1oqOpswwY1y4Ge9UY0LBu8M6rHdQ8mrgiZOD+AuqxONHDSsMEOeOifuT0wM9A72n
 RIYc7j3e0TpEKkjgegkAXTLx7y3E63/N5Aymxa0kBW81GnDawxRd5RGCSSM5d+3dwz34=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phHUt-007Z8o-Bt for v9fs-developer@lists.sourceforge.net;
 Tue, 28 Mar 2023 22:08:56 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 7073EC009; Wed, 29 Mar 2023 00:08:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1680041328; bh=lIAxBZX8Ok9MLTzD8LQPfEMHK5pZ4ioFrz+9hrOO4h4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=K21RGKXCuiDcpFs4KNSlwq2+RDm091FpHB7hmVjdY67N4tan3/AqTwuO8eqv881+m
 SX9NSFIaYEbRHrv6wwVxwHKgcJR3HbPiNF4Abgz6sytjK0vYPjt/kVN9DWDv2ujF30
 2jmXwRrGuP+td8/Jpela255I5utBcqy6h1EN/yj+B1G2euC03aowW1ezfEEaOiqkVw
 jv78c5uOUKWyUbmqFwW/5VUgpkHGIvePa6GJCHchOoJCGkr49th5Wqs5QgtN96qWUW
 DvMKlhYjruSU69Sac8jHCkeJHN1bPsVP5Fnfx+NxV5VLTfW02tyGUoUuYhThwzIMBj
 yNiN7CIx02fug==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 70BD5C009;
 Wed, 29 Mar 2023 00:08:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1680041327; bh=lIAxBZX8Ok9MLTzD8LQPfEMHK5pZ4ioFrz+9hrOO4h4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=20HcFiyuj80bZO9Ai5zvaFWJDqwmczJDYJUdYJw7bay1mp7M902oPe3QbdjAy3ELL
 T6HAGE5O92Ep70tctj4M6R82CrRofD7VLqVW1uGJUA1EUCFioNTMuZu1ftPS9YPg1i
 Eh6xzCfz7BNuE14GLpJ3X4WHZxS3Oq+npszRnLVLEHY7Jt6TciupADjmnh92UgM/gY
 9Gyq8quPvzpHPBc03VXn0IXszRBOsa1xJg0rXir3aQshTW4EwBUi/+j+j/IB/A5F9P
 uuZjhi+uplqfGFOuD1kytrK8qzGrtYaEVcAAssVaJGSN4UL72VO8Jt11qS0Mfome63
 MdoOkY07B6EjA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 5723ce5b;
 Tue, 28 Mar 2023 22:08:41 +0000 (UTC)
Date: Wed, 29 Mar 2023 07:08:26 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Luis Chamberlain <mcgrof@kernel.org>
Message-ID: <ZCNlWnQTbWoBBPd2@codewreck.org>
References: <ZA0FEyOtRBvpIXbi@bombadil.infradead.org>
 <ZCHU6k56nF5849xj@bombadil.infradead.org>
 <ZCJRlqc/epbRhm93@codewreck.org> <2391219.DQnbcWml7j@silver>
 <ZCMmrnmZFcH65Orp@bombadil.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZCMmrnmZFcH65Orp@bombadil.infradead.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Luis Chamberlain wrote on Tue, Mar 28, 2023 at 10:41:02AM
 -0700: > > "To speedup things you can also consider to use e.g. cache=loose
 instead. > > My experience is that cache=loose is totally useless. 
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
X-Headers-End: 1phHUt-007Z8o-Bt
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

Luis Chamberlain wrote on Tue, Mar 28, 2023 at 10:41:02AM -0700:
> >   "To speedup things you can also consider to use e.g. cache=loose instead.
> 
> My experience is that cache=loose is totally useless.

If the fs you mount isn't accessed by the host while the VM is up, and
isn't shared with another guest (e.g. "exclusive share"), you'll get
what you expect.

I have no idea what people use qemu's virtfs for but this is apparently
common enough that it was recommended before without anyone complaining
since that started being recommended in 2011[1] until now?

[1] https://wiki.qemu.org/index.php?title=Documentation/9psetup&diff=2178&oldid=2177

(now I'm not arguing it should be recommended, my stance as a 9p
maintainer is that the default should be used unless you know what
you're doing, so the new code should just remove the 'cache=none'
altogether as that's the default.
With the new cache models Eric is preparing comes, we'll get a new safe
default that will likely be better than cache=none, there is no reason
to explicitly recommend the historic safe model as the default has
always been on the safe side and we have no plan of changing that.)

> >    That will deploy a filesystem cache on guest side and reduces the amount of
> >    9p requests to hosts. As a consequence however guest might not see file
> >    changes performed on host side *at* *all*
> 
> I think that makes it pretty useless, aren't most setups on the guest read-only?
> 
> It is not about "may not see", just won't. For example I modified the
> Makefile and compiled a full kernel and even with those series of
> changes, the guest *minutes later* never saw any updates.

read-only on the guest has nothing to do with it, nor has time.

If the directory is never accessed on the guest before the kernel has
been built, you'll be able to make install on the guest -- once, even if
the build was done after the VM booted and fs mounted.

After it's been read once, it'll stay in cache until memory pressure (or
an admin action like umount/mount or sysctl vm.drop_caches=3) clears it.


I believe that's why it appeared to work until you noticed the issue and
had to change the mount option -- I'd expect in most case you'll run
make install once and reboot/kexec into the new kernel.

It's not safe for your usecase and cache=none definitely sounds better
to me, but people should use defaults make their own informed decision.


>>   In the above example the folder /home/guest/9p_setup/ shared of the
>>   host is shared with the folder /tmp/shared on the guest. We use no
>>   cache because current caching mechanisms need more work and the
>>   results are not what you would expect."
>
> I got a wiki account now and I was the one who had clarified this.

Thanks for helping making this clearer.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
