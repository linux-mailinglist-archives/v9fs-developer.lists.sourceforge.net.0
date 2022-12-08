Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D20646613
	for <lists+v9fs-developer@lfdr.de>; Thu,  8 Dec 2022 01:46:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p353c-0004Sz-4B;
	Thu, 08 Dec 2022 00:46:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1p353a-0004Sq-Vn;
 Thu, 08 Dec 2022 00:46:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Wih5ZqTy/HQ6w8Oyn66KWN6cYixJxWQVoJoIPOPUfUo=; b=dyLpZ/KTMg28BpA3MOCUU7CAlU
 NkR42jcOzDE95hCeXiqIJbBo6rFDA6pLWsw7ZMyTbTufNVi+rO8IQfCSWKXhqpT5LJe9O0BuRRI+q
 +sFbemja7KTQej6VvH/oZi2Q7IROAOhYhy9IbpqeZCqhXojAcKdvjQd+D1FmnyoKzJ2g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Wih5ZqTy/HQ6w8Oyn66KWN6cYixJxWQVoJoIPOPUfUo=; b=iNqyHxh4jZOHTwedmaj+0OpgMW
 9CeuCbxrF46v+J4CHcqhFSVSulTF9jzpJrWgg9U9r8b8r3JPi43bdkXn8LH6B1Qj1UeY5jeyxvleT
 4SOFCwkroVqf/pYtK8em88rbYhJuHrNzo/5eOgbAA88aEuodR/283EtYx1vVxXYOw/eI=;
Received: from mail-wm1-f54.google.com ([209.85.128.54])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1p353X-0001f8-5u; Thu, 08 Dec 2022 00:46:34 +0000
Received: by mail-wm1-f54.google.com with SMTP id
 n9-20020a05600c3b8900b003d0944dba41so2345441wms.4; 
 Wed, 07 Dec 2022 16:46:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=Wih5ZqTy/HQ6w8Oyn66KWN6cYixJxWQVoJoIPOPUfUo=;
 b=RwkHf2lvP+UGV9Dwh23gSePh8ONHqbttt+zDrcwfHNU/g/GBB/ZAcKO3PI5+AfbyEB
 cA7t6e1tY9yoh2GFW17jkGD+IMeEi1aJ2TZLUlkebJIKeQYcQhCqytr6V4qaMhZJ6x+b
 qskvTYNI5zi1QmAmPHTFjCgzD98XN1MjPWbAOuNWcyE141ox6FVQoJ2HEzY5+QtnfLhI
 zFZ5c1DqAB8UlALU6q+XSoZ8vnc+lETuqzsr3HZbYLROOc/8AWtUZM5/eZCpTOFygSe6
 F5QgHpALrCOHuijU6d9hhBxF/Pro/i0evwzrjlozBp/jhzSg3nAQuGlON15Y6m5s+FY5
 +2eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Wih5ZqTy/HQ6w8Oyn66KWN6cYixJxWQVoJoIPOPUfUo=;
 b=f24WRucjs0+uA9CTtl1sppA0CCubL3ZEbGT1J+Om9LY0i95uDKeiY0enMKpfspXpJM
 jUpigZ94kbn4Jh/e4ntlWPgs3SgEbU0QAILqTHt44UgdgVNytW6PGXcKOqJ3UF+TTBSC
 QEPqIsF6XHinjXzKuecMlt5+D+5AxOD6xuyZIaX6HVqk0W2dijlMUfZtTRBmG8cbKs0T
 ObpH9TbxNc15qATO2OxreDBuFmQ90c6AaOBlM3UN3T6NE1P1KIlwOM5/edu56veaN6G8
 0LKNDdKwS2aydzY7LWpf9zkzCk9p7yXGQKbSQmsrjHOcaJM4WwGKn3lGtIh0w19xoFkt
 83tQ==
X-Gm-Message-State: ANoB5pnj0k/6gcgpWoKIEjYdyJe3K1bsUlbewxN93OaJZQHUNGtv0Iw6
 U1qSkWbNr+ckyw/lhaIrKCWLPAUjeDMKaT4Wgi8=
X-Google-Smtp-Source: AA0mqf4y9gSC/RFVjFY2KuDobNBjlqJ4bEhKmVuo+vCN6P1KY3PA+xogaDaT7m06BIrHUXdPyjAOyP1yQvYLfiuf6GA=
X-Received: by 2002:a05:600c:1907:b0:3cf:7981:9a7 with SMTP id
 j7-20020a05600c190700b003cf798109a7mr67295983wmq.87.1670460384348; Wed, 07
 Dec 2022 16:46:24 -0800 (PST)
MIME-Version: 1.0
References: <CAFkjPTn+F0-PD76G4m2Lp1_MbS_WdvsCngzD7Aa1w7qQYdgqjg@mail.gmail.com>
 <Y5EvoGhao+z5nH84@codewreck.org>
