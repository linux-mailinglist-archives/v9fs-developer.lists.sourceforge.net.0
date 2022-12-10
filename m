Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C7F648F64
	for <lists+v9fs-developer@lfdr.de>; Sat, 10 Dec 2022 16:13:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p41Xt-00016a-6N;
	Sat, 10 Dec 2022 15:13:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1p41Xr-00016T-AR
 for v9fs-developer@lists.sourceforge.net;
 Sat, 10 Dec 2022 15:13:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ufoDZAA3PEM8xHbXjs2Gq1xDyCJPYYfPvifOPzCSH7o=; b=kmL09QDM4Q05hcFlKlrFUSoSeT
 fCBmfLm/EHSn87gWLaTat4ThKjKKUYIwu+nxCj/+4BBE2XhdQx1chjlKAU8RY1ieIYLBcbeNwZ+xG
 FRNxC7po9m73e+lrozaLFPbGBpzCmz6zvkSF6ykHICJlk+RoanP4SySj5+bJ28MO4a7s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ufoDZAA3PEM8xHbXjs2Gq1xDyCJPYYfPvifOPzCSH7o=; b=U1bzoTlA8d4UJsZFmspLuVN5gE
 pwtArNj3IjxlxpQuESLOLo2od3ToZr6f2bV0xH39vp6Ahz/pfuZ4IQX+gVuji3d4Ox7XJdS9MUuJ3
 Sh7Jfm5lBHkT+M6f5zIzl3SbOGF3zLVjNDlidBR4QSLvBXHoR43gSOSbR4Vzc/IcdL60=;
