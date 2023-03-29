Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 667E46CD854
	for <lists+v9fs-developer@lfdr.de>; Wed, 29 Mar 2023 13:19:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1phTq6-0007Xy-UP;
	Wed, 29 Mar 2023 11:19:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1phTq3-0007Wa-Sn
 for v9fs-developer@lists.sourceforge.net;
 Wed, 29 Mar 2023 11:19:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ileIkfmdnMy/56ic43iEWAbjiYmiGoaU3VQE/Y3cqAg=; b=IGGlDQh8rTmLW3UM7X1OlCc1ku
 tRVDmNweYZx1l5wqPRDqrnQEC+KzWS2O2ILRDLfa8POv8tDxmW/b5/hZ7kaNhwrydffxFzkKWj90y
 +jWdjlakFmi0bP2MDMmqt3C21Psxe2/y1XUAje6/gkpsUhtyEIdyS84OrjpxGZOvudT4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ileIkfmdnMy/56ic43iEWAbjiYmiGoaU3VQE/Y3cqAg=; b=EnxZVl3VJdIYgC6+Xh1L9EFowW
 BlVZks5yLR8z4kKziX4HKAC8p9BUDjdEsOwB+3OuPS28YIIFebMOCUx+c8jjQ+Etb6c/STdKQMExO
 kujlI0W02FYURiKwC0J5vF1tfoSwVOlFEOCcGIyJ4sIpTdZjtOikG/q/Irfl+GF5BXZU=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phTq0-008IVt-Ik for v9fs-developer@lists.sourceforge.net;
 Wed, 29 Mar 2023 11:19:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=ileIkfmdnMy/56ic43iEWAbjiYmiGoaU3VQE/Y3cqAg=; b=gr9/E8pZqbhqiYDFGxPWEfMFpX
 Jnq15hdxqRt+/AVKdTaX0L/C2YNzfxaYQZjaGd9OZrIFvir20ydz3/kVcUtFXE/CGFArtBvD/VA/r
 V8V/2MWFgAEC3dJrxUddNXBoSKxGRXBv8uIk8YWdsNAF/z4EEcI9tfbtxbnGcm4FD8IKrEAzrMBnf
 4TBsJbhAERlu2yw0tYI9koz/bZ9HAWSZVqy12DfIvcUN9Sqq3lh8A1Lv/qU94wOgmL0P9oeqMad49
 706a+dbkxfDuSnzUosevxH8twwrwXTh0W22Wn4mmPfysXa075e+dCyS9JF7/wYh/zK8MxkEDnSlup
 xsLqmM+s4+1dAQ23PcCZwMrx+TkhTvKEERu6au2PMRgpTHNhVJOAYiLFsx8QIHi+Djp4u0pG6jbjU
 uH+E4jTU9dSlfSS++Gep+1pjNwkCVJlL46Gx/T1J0nAOok9GF5bPWoW6LQh0Qn21UQHYFy6X+1JZ3
 aRcCmxjtJ88ApqewZeex1MWe8Ebd3qVtwE9YDMASV/0lmTZ6yZ55ByVTzSR2p7TRmHFMetm9RWDb7
 PAV3TohNZrGSmIa0vSy96qss3ENioYATrpMRTUv4SvmRQQDQvTPyrsr1Jfm8RvqhbyyY90Bf478b6
 8FOkbqikwL49KjWu6RCjiH8dByNLlJAcGuKmctKyQ=;
To: Luis Chamberlain <mcgrof@kernel.org>,
 Dominique Martinet <asmadeus@codewreck.org>
Date: Wed, 29 Mar 2023 13:19:08 +0200
Message-ID: <2322056.HEUtEhvpMu@silver>
In-Reply-To: <ZCNlWnQTbWoBBPd2@codewreck.org>
References: <ZA0FEyOtRBvpIXbi@bombadil.infradead.org>
 <ZCMmrnmZFcH65Orp@bombadil.infradead.org> <ZCNlWnQTbWoBBPd2@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wednesday, March 29,
 2023 12:08:26 AM CEST Dominique Martinet
 wrote: > Luis Chamberlain wrote on Tue, Mar 28, 2023 at 10:41:02AM -0700:
 > > > "To speedup things you can also consider to use e.g. ca [...] 
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
X-Headers-End: 1phTq0-008IVt-Ik
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: lucho@ionkov.net, Pankaj Raghav <p.raghav@samsung.com>,
 Eric Van Hensbergen <ericvh@gmail.com>, Amir Goldstein <amir73il@gmail.com>,
 Jeff Layton <jlayton@kernel.org>, Josef Bacik <josef@toxicpanda.com>,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wednesday, March 29, 2023 12:08:26 AM CEST Dominique Martinet wrote:
