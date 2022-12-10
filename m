Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 083D6648EC3
	for <lists+v9fs-developer@lfdr.de>; Sat, 10 Dec 2022 14:08:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p3zaJ-00047L-32;
	Sat, 10 Dec 2022 13:08:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1p3zaF-00047D-Jj
 for v9fs-developer@lists.sourceforge.net;
 Sat, 10 Dec 2022 13:08:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TOZCPNrSNYuJesiYVELvuS6e2181UujypguTBBVNcWM=; b=LvlkNaMQ/i7VmQkISpy7OmCFwm
 sDjZY4AasdKpMnKKXuUsELOli3RzCrBMf90iPWfCHqUmjw+41w5q61RALBkwndtsVQ4hrPWSk4/HQ
 RBXitVnerpqftMQy4XcxdaBR3ZZjKqiYTDz5Jhu3BOzAaGoIBl3thUwyvlFlbObx1c6k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TOZCPNrSNYuJesiYVELvuS6e2181UujypguTBBVNcWM=; b=VDo9edXhWsB3u3eAFcwQnqbLEQ
 vTkryNh8XXyFdB6jjgckwROcW3oH6LexTDQePyl8mIUepsFp8XuV7xI+1OVVkQJbWF7JCjkEsDpiq
 F/PQjp8ByhJNGk+f3FidenI1igJH5h8UkqdunqWoLWpdgWK8Sm4NREQRBz8ft2cqOKn8=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p3zaD-00ClLA-9Q for v9fs-developer@lists.sourceforge.net;
 Sat, 10 Dec 2022 13:08:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=TOZCPNrSNYuJesiYVELvuS6e2181UujypguTBBVNcWM=; b=vuGL2uLGjQNu4nOTxUd8RjkoN8
 LGFTyKnEBXjzjglZ89r9o12h99yM+oX+6t8PXmkjJhcLM14JOyNxHiOlKr28vzWkk38loQkJOomlY
 QJ/9pqRSkbDzi6fn2WbeIxJsnqp/S7taSVe38QeBdT1UGCz+tcWwcbmvgYmd7xWjQ3fBW4iVzKMqR
 F8+8V3OJYVy14UZVBR8G0ybkc/4WhU8F9v6/Y7nHRjjOBwQR2EQy5F3kvC7vylIO0Xjw3d8OAyX9v
 lD9yvyYXzkqjycMf7YiAXa5cUIlhblFpQX+gf4MG3CDFPitZE7Wg3SRRa3WTbE3mrEfE/gMp+aBZT
 hanAj25LMKKgn/9bFGvb9gAxCN2ZOnNeep1dcJa4FVWcUF6xVRY5q1SnDfufmdihT2kwSTxGVz+JP
 IBYM6S34KglRwHyg9xPUE6NQvdR5xTtdaC3fGTV0TTQ77ibo5SnOXU0OP6/EvHHpgHSnaa2chk4Pt
 3KWIdxo5vnrarRoKTW2BeZhidH+op+h8VoZx9Ef9pBd2lK8M+NzrJ1UD6q21Ro+kCOI42bBBaWQlq
 PoadP2VoQbW2stbM9SJVbQRVwv3DdX6uKnxFThuE3t+XkIqQn0IwvFcBMJEpOMBnfgvm0ll6E0kP1
 KYN4pf+RpPvPidy7WxBMm5hFkS8TrYiQ+Gr1Ewqfw=;
To: Ron Minnich <rminnich@gmail.com>, Eric Van Hensbergen <ericvh@gmail.com>
Date: Sat, 10 Dec 2022 14:07:49 +0100
Message-ID: <2364529.sG8EZHsgjA@silver>
In-Reply-To: <CAFkjPTkNi6uPs-f9ccrg2JiYq5wmBPkA2PQi+B+jZn1Z0BzpRg@mail.gmail.com>
References: <CAFkjPTn+F0-PD76G4m2Lp1_MbS_WdvsCngzD7Aa1w7qQYdgqjg@mail.gmail.com>
 <5781766.0gPXg4q8St@silver>
 <CAFkjPTkNi6uPs-f9ccrg2JiYq5wmBPkA2PQi+B+jZn1Z0BzpRg@mail.gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Added Greg on CC, just in case, as this topic is also QEMU
 related. @Greg:
 https://sourceforge.net/p/v9fs/mailman/v9fs-developer/thread/CAFkjPTkNi6uPs-f9ccrg2JiYq5wmBPkA2PQi%2BB%2BjZn1Z0BzpRg%40mail.g
 [...] Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1p3zaD-00ClLA-9Q