In-Reply-To: <Y5EvoGhao+z5nH84@codewreck.org>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Wed, 7 Dec 2022 18:46:13 -0600
Message-ID: <CAFkjPTnwUZ96+4DUp3zNWfxTQqcz=a_ZgAFktt2wkqFS8a5iOA@mail.gmail.com>
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Cool - good to hear. I've backed out of my experimental
 branch and have started incrementally fixing things up in a next
 (https://github.com/v9fs/linux/tree/ericvh/next)
 branch, I may start to float some of those for RFCs [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.54 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.54 listed in list.dnswl.org]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1p353X-0001f8-5u
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
 "v9fs-users@lists.sourceforge.net" <v9fs-users@lists.sourceforge.net>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Jim Garlick <garlick.jim@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Cool - good to hear.

I've backed out of my experimental branch and have started incrementally
fixing things up in a next (https://github.com/v9fs/linux/tree/ericvh/next)
branch, I may start to float some of those for RFCs shortly.

One of the points of pain is the writeback_fid, which gets set on open
regardless of whether we are gonna write or not and then hangs out
(forever? well probably at least until there is pressure on the inode
cache) -- that no doubt is making things much worse for anything with fid
pressure.  In my experimental tree I completely reworked this, but I
appreciate there are some corner cases that it didn't work for so I'm still
pondering it.

In the meantime, I did play around with having some additional cache levels
(including one which just did readahead) -- that worked pretty well and is
fairly straightforward, so I may punt on the writeback fixes (currently
working in https://github.com/v9fs/linux/tree/cache/fix-writeback) and get
that working and tested so I can upstream first.

The other bit of restructuring is that it looks like it would be much
easier to consolidate the file_ops back to just 9p and 9p.L and making
cache decisions at the appropriate points (write_iter/read_iter/mmap) --
this lets us conditionalize on mount flags and file modes like O_SYNC and
O_DIRECT that I don't think are currently being respected on the client
side (although perhaps they are properly flowing through to the server).

The other thing this would let us do is not do any cache access when
qid.version == 0 -- which potentially brings up the other contentious point
that the only thing setting qid.version right now is npfs.  My immediate
plan was to patch it in diod and qemu and try and upstream where
qid.version either gets set to i_version (if available) or to m_time --
both of those are 64-bit (even if you don't consider ns), so will have to
downgrade to 32-bit -- but there should be sufficient randomness to give us
consistency within a second.  The other possibility is doing a new protocol
rev which uses 64-bit (or wider qid.version...which we may be overdue, but
at the end of the day just having qid.version be not 0 would be a good
starter to hint that you can cache and that way we don't break synthetics
with caching.

      -eric

On Wed, Dec 7, 2022 at 6:28 PM Dominique Martinet <asmadeus@codewreck.org>
wrote:

> Hi Eric!
>
> Eric Van Hensbergen wrote on Wed, Dec 07, 2022 at 08:15:40AM -0600:
> > TLDR; I'm mucking about in the caching code, if someone else is doing
> > something there please let me know so we aren't working at odds or
> > duplicating effort.
>
> I don't think anyone is actively working on it, added Christian in Cc
> who's been helping a lot lately (he's also on the developers list at
> least, but mail filters...)
>
> afaik David Howells haven't really finished his netfs conversion, iirc
> the write helpers aren't completely finished? But that was last year so
> things might have improved under the rug without any change at 9p level...
> But either way I don't think David is working on 9p at all right now
> either, also added him in Ccs.
> (I think the problem at the time was the writes were done a folio at a
> time and there wasn't any mechanism to batch them unlike reads; but I
> never really looked further)
>
> > As some of you know I'm mucking about in the 9p caching code - wil try
> and
> > upstream some RFC patches shortly.  Overall goal is to make simple forms
> of
> > caching (readahead/writeback(maybe)) default on 9p2000.L while leavine
> > cache=none default for 9p2000 and earlier.  My intent is to do some work
> on
> > directory level caching next.  For the moment, I'm primarily concerned
> with
> > in-memory caching (not fscache per se).  My draft experiments are here
> (but
> > this is not what I will try and upstream as its a mess):
> > https://github.com/v9fs/linux/tree/ericvh/v9fsperf
> >
> > I've been crawling through the code including the new folio changes and
> > have done some experiments on what needs to be done to get file-level
> > caching working and be somewhat consistent.  I also think I know what I
> > need to do to get directory caching coherent (as opposed to loose) but
> have
> > not prototyped it yet.
> >
> > One question I had for the community is if anyone has been using the
> > fscache code (code=fscache).  On inspection there are several things that
> > are clearly (to my eye) wrong -- several of them let in on my watch 10
> > years ago when we were doing the 9p work at IBM.  So, before I do any
> heavy
> > surgery here I wanted to make sure I wasn't going to be upsetting
> anyones'
> > applecart and make sure i have regression tests for desired
> functionality.
> > I was going to eventually get around to trying to fix fscache for 9p (if
> it
> > is indeed broken), but it is at the bottom of my priority list at the
> > moment so we'll see how much of this I get through over December (which
> is
> > roughly the time I have allocated to work on this -- a 9p vacation if you
> > will).
> >
> > I'm going through a process of function checking the different cache
> levels
> > using various test suites and also doing performance studies (some of the
> > baseline of the latter can be seen in:
> > https://github.com/v9fs/notebook/blob/main/perf.ipynb).
>
> On that end I think having cache by default for virtio/qemu would be
> appreciated as it's working "well enough" from my impressions.
>
> Ganesha has a limit to the number of fids open and quickly explodes, but
> I'm not aware of any nfs-ganesha 9p user right now, if there are any
> they can restore cache=none... The problem with ganesha seems to be that
> we lack any reclaim mechanism; files or directories seen will stay
> partly open forever, and ganesha runs out of fids.
> qemu closes unused fids after a while so doesn't have as much of a
> problem, but that's still memory used on client and server so perhaps
> something to look at eventually, but if it's not on your list I guess
> it's fine for now.
>
> Either way any fix or improvement would be more than welcome, I'm sure
> there are bugs in here that were just waiting for you ;)
>
>
> Cheers,
> --
> Dominique
>

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
