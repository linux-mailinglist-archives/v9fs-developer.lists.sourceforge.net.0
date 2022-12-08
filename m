Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 43EA36472E0
	for <lists+v9fs-developer@lfdr.de>; Thu,  8 Dec 2022 16:28:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p3Ioq-0004lI-5g;
	Thu, 08 Dec 2022 15:28:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1p3Ion-0004l8-Kc
 for v9fs-developer@lists.sourceforge.net;
 Thu, 08 Dec 2022 15:28:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zGnraTKYOMIys7KFsgfQzyxhAPXBK2enEYjd2zpcJ3o=; b=Rdv/pz5rbDj2l0cR9XphyBlG7A
 BFq6SqK7h/6nMqWgmpBfNWKbirdpI8MiX7Tqh2kGjQgQ5iveNytsRseUtDCV4XuxQwsj5TAMl2AFY
 7mEmwX0MsWNdLQ7moullcqKwC+wYQsI2pCLBbvRRsQqneMnZQ3WGck4RE2h7MwWcKiro=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zGnraTKYOMIys7KFsgfQzyxhAPXBK2enEYjd2zpcJ3o=; b=Gr1yvCEUL5RJSn330XTwXYa+0O
 hH1T69Hrbb9IApK7IW27djdlrSPEWKhRBLGpgVn9EnbJ7RmaDAg7BoqFgmetWyFHP/Jypq5HyY7f1
 oQOCGhpJ0lpZtnPBaswRfzwjTx5L2+kPS+B02qrBXwB6LPNr7j0QQmJQgP1CF4QsZO9Y=;
Received: from mail-wm1-f54.google.com ([209.85.128.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1p3Iom-00AMZ2-8x for v9fs-developer@lists.sourceforge.net;
 Thu, 08 Dec 2022 15:28:13 +0000
Received: by mail-wm1-f54.google.com with SMTP id
 ay8-20020a05600c1e0800b003d0808d2826so4290287wmb.1
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 08 Dec 2022 07:28:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=zGnraTKYOMIys7KFsgfQzyxhAPXBK2enEYjd2zpcJ3o=;
 b=W5soC53NRf0P/8qr2XgIEWtEPzMVK7TNhIiHjsY6PyKBXNDHDE1k0cZZtNjHEWNKlH
 TKnn6Q1u4dQj/xMuc4bxZplXJBDR2NDV6zbJQA4ZqCgCRrCKkCWGruK1b8JErUkpemdV
 CAdNNB9eaR7n0zlFGy8MS9P0TfPzwE8tcf6gIcVJ1jmz4rcDOEsdMydF961RSWfGoQTl
 +Ubw91ig2OgMXD19MljD3DvpKCnXovRLdemq8loz7w27LAD0mQpugJnGjTWk5HQmDkZS
 ZCA6Tq3KVGN9FKvld9BpgRMIf1JTAxyAxG0MIFQVE12Pc2EE98JUBUJjro16ug4s4BH5
 Fj4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=zGnraTKYOMIys7KFsgfQzyxhAPXBK2enEYjd2zpcJ3o=;
 b=UDm3Bt57kofktjv3o75UYpEt1T+vYTxPWvF+zX1ZO4lgyMcamhFmp+A9qFuFDtc2bq
 MNbOjdAH6VGhBqK1IlkLNny96TbQfoGRYWweAoZx0tZZgtbzcuXA55eCF6ya6Z0ZJLDm
 YX0Yr1mjPZVxbi0mPwgdYNNWGUxiWufAy9rPsPH2w15Nztb3lrw6WoJsZ7ArYyIZ76Fl
 qlwg9qbBb7OYvgpv14EjXN4HTIDXf7ee66mfIMMfhHFV7dMrushrSewU2SToasNX79Cq
 Rs/HBJ5LPBpWh4595v4pmiFJIDmlch6qJUjH4FqunoiBW3I3HhRVmyTfLpe31ngrAYMp
 t26A==
X-Gm-Message-State: ANoB5pkdUqiUkBebpmP/sdjFAvO3XC5dT1to1/V7h3K375/GlJYsH8O4
 LM/C9jtplcUAn0e6y5SSDHDGCXnTS5WoFxZlvfyCUkEtURY=
X-Google-Smtp-Source: AA0mqf6ydWSBAnntqkSC6/PgJwvFBl/pwzon6DH/lQIJcLRzY5jodv/ybmX7K1YpkKeAIK5HUYppM9+IBnrnY54kKZk=
X-Received: by 2002:a05:600c:a4d:b0:3d1:bd81:b1bf with SMTP id
 c13-20020a05600c0a4d00b003d1bd81b1bfmr13298780wmq.90.1670513285347; Thu, 08
 Dec 2022 07:28:05 -0800 (PST)
MIME-Version: 1.0
References: <CAFkjPTn+F0-PD76G4m2Lp1_MbS_WdvsCngzD7Aa1w7qQYdgqjg@mail.gmail.com>
 <Y5EvoGhao+z5nH84@codewreck.org> <5781766.0gPXg4q8St@silver>
In-Reply-To: <5781766.0gPXg4q8St@silver>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Thu, 8 Dec 2022 09:27:54 -0600
Message-ID: <CAFkjPTkNi6uPs-f9ccrg2JiYq5wmBPkA2PQi+B+jZn1Z0BzpRg@mail.gmail.com>
To: Christian Schoenebeck <linux_oss@crudebyte.com>,
 Ron Minnich <rminnich@gmail.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Dec 8, 2022 at 6:57 AM Christian Schoenebeck < wrote:
 > On Thursday, December 8, 2022 1:28:16 AM CET Dominique Martinet wrote:
 > > > > I don't think anyone is actively working on it, added Christian in
 Cc > > who's been helping a lot lately (he's also on [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.54 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: qemu.org]
 0.1 TRACKER_ID             BODY: Incorporates a tracking ID number
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.54 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1p3Iom-00AMZ2-8x
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
Cc: David Howells <dhowells@redhat.com>,
 V9FS Developers <v9fs-developer@lists.sourceforge.net>,
 Jim Garlick <garlick.jim@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Dec 8, 2022 at 6:57 AM Christian Schoenebeck <
linux_oss@crudebyte.com> wrote:

> On Thursday, December 8, 2022 1:28:16 AM CET Dominique Martinet wrote:
> >
> > I don't think anyone is actively working on it, added Christian in Cc
> > who's been helping a lot lately (he's also on the developers list at
> > least, but mail filters...)
>
> I'm actually not subscribed to any LKML, nor on v9fs*@sf.net. So unless
> somebody CCs me, I won't receive it.
>

Yeah, I'm subscribed, but it ends up going to folder so I often miss things.
In any case, I'll be sure to cc: you on the relevant patches and discussion
and if its too much just tell me to knock it off ;). I also setup a
discussion
board on the Github I setup to track this new work:
   https://github.com/v9fs/linux/discussions