Subject: Re: [V9fs-developer] 9p cache code
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
Cc: David Howells <dhowells@redhat.com>,
 V9FS Developers <v9fs-developer@lists.sourceforge.net>,
 Greg Kurz <groug@kaod.org>, Jim Garlick <garlick.jim@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Added Greg on CC, just in case, as this topic is also QEMU related.
@Greg: https://sourceforge.net/p/v9fs/mailman/v9fs-developer/thread/CAFkjPTkNi6uPs-f9ccrg2JiYq5wmBPkA2PQi%2BB%2BjZn1Z0BzpRg%40mail.gmail.com/

On Thursday, December 8, 2022 4:27:54 PM CET Eric Van Hensbergen wrote:
> On Thu, Dec 8, 2022 at 6:57 AM Christian Schoenebeck <
> linux_oss@crudebyte.com> wrote:
> 
> > On Thursday, December 8, 2022 1:28:16 AM CET Dominique Martinet wrote:
> > >
> > > I don't think anyone is actively working on it, added Christian in Cc
> > > who's been helping a lot lately (he's also on the developers list at
> > > least, but mail filters...)
> >
> > I'm actually not subscribed to any LKML, nor on v9fs*@sf.net. So unless
> > somebody CCs me, I won't receive it.
> >
> 
> Yeah, I'm subscribed, but it ends up going to folder so I often miss things.
> In any case, I'll be sure to cc: you on the relevant patches and discussion
> and if its too much just tell me to knock it off ;). I also setup a
> discussion
> board on the Github I setup to track this new work:
>    https://github.com/v9fs/linux/discussions
> If folks think that is a better way to handle the S/N ratio.

Okay, I subscribed to your announcement (discussion 1). I don't see a way to
automatically follow all (i.e. new) discussions there though.

> > > > As some of you know I'm mucking about in the 9p caching code - wil try
> > and
> > > > upstream some RFC patches shortly.  Overall goal is to make simple
> > forms of
> > > > caching (readahead/writeback(maybe)) default on 9p2000.L while leavine
> > > > cache=none default for 9p2000 and earlier.  My intent is to do some
> > work on
> >
> > Awesome! And that would make my 'remove msize limit' patches much more
> > useful:
> >
> 
> Indeed and @Ron Minnich <rminnich@gmail.com> complaining about latency were
> two of the reasons
> I decided to take some time and pick this stuff back up.  The patches I
> already
> have in my next repo should provide the readahead version of things -- they
> seem
> to pass basic tests (at least as well as cache=loose or cache=fscache) but
> I have
> some ideas to help with coherence and consistency that I'll get to after I
> sort out
> writeback.
> 
> 
> >
> > https://lore.kernel.org/all/cover.1657636554.git.linux_oss@crudebyte.com
> >
> > Patches 7..11 were merged already, but the actual virtio patches 1..6 that
> > remove the msize limit are not yet. I lost a bit of interest on that, as
> > with
> > current direct-only read/write behaviour the chunk sizes are constrained by
> > kernel's IOV_MAX. With readahead etc. that would allow to unleash the full
> > potential, as it would not be constrained by IOV_MAX at all.
> >
> >
> Is that strictly true or do we need async operations (at least for read)?
> We tilted
> at that windmill a decade ago, but I don't think any of the code made it
> upstream.
> It is a pretty heavy lift through some of the net code so I was going to
> see just how
> far I could get before I had to go after async read/write (which is likely
> worth doing,
> its just gonna take a while to get it right).
> 
> I also have a sketch of how to do speculative async for other operations to
> maybe
> trim down the latency for meta-data operations (whether caching or not).
> That's
> currently prioritized for after async read/write as its even more
> fidelity and prone to
> corner cases.  My need to refresh my promela skills and do some spin
> protocol
> proofs to make sure there aren't dragons.

Keep in mind I don't have a full picture of the code base on kernel side yet.
Most of what I observed was by debugging from QEMU side, looking at messages
sent, and glimpse on kernel code. E.g. I don't know what tasks exactly are
already async on kernel side. From my tests with the 'remove msize limit'
patches I already came close to the maximum theoretical speed limit on guest
when linear reading/writing large files (xx GB) with large I/O chunks (i.e.
'msize' chosen large enough and number passed to read()/write() on guest large
enough).