> Luis Chamberlain wrote on Tue, Mar 28, 2023 at 10:41:02AM -0700:
> > >   "To speedup things you can also consider to use e.g. cache=loose instead.
> > 
> > My experience is that cache=loose is totally useless.
> 
> If the fs you mount isn't accessed by the host while the VM is up, and
> isn't shared with another guest (e.g. "exclusive share"), you'll get
> what you expect.
> 
> I have no idea what people use qemu's virtfs for but this is apparently
> common enough that it was recommended before without anyone complaining
> since that started being recommended in 2011[1] until now?
> 
> [1] https://wiki.qemu.org/index.php?title=Documentation/9psetup&diff=2178&oldid=2177
> 
> (now I'm not arguing it should be recommended, my stance as a 9p
> maintainer is that the default should be used unless you know what
> you're doing, so the new code should just remove the 'cache=none'
> altogether as that's the default.
> With the new cache models Eric is preparing comes, we'll get a new safe
> default that will likely be better than cache=none, there is no reason
> to explicitly recommend the historic safe model as the default has
> always been on the safe side and we have no plan of changing that.)

It's not that I receive a lot of feedback for what people use 9p for, nor am I
QEMU's 9p maintainer for a long time, but so far contributors cared more about
performance and other issues than propagating changes host -> guest without
reboot/remount/drop_caches. At least they did not care enough to work on
patches.

Personally I also use cache=loose and only need to push changes host->guest
once in a while.

> > >    That will deploy a filesystem cache on guest side and reduces the amount of
> > >    9p requests to hosts. As a consequence however guest might not see file
> > >    changes performed on host side *at* *all*
> > 
> > I think that makes it pretty useless, aren't most setups on the guest read-only?
> > 
> > It is not about "may not see", just won't. For example I modified the
> > Makefile and compiled a full kernel and even with those series of
> > changes, the guest *minutes later* never saw any updates.
> 
> read-only on the guest has nothing to do with it, nor has time.
> 
> If the directory is never accessed on the guest before the kernel has
> been built, you'll be able to make install on the guest -- once, even if
> the build was done after the VM booted and fs mounted.
> 
> After it's been read once, it'll stay in cache until memory pressure (or
> an admin action like umount/mount or sysctl vm.drop_caches=3) clears it.
> 
> I believe that's why it appeared to work until you noticed the issue and
> had to change the mount option -- I'd expect in most case you'll run
> make install once and reboot/kexec into the new kernel.
> 
> It's not safe for your usecase and cache=none definitely sounds better
> to me, but people should use defaults make their own informed decision.

It appears to me that read-only seems not to be the average use case for 9p,
at least from the command lines I received. It is often used in combination
with overlayfs though.

I (think) the reason why cache=loose was recommended as default option on the
QEMU wiki page ages ago, was because of its really poor performance at that
point. I would personally not go that far and discourage people from using
cache=loose in general, as long as they get informed about the consequences.
You still get a great deal of performance boost, the rest is for each
individual to decide.

Considering that Eric already has patches for revalidating the cache in the
works, I think the changes I made on the other QEMU wiki page are appropriate,
including the word "might" as it's soon only a matter of kernel version.

> >>   In the above example the folder /home/guest/9p_setup/ shared of the
> >>   host is shared with the folder /tmp/shared on the guest. We use no
> >>   cache because current caching mechanisms need more work and the
> >>   results are not what you would expect."
> >
> > I got a wiki account now and I was the one who had clarified this.
> 
> Thanks for helping making this clearer.

Yep, and thanks for making a wiki account and improving the content there
directly. Always appreciated!





_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
