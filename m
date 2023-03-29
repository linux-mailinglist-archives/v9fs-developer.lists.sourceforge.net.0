Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E416CD880
	for <lists+v9fs-developer@lfdr.de>; Wed, 29 Mar 2023 13:32:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1phU2e-0001k4-J8;
	Wed, 29 Mar 2023 11:32:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jlayton@kernel.org>) id 1phU2c-0001jc-Eq
 for v9fs-developer@lists.sourceforge.net;
 Wed, 29 Mar 2023 11:32:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gci78KxUv/HImRyIwqR341jYd+Bh1/nV19lBGqCUxak=; b=MpIX29gU6i83tvJZESeI6JNYQa
 /FLBQoqH2nofw6uZF1PzTgmlMEkpymOLLTA4dtpSD9xrkAaGZ09S0bxMgzRL21hS09kGykKzXhLX4
 ZJxgrSxHXgyPn/avm/5RqwGFd5gy8GxAsmLxbi30w83LVuRBKrOL1iM9i0uzUSBKVE6g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gci78KxUv/HImRyIwqR341jYd+Bh1/nV19lBGqCUxak=; b=IAp5nyP9tEQfzRILtsdqfHqzX1
 M3yM025rFDHWWqMOF1yxcPM52Da2wfWXr/+xeprn4/B+1NIFkEeiUvbayip6VbN5QIG0nHJcIlJop
 twXd1NISouVs+IrE2u2CZ1+yAtrV5GYtayATZs7NzYXXecwnv3AYqd1DkM4M2WugNVD4=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phU2a-0004FK-Du for v9fs-developer@lists.sourceforge.net;
 Wed, 29 Mar 2023 11:32:33 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id F3A8AB82211;
 Wed, 29 Mar 2023 11:32:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2502C433D2;
 Wed, 29 Mar 2023 11:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1680089544;
 bh=g+bWYP2kmf5ZYSDx4o/Kl40M5wU8ZiJuFCe2pEPBl7Q=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=lxCWixa7cyoadUchVEFh4bWRx33ZF/mDjPz03y8ssHd8QjNZwFWQOuUS44OeJrz0q
 YkHZXQ5xK7cw2bWffeI/PY1XrPPeQI2C8Nv8YbhhRCFW+7DD4dcQzhZCac1vYip4t2
 BgXq1BpLNvmt6pQtRddlJHswU105nExI8g5vxpNCRFxsDdSG/phn6V8oKcAO4Ei+ad
 71AzcO7y1x+t+fqXPXFATi2WkAV4+Cc/epSYi5GzzOWYh8+Up/2EBSqiMZzq9Tyry5
 OfOWFRK0CWOm5Jl60XZKDjIN01KeH9M6mH3p/oYWm8j+Pz2VLwek6FtpkwQmu/9Y0W
 n3E0O0zXnyYxQ==
Message-ID: <6f89f0ac34956e7f527c7efa3d162b4a1f5ea71a.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>, Luis Chamberlain
 <mcgrof@kernel.org>, Dominique Martinet <asmadeus@codewreck.org>