Most of the latency I observed was not the I/O itself, but other messages that
were sent prior for permission assurance, like Treaddir, then it would stat
every directory entry, retrieve attributes for each one, and so forth, and I
had the impression that this happens serialized by Linux client (not truely
async)? So these probably have a higher potential to be fixed regarding
latency.

> > > >
> > > > One question I had for the community is if anyone has been using the
> > > > fscache code (code=fscache).  On inspection there are several things
> > that
> > > > are clearly (to my eye) wrong -- several of them let in on my watch 10
> > > > years ago when we were doing the 9p work at IBM.  So, before I do any
> > heavy
> >
> > I use 9p-fscache a lot.
> >
> 
> It would be useful to understand exactly what configuration you are using
> so I
> can add it to my regressions so I don't break you.  I've been testing with
> cache=loose as a comparison point at the moment, but not with a backing
> store.
> There's some bits of the code that definitely have me concerned about it
> actually
> working, so its good to hear that its working for some folks.

Oh, I just noticed I was always using cache=loose, not cache=fscache. For
testing purposes I also use cache=mmap, and only very seldomly cache=none for
testing only (as it is IMO not useful in practice).

Commonly I use this setup:
https://wiki.qemu.org/Documentation/9p

I probably got confused, because I often got warnings like "FS-Cache:
Duplicate cookie detected" in the past.

> > My biggest issue with current 9p fscache implementation is that it seems to
> > gather fids indefinitely. So apparently ATM there is no limit at where
> > fscache
> > would free cached files after not being used for a long time. So memory
> > usage
> > on Linux client side and fid count on 9p server side grow and grow. That
> > should definitely be fixed in some way.
> >
> >
> Yes, this is tightly coupled to the code I'm currently looking at related
> to the
> writeback_fid handling.  I should be able to provide some relief here, but
> will
> need to test pretty extensively to make sure there aren't any corner cases
> that mess me up.  (my experimental branch breaks writes after unlinks for
> instance, which I think I know how to fix, but completely missed on my first
> pass on this).

Maybe it would help you to emit consecutive tag numbers for protocol
debugging? I plan to send a patch for that soon:
https://lore.kernel.org/all/4084178.bTz7GqEF8p@silver/

> > Eric, for testing I recommend using latest QEMU (i.e. upcoming 7.2 which is
> > released in few days) or at least apply the following patch:
> >
> > https://wiki.qemu.org/ChangeLog/7.2#9pfs
> >
> > This patch brings a *massive* performance improvement by around x6 .. x12
> > which especially did hurt before when there was a large amount of open
> > FIDs.
> >
> >
> I am using self-built qemu, current as of Nov 17
> a082fab9d259473a9d5d53307cf83b1223301181
> I did that specifically to pick up those performance changes, hopefully I
> got
> it right.

LGTM. If you are using default networking, make sure slirp is installed on
host side and that QEMU's configure script detected it, as slirp is no longer
a git submodule in QEMU and it already made a bunch of people scratch their
head why networking stopped working on guest.

> qemu does set qid->version (on walk, but not on dirread, not sure if that
> will
> cause issues, but that will be more dependent on how I implement the
> consistency within the dir caching).  One thing I wanted to look at in the
> servers is using i_version for qid.version versus st_mtime, but that is
> dependent on the underlying file system providing i_version.  I'm happy
> to do these experiments in diod, but if I find something sensible I might
> like some help trying to get them into qemu as I can't directly contribute
> to qemu because of some weirdness around my employer.

So a license issue. No problem, if you need a change on QEMU side then just
give me a hint and I will try to address it accordingly.

ATM QEMU uses [hw/9pfs/9p.c]:

static int stat_to_qid(V9fsPDU *pdu, const struct stat *stbuf, V9fsQID *qidp)
{
   ...
   qidp->version = stbuf->st_mtime ^ (stbuf->st_size << 8);
   ...
}

I actually assumed QEMU would fill that for every 9p protocol dialect and
every message (having QIDs), but looking at the code, it looks like it only
does when you use multidevs=remap as option (which I usually do, as it's the
only sane way to export multiple filesystems to guest):
https://wiki.qemu.org/Documentation/9psetup#Starting_the_Guest_directly





_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
