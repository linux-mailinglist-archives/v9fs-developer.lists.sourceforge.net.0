Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C90EC68BE04
	for <lists+v9fs-developer@lfdr.de>; Mon,  6 Feb 2023 14:20:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pP1QY-0000Vk-W3;
	Mon, 06 Feb 2023 13:20:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1pP1QW-0000Vb-RC
 for v9fs-developer@lists.sourceforge.net;
 Mon, 06 Feb 2023 13:20:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PTKWEL8KfAMKMbeLLhW74FPh3ps+IFGA3tVormfA9wE=; b=b3dJh5yEeX0dLXw7VP/EBTN31P
 5B+pMpOqzd+jdqGmx9U04BN8iePZvM6NbV8b8OYfWmNyiguMgs82vYcuARFPUugKf3cD76tCEKFxD
 Xg8Ob55qpDWoIIB7jLmhURhqq5NOyXPC/qcKbo6yCg7dbPO7dR+A9I4tSi9YVa9X6mY8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PTKWEL8KfAMKMbeLLhW74FPh3ps+IFGA3tVormfA9wE=; b=K/sTmuwLANAEIiX4isACRmFbe4
 exoxZcJXkQNjdh3TP9LSoYc2INLkBb4GFOqO65WEkZcGLjdVACy5Mb4BoY0ZOt3v4f8lr3XsObKZb
 vTHpBRFGKd5NaLKOWiv3R+ns6nlm5NyMUaWz/ZYrZdwA9wEr+SFdUbvbqyRLjmdIaKBw=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pP1QV-00CZtU-HC for v9fs-developer@lists.sourceforge.net;
 Mon, 06 Feb 2023 13:20:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=PTKWEL8KfAMKMbeLLhW74FPh3ps+IFGA3tVormfA9wE=; b=Ng8xjZVqAhZc2EOOID2OTBI7lQ
 QxgGtIIGsN5f1s7eCMtLPl4NOqJoTurnpJdUdjvG9sjcp2ObG47rLYrp2kp5OAh5xQHw06IzVHKrc
 z3abvdHd+R+ZUD9hLt1HdVV8qSluoQM56tMXi46wzHYshSr0Fg40cdIWMHOJQB5JHuSzarvVoyEgj
 Mw75X4s2O69CDtyxVoJtXE743N9wDSgGTxCy2WulNmcfOXmv6I3yznOXDzKRosds9ChE1zmzzlfOP
 yOvJgavvzY7wLF58A94sP5hQuYW4e3db1Hf3lkG+nY9uZZgH8GUCAOYDJzQ8Jt4qclUuVXC9Xv+j1
 aU0+zqH3gTHwLOMdAkBLSWC2pJ/0xMaugCeBZ5qWiNwMOLXfVKUuKe2kxHeFJ/ziSHZw9ABxJgZog
 GC3QJcDIZzE3bDxv85TgG1U4dQjSePP5pvES+EGo3u8w9VLptFU1Ho4+IyRo+6lBBywAytfUOGBAN
 mPgSKRIK4jx/udAPteBZivI/yord4ccrcQur9lelwbN9X1XgtK14WPHE8+eQiVf0GsoIRQ7s3eK2R
 i4lMUVBX37hhw6snp772wgJbwFnjObDc53Hlet/AmMN1S6q5tUaptCOvt2ZV3g/LH8k28aXmHiMh5
 DbBiLoXwLNsOj7Dxl7kIHiLGWCF2OA+6+FFS9oF2I=;
To: Eric Van Hensbergen <ericvh@gmail.com>
Date: Mon, 06 Feb 2023 14:20:47 +0100
Message-ID: <1959073.LTPWMqHWT2@silver>
In-Reply-To: <CAFkjPT=nxuG5rSuJ1seFV9eWvWNkyzw2f45yWqyEQV3+M91MPg@mail.gmail.com>
References: <20221218232217.1713283-1-evanhensbergen@icloud.com>
 <2302787.WOG5zRkYfl@silver>
 <CAFkjPT=nxuG5rSuJ1seFV9eWvWNkyzw2f45yWqyEQV3+M91MPg@mail.gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sunday, February 5,
 2023 5:37:53 PM CET Eric Van Hensbergen
 wrote: > I was so focused on the bugs that I forgot to respond to the >
 performance
 concerns -- just to be clear, readahead and writeback [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pP1QV-00CZtU-HC
Subject: Re: [V9fs-developer] [PATCH v3 00/11] Performance fixes for 9p
 filesystem
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
Cc: lucho@ionkov.net, linux-kernel@vger.kernel.org, rminnich@gmail.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Eric Van Hensbergen <ericvh@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sunday, February 5, 2023 5:37:53 PM CET Eric Van Hensbergen wrote:
> I was so focused on the bugs that I forgot to respond to the
> performance concerns -- just to be clear, readahead and writeback
> aren't meant to be more performant than loose, they are meant to have
> stronger guarantees of consistency with the server file system.  Loose
> is inclusive of readahead and writeback, and it keeps the caches
> around for longer, and it does some dir caching as well -- so its
> always going to win, but it does so with risk of being more
> inconsistent with the server file system and should only be done when
> the guest/client has exclusive access or the filesystem itself is
> read-only.

Okay, that's surprising to me indeed. My expecation was that "loose" would 
still retain its previous behaviour, i.e. loose consistency cache but without 
any readahead or writeback. I already wondered about the transitivity you used 
in code for cache selection with direct `<=` comparison of user's cache 
option.

Having said that, I wonder whether it would make sense to handle these as 
options independent of each other (e.g. cache=loose,readahead), but not sure, 
maybe it would overcomplicate things unnecessarily.

> I've a design for a "tight" cache, which will also not be
> as performant as loose but will add consistent dir-caching on top of
> readahead and writeback -- once we've properly vetted that it should
> likely be the default cache option and any fscache should be built on
> top of it.  I was also thinking of augmenting "tight" and "loose" with
> a "temporal" cache that works more like NFS and bounds consistency to
> a particular time quanta.  Loose was always a bit of a "hack" for some
> particular use cases and has always been a bit problematic in my mind.

Or we could add notifications on file changes from server side, because that's 
what this is actually about, right?

> So, to make sure we are on the same page, was your performance
> uplifts/penalties versus cache=none or versus legacy cache=loose?

I have not tested cache=none at all, because in the scenario of 9p being a 
root fs, you need at least cache=mmap, otherwise you won't even be able to 
boot a minimum system.

I compared:

  * master(cache=loose) vs. this(cache=loose)

  * master(cache=loose) vs. this(cache=readahead)

  * master(cache=loose) vs. this(cache=writeback)

> The 10x perf improvement in the patch series was in streaming reads over
> cache=none.

OK, that's an important information to mention in the first place. Because 
when say you measured a performance plus of x times, I would assume you 
compared it to at least a somewhat similar setup. I mean cache=loose was 
always much faster than cache=none before.

> I'll add the cache=loose datapoints to my performance
> notebook (on github) for the future as points of reference, but I'd
> always expect cache=loose to be the upper bound (although I have seen
> some things in the code to do with directory reads/etc. that could be
> improved there and should benefit from some of the changes I have
> planned once I get to the dir caching).
> 
>           -eric




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