Date: Wed, 29 Mar 2023 07:32:22 -0400
In-Reply-To: <2322056.HEUtEhvpMu@silver>
References: <ZA0FEyOtRBvpIXbi@bombadil.infradead.org>
 <ZCMmrnmZFcH65Orp@bombadil.infradead.org> <ZCNlWnQTbWoBBPd2@codewreck.org>
 <2322056.HEUtEhvpMu@silver>
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37) 
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, 2023-03-29 at 13:19 +0200,
 Christian Schoenebeck wrote:
 > On Wednesday, March 29, 2023 12:08:26 AM CEST Dominique Martinet wrote:
 > > Luis Chamberlain wrote on Tue, Mar 28, 2023 at 10:41:02AM [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1phU2a-0004FK-Du
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
 Josef Bacik <josef@toxicpanda.com>, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, 2023-03-29 at 13:19 +0200, Christian Schoenebeck wrote:
> On Wednesday, March 29, 2023 12:08:26 AM CEST Dominique Martinet wrote:
> > Luis Chamberlain wrote on Tue, Mar 28, 2023 at 10:41:02AM -0700:
> > > >   "To speedup things you can also consider to use e.g. cache=loose instead.
> > > 
> > > My experience is that cache=loose is totally useless.
> > 
> > If the fs you mount isn't accessed by the host while the VM is up, and
> > isn't shared with another guest (e.g. "exclusive share"), you'll get
> > what you expect.
> > 
> > I have no idea what people use qemu's virtfs for but this is apparently
> > common enough that it was recommended before without anyone complaining
> > since that started being recommended in 2011[1] until now?
> > 
> > [1] https://wiki.qemu.org/index.php?title=Documentation/9psetup&diff=2178&oldid=2177
> > 
> > (now I'm not arguing it should be recommended, my stance as a 9p
> > maintainer is that the default should be used unless you know what
> > you're doing, so the new code should just remove the 'cache=none'
> > altogether as that's the default.
> > With the new cache models Eric is preparing comes, we'll get a new safe
> > default that will likely be better than cache=none, there is no reason
> > to explicitly recommend the historic safe model as the default has
> > always been on the safe side and we have no plan of changing that.)
> 
> It's not that I receive a lot of feedback for what people use 9p for, nor am I
> QEMU's 9p maintainer for a long time, but so far contributors cared more about
> performance and other issues than propagating changes host -> guest without
> reboot/remount/drop_caches. At least they did not care enough to work on
> patches.
> 
> Personally I also use cache=loose and only need to push changes host->guest
> once in a while.
> 
> > > >    That will deploy a filesystem cache on guest side and reduces the amount of
> > > >    9p requests to hosts. As a consequence however guest might not see file
> > > >    changes performed on host side *at* *all*
> > > 
> > > I think that makes it pretty useless, aren't most setups on the guest read-only?
> > > 
> > > It is not about "may not see", just won't. For example I modified the
> > > Makefile and compiled a full kernel and even with those series of
> > > changes, the guest *minutes later* never saw any updates.
> > 
> > read-only on the guest has nothing to do with it, nor has time.
> > 
> > If the directory is never accessed on the guest before the kernel has
> > been built, you'll be able to make install on the guest -- once, even if
> > the build was done after the VM booted and fs mounted.
> > 
> > After it's been read once, it'll stay in cache until memory pressure (or
> > an admin action like umount/mount or sysctl vm.drop_caches=3) clears it.
> > 
> > I believe that's why it appeared to work until you noticed the issue and
> > had to change the mount option -- I'd expect in most case you'll run
> > make install once and reboot/kexec into the new kernel.
> > 
> > It's not safe for your usecase and cache=none definitely sounds better
> > to me, but people should use defaults make their own informed decision.
> 
> It appears to me that read-only seems not to be the average use case for 9p,
> at least from the command lines I received. It is often used in combination
> with overlayfs though.
> 
> I (think) the reason why cache=loose was recommended as default option on the
> QEMU wiki page ages ago, was because of its really poor performance at that
> point. I would personally not go that far and discourage people from using
> cache=loose in general, as long as they get informed about the consequences.
> You still get a great deal of performance boost, the rest is for each
> individual to decide.
> 
> Considering that Eric already has patches for revalidating the cache in the
> works, I think the changes I made on the other QEMU wiki page are appropriate,
> including the word "might" as it's soon only a matter of kernel version.
> 
> > > >   In the above example the folder /home/guest/9p_setup/ shared of the
> > > >   host is shared with the folder /tmp/shared on the guest. We use no
> > > >   cache because current caching mechanisms need more work and the
> > > >   results are not what you would expect."
> > > 
> > > I got a wiki account now and I was the one who had clarified this.
> > 
> > Thanks for helping making this clearer.
> 
> Yep, and thanks for making a wiki account and improving the content there
> directly. Always appreciated!
> 

Catching up on this thread.

Getting cache coherency right on a network filesystem is quite
difficult. It's always a balance between correctness and performance.

Some protocols (e.g. CIFS and Ceph) take a very heavy-handed approach to
try ensure that the caches are always coherent. Basically, these clients
are only allowed to cache when the server grants permission for it. That
can have a negative effect on performance, of course.

NFS as a protocol is more "loose", but we've generally beat its cache
coherency mechanisms into shape over the years, so you don't see these
sorts of problems there as much. FWIW, NFS uses a sliding time window to
revalidate the cache, such that it'll revalidate frequently when an
inodes is changing frequently, but less so when it's more stable.

9P I haven't worked with as much, but it sounds like it doesn't try to
keep caches coherent (at least not with cache=loose).

Probably the simplest solution here is to simply unmount/mount before
you have the clients call "make modules_install && make install". That
should ensure that the client doesn't have any stale data in the cache 
when the time comes to do the reads. A full reboot shouldn't be
required.

-- 
Jeff Layton <jlayton@kernel.org>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