Received: from mail-wm1-f46.google.com ([209.85.128.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1p41Xq-00Cpu1-8S for v9fs-developer@lists.sourceforge.net;
 Sat, 10 Dec 2022 15:13:43 +0000
Received: by mail-wm1-f46.google.com with SMTP id bg10so1890199wmb.1
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 10 Dec 2022 07:13:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=ufoDZAA3PEM8xHbXjs2Gq1xDyCJPYYfPvifOPzCSH7o=;
 b=pWZj9TxTWFIjvv6g1xLAVeAoSqKvPP+/ZxkSiG095WgUjZFDbuavyFIeeVv6+ptLQP
 gX95HBRyiTfwSr/TpjpgwNZ4ZpTcmEHgVmwsNm2HYT4HVI2wJ7SV2ZWJAYW/nFle3s/K
 YsG/n3S4vWVW10G7q47KOEtBeYiDNQmYvvZVBd0Vokud8a7IS0Hs3gv4ayzZcfpcoNRV
 1OCJvUq/65beVhBfgHYOuqyg/TLbIdFwsO7pQZUYgLzCFtYkx7EOugyl5DTen0voQrOL
 Id4i8UU8G8WIic9wYIYO0EnYYBezv3NglSwZu4eighcGPDjUkBGGeXIaeN+UT/jVfZ+E
 6SEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ufoDZAA3PEM8xHbXjs2Gq1xDyCJPYYfPvifOPzCSH7o=;
 b=r6oe4m7NmKgyYJ4kIWJIKSHyEwbQWc1gN1ks4MDjKjpPBMW8qIOOn1/QatbH2+/sXq
 UDzvJL9nq/qn9SHd0l/AMhiasue+ZCXzbrNQp0dd38999BZLGEZ9hQ++hjuHvoQmeZrv
 xQbIvfE64v0yJH/izStpz1y+fTeLCgV4TclDbawDQsoshiaVwkiePT98Pizg6D0DG/SF
 fVf0E8d1XK/bff4WXvosf14TQPCS+hTAMl8BeLJWZrklJlTJCnWkvJaTArU3a2SBthmL
 +uaB6IMZ26doorjiXdWFJSdqkIAdWAKLwgzOQNz3r4XK7SjPw8pQZ5fAduTzQCBGNAkg
 +ebA==
X-Gm-Message-State: ANoB5pllOn68T4yJfvlyinyqyFcTbHKYgzcYXqmDevnG0zNN5v6EzrJZ
 152lvmqbRoBm0TTfboycf6L2Xy4X920M3On/elE=
X-Google-Smtp-Source: AA0mqf5I5rHp+q+bQiMWStOp79d6wYXyg+2a3yFgHp9nZGMP4+v/QG+laQXLCoStBo1uOPexRDnfLLgqsIIFU/P98O8=
X-Received: by 2002:a05:600c:654e:b0:3d0:8a5e:e8d1 with SMTP id
 dn14-20020a05600c654e00b003d08a5ee8d1mr18432627wmb.82.1670685215332; Sat, 10
 Dec 2022 07:13:35 -0800 (PST)
MIME-Version: 1.0
References: <CAFkjPTn+F0-PD76G4m2Lp1_MbS_WdvsCngzD7Aa1w7qQYdgqjg@mail.gmail.com>
 <5781766.0gPXg4q8St@silver>
 <CAFkjPTkNi6uPs-f9ccrg2JiYq5wmBPkA2PQi+B+jZn1Z0BzpRg@mail.gmail.com>
 <2364529.sG8EZHsgjA@silver>
In-Reply-To: <2364529.sG8EZHsgjA@silver>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Sat, 10 Dec 2022 09:13:24 -0600
Message-ID: <CAFkjPTnk0BxF7bxUtEdVMjAMT7BDXy8xXcj9L_PfPK7SJVZS3g@mail.gmail.com>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Dec 10,
 2022 at 7:07 AM Christian Schoenebeck < wrote:
 > > > I also have a sketch of how to do speculative async for other operations
 > to > > maybe > > trim down the latency for meta-data operations (whether
 caching or not). > > ... 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.46 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.46 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1p41Xq-00Cpu1-8S
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
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
Cc: Greg Kurz <groug@kaod.org>, David Howells <dhowells@redhat.com>,
 Ron Minnich <rminnich@gmail.com>,
 V9FS Developers <v9fs-developer@lists.sourceforge.net>,
 Jim Garlick <garlick.jim@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sat, Dec 10, 2022 at 7:07 AM Christian Schoenebeck <
linux_oss@crudebyte.com> wrote:

>
> > I also have a sketch of how to do speculative async for other operations
> to
> > maybe
> > trim down the latency for meta-data operations (whether caching or not).
>
> ...

> Most of the latency I observed was not the I/O itself, but other messages
> that
> were sent prior for permission assurance, like Treaddir, then it would stat
> every directory entry, retrieve attributes for each one, and so forth, and
> I
> had the impression that this happens serialized by Linux client (not truely
> async)? So these probably have a higher potential to be fixed regarding
> latency.
>

Indeed, serialized dirread/stat behavior is pretty much the highest nail
with user observable latency.  I was picking off readahead by default, etc.
because they were low hanging fruit and really maximize the use of your
msize changes regardless of read block size.

Fixing the dir cache code shouldn't be too hard and will provide a degree
of relief.  There are some interesting choices for fixing directory reading
--
original (nont .L) code reads all meta-data with the file listing.  Without
caching, this extra information gets discarded in the Linux client.  .L code
just reads the filenames with a bit of meta-data (qid & type) but doesn't
bulk read the stat.  qid could be used to validate the cache so we are only
re-stating things that have changed -- but in the case where we don't have
anything cached, we could revert to the pre-.L functionality and batch
populate the entire directory listing.  As you point out I could also
asynchronously fire off the getattrs for the various directory elements
while we are parsing the name listing when we find uncached or out
of date entries.  I'll have to do some perf studies to understand the
tradeoffs.

> > > >
> > > > > One question I had for the community is if anyone has been using
> the
> > > > > fscache code (code=fscache).  On inspection there are several
> things
> > >
> > > I use 9p-fscache a lot.
> > >
>
> Oh, I just noticed I was always using cache=loose, not cache=fscache. For
> testing purposes I also use cache=mmap, and only very seldomly cache=none
> for
> testing only (as it is IMO not useful in practice).
>
>
Okay - that makes more sense, I have mostly been testing with cache loose
as the regression case.  I didn't quite see how fscache could work in its
current
state.  I was thinking of stripping it out for the time being, but opted
instead for
just some more aggressive ifdefing (since the fscache ifdefs seem to be used
randomly in the code right now and we are calling into fscache routines
where
it doesn't make sense (like loose asking for cookies when the returned
cookie
is always 0 because no backing store is configured).  As I start to
populate the
regression test matrix I'll try and come up with a reasonable backing store
based
fscache configuration as well -- its just my current expectation is that
its not going
to pass many of the tests.  As it is xattr and loose seem to mess each
other up
on some of the fsx tests.

>
> > >
> > Yes, this is tightly coupled to the code I'm currently looking at related
> > to the
> > writeback_fid handling.
>
> Maybe it would help you to emit consecutive tag numbers for protocol
> debugging? I plan to send a patch for that soon:
> https://lore.kernel.org/all/4084178.bTz7GqEF8p@silver/
>
>
I think this is unrelated, that thread is interesting though with the race
conditions
around flushed operations.  I have to review some of the other servers to
look
at the concerns around tag lookup.  Right now anything that adds latency
might
be a concern - so would be good to do some perf testing on heavily
multithreaded
workloads with any such patches.


> > > Eric, for testing I recommend using latest QEMU (i.e. upcoming 7.2
> which is
> > > released in few days) or at least apply the following patch:
> > >
> > > https://wiki.qemu.org/ChangeLog/7.2#9pfs
> > >
> > > This patch brings a *massive* performance improvement by around x6 ..
> x12
> > > which especially did hurt before when there was a large amount of open
> > > FIDs.
> > >
> > >
> > I am using self-built qemu, current as of Nov 17
> > a082fab9d259473a9d5d53307cf83b1223301181
> > I did that specifically to pick up those performance changes, hopefully I
> > got
> > it right.
>
> LGTM. If you are using default networking, make sure slirp is installed on
> host side and that QEMU's configure script detected it, as slirp is no
> longer
> a git submodule in QEMU and it already made a bunch of people scratch their
> head why networking stopped working on guest.
>
> > like some help trying to get them into qemu as I can't directly
> contribute
> > to qemu because of some weirdness around my employer.
>
> So a license issue. No problem, if you need a change on QEMU side then just
> give me a hint and I will try to address it accordingly.
>

Perfect, the diod and npfs code are very similar to the qemu code (Anthony's
qemu code was originally based on npfs) so the examples I work out in diod
should be directly applicable to qemu.

               -eric

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