If folks think that is a better way to handle the S/N ratio.


> > > As some of you know I'm mucking about in the 9p caching code - wil try
> and
> > > upstream some RFC patches shortly.  Overall goal is to make simple
> forms of
> > > caching (readahead/writeback(maybe)) default on 9p2000.L while leavine
> > > cache=none default for 9p2000 and earlier.  My intent is to do some
> work on
>
> Awesome! And that would make my 'remove msize limit' patches much more
> useful:
>

Indeed and @Ron Minnich <rminnich@gmail.com> complaining about latency were
two of the reasons
I decided to take some time and pick this stuff back up.  The patches I
already
have in my next repo should provide the readahead version of things -- they
seem
to pass basic tests (at least as well as cache=loose or cache=fscache) but
I have
some ideas to help with coherence and consistency that I'll get to after I
sort out
writeback.


>
> https://lore.kernel.org/all/cover.1657636554.git.linux_oss@crudebyte.com
>
> Patches 7..11 were merged already, but the actual virtio patches 1..6 that
> remove the msize limit are not yet. I lost a bit of interest on that, as
> with
> current direct-only read/write behaviour the chunk sizes are constrained by
> kernel's IOV_MAX. With readahead etc. that would allow to unleash the full
> potential, as it would not be constrained by IOV_MAX at all.
>
>
Is that strictly true or do we need async operations (at least for read)?
We tilted
at that windmill a decade ago, but I don't think any of the code made it
upstream.
It is a pretty heavy lift through some of the net code so I was going to
see just how
far I could get before I had to go after async read/write (which is likely
worth doing,
its just gonna take a while to get it right).

I also have a sketch of how to do speculative async for other operations to
maybe
trim down the latency for meta-data operations (whether caching or not).
That's
currently prioritized for after async read/write as its even more
fidelity and prone to
corner cases.  My need to refresh my promela skills and do some spin
protocol
proofs to make sure there aren't dragons.


> > >
> > > One question I had for the community is if anyone has been using the
> > > fscache code (code=fscache).  On inspection there are several things
> that
> > > are clearly (to my eye) wrong -- several of them let in on my watch 10
> > > years ago when we were doing the 9p work at IBM.  So, before I do any
> heavy
>
> I use 9p-fscache a lot.
>

It would be useful to understand exactly what configuration you are using
so I
can add it to my regressions so I don't break you.  I've been testing with
cache=loose as a comparison point at the moment, but not with a backing
store.
There's some bits of the code that definitely have me concerned about it
actually
working, so its good to hear that its working for some folks.


>
> My biggest issue with current 9p fscache implementation is that it seems to
> gather fids indefinitely. So apparently ATM there is no limit at where
> fscache
> would free cached files after not being used for a long time. So memory
> usage
> on Linux client side and fid count on 9p server side grow and grow. That
> should definitely be fixed in some way.
>
>
Yes, this is tightly coupled to the code I'm currently looking at related
to the
writeback_fid handling.  I should be able to provide some relief here, but
will
need to test pretty extensively to make sure there aren't any corner cases
that mess me up.  (my experimental branch breaks writes after unlinks for
instance, which I think I know how to fix, but completely missed on my first
pass on this).


>
> Eric, for testing I recommend using latest QEMU (i.e. upcoming 7.2 which is
> released in few days) or at least apply the following patch:
>
> https://wiki.qemu.org/ChangeLog/7.2#9pfs
>
> This patch brings a *massive* performance improvement by around x6 .. x12
> which especially did hurt before when there was a large amount of open
> FIDs.
>
>
I am using self-built qemu, current as of Nov 17
a082fab9d259473a9d5d53307cf83b1223301181

I did that specifically to pick up those performance changes, hopefully I
got
it right.

qemu does set qid->version (on walk, but not on dirread, not sure if that
will
cause issues, but that will be more dependent on how I implement the
consistency within the dir caching).  One thing I wanted to look at in the
servers is using i_version for qid.version versus st_mtime, but that is
dependent on the underlying file system providing i_version.  I'm happy
to do these experiments in diod, but if I find something sensible I might
like some help trying to get them into qemu as I can't directly contribute
to qemu because of some weirdness around my employer.

     -eric

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
