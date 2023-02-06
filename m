Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1152E68BE68
	for <lists+v9fs-developer@lfdr.de>; Mon,  6 Feb 2023 14:37:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pP1gx-00058j-12;
	Mon, 06 Feb 2023 13:37:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1pP1gv-00058W-MS
 for v9fs-developer@lists.sourceforge.net;
 Mon, 06 Feb 2023 13:37:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JtK8lF6MCOaS/ib0UuQzzKTe2nEq5CKGERbXbVra/oc=; b=Qwy2CUbFPkDln/Yqu+qO5Jrprz
 HlB/i/oXJMh2qGZ/1xU5HWIo+2nXpjEztWH8QIZ9TCHxLIRtvfpxIbetAOeyI67lmxeNVxMm0aH7V
 zxkcqyDI/ua/Ojtw9L7ss/d2Rb057WrIUWWlHQvJnYsiQVUJKlqGtpt1jpxVUMwxLSho=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JtK8lF6MCOaS/ib0UuQzzKTe2nEq5CKGERbXbVra/oc=; b=WRY0uhFwcE2QOkSmLRDVQSPyYW
 qqIJQhR9GywTprZyYOgMPq4p6Bgx7Naf429Yk1h4I9qNf5cDyjyjki2U9Wa4QClrLTYvqnlAvghD+
 G+H0CnKvO8iiTA4owEfcQL7HB6ble9kmF7lJLNrv1wUiCzMzyigHGoVythoYuFtZ+mJM=;
Received: from mail-wm1-f41.google.com ([209.85.128.41])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pP1gq-00CaVl-Eq for v9fs-developer@lists.sourceforge.net;
 Mon, 06 Feb 2023 13:37:52 +0000
Received: by mail-wm1-f41.google.com with SMTP id
 l37-20020a05600c1d2500b003dfe46a9801so7323564wms.0
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 06 Feb 2023 05:37:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=JtK8lF6MCOaS/ib0UuQzzKTe2nEq5CKGERbXbVra/oc=;
 b=UjmmeR5KWDm6CcgY6kipRMuL9ZYkzlfB97msM82Pe4GISbKW2IVY9wvGbtdJhb4VD/
 syzaLHV7Ek1sGVLY1vU5ioDg9dBdNTN1/hobxh83s5KwM+l+//dkLTkOZm7ZU/AiTMZ9
 JKXoSIVFZOc5UtmJI7PfN06V1GRo1SvGVbWqv+H+qqboxPvC+C71PIjOFwwtimMLFxRG
 TpCbZIQ+cLzvU0zhsuFNSHyAfPCvxQrzjyViF/OGUO6mDxgSENfIi/lOBE1w69p+L0zZ
 DKdDWJ8uW1LrYm4guh29Oa0l2dvPn2Ct3teyurK+8FYjaFfUCuw3NlARYfAllTGuTm2i
 mVRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=JtK8lF6MCOaS/ib0UuQzzKTe2nEq5CKGERbXbVra/oc=;
 b=sq8Qf+8RGhVEJNHf0qHG9IY79FFbBy9RA2aWU+u6c0mOTJpFMWHheBaHCeN3QQkGP/
 NM1/m/lcbIfxGtiOHbOfpAuZzPhCNDuevpJW+883+WZ9bcSTePbxTUzxkcbqmkLtgULP
 /nLAiR55ZOXfGM6XAwvctn8LUUvBKl9BUUXj8cH/9IOk5BDBQMzCArawx2OS4GP0mtzm
 v3f6QwDOFz4gUzS63ga1NGtY9uNbLbEwJXzOAp2Q4F3FHm7wg602ra3mEosSB4dz2XIK
 pSQnlDjm2zetNXcp2yodc8YgCG6TFUC5IIPC8VLn7QZstqrt0GBwdK7XQTvmVlhRsZwf
 ZT6g==
X-Gm-Message-State: AO0yUKXXHsyAB69fdoeao6m42m3AxTgZcg/gad2jqYkSPblo0PmQaVfS
 Of488pEOc14S6hsGBkk7UlcwBlvYQg/xGc52LGI=
X-Google-Smtp-Source: AK7set9yjLCi6LS32UtkqwUd45F1wNsNY8ZPtU2mX3Rol2LREzaowUWQV3I0wWKKYamifbFHdduQjseQF6lcRBZVL50=
X-Received: by 2002:a05:600c:354b:b0:3e0:c45:3456 with SMTP id
 i11-20020a05600c354b00b003e00c453456mr53427wmq.44.1675690661795; Mon, 06 Feb
 2023 05:37:41 -0800 (PST)
MIME-Version: 1.0
References: <20221218232217.1713283-1-evanhensbergen@icloud.com>
 <2302787.WOG5zRkYfl@silver>
 <CAFkjPT=nxuG5rSuJ1seFV9eWvWNkyzw2f45yWqyEQV3+M91MPg@mail.gmail.com>
 <1959073.LTPWMqHWT2@silver>
In-Reply-To: <1959073.LTPWMqHWT2@silver>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Mon, 6 Feb 2023 07:37:30 -0600
Message-ID: <CAFkjPTnDfEX4KrTtztcA=eOif6X05r=QAJrfp1wegn=xsgK6nQ@mail.gmail.com>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Feb 6, 2023 at 7:20 AM Christian Schoenebeck wrote:
 > > Okay, that's surprising to me indeed. My expecation was that "loose"
 would > still retain its previous behaviour, i.e. loose consisten [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.41 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.41 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pP1gq-00CaVl-Eq
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
Cc: lucho@ionkov.net, linux-kernel@vger.kernel.org, rminnich@gmail.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Eric Van Hensbergen <ericvh@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Feb 6, 2023 at 7:20 AM Christian Schoenebeck
<linux_oss@crudebyte.com> wrote:
>
> Okay, that's surprising to me indeed. My expecation was that "loose" would
> still retain its previous behaviour, i.e. loose consistency cache but without
> any readahead or writeback. I already wondered about the transitivity you used
> in code for cache selection with direct `<=` comparison of user's cache
> option.
>
> Having said that, I wonder whether it would make sense to handle these as
> options independent of each other (e.g. cache=loose,readahead), but not sure,
> maybe it would overcomplicate things unnecessarily.
>

That's fair and I've considered it, but was waiting until I get to the
dir cache changes to figure out which way I wanted to go.  I imagine
the way that would play out is there are three types of caching
(readahead, writeback, dir) with writeback inclusive of readahead
still though.  Then there would be three cache policies (tight,
temporal, loose) and finally there'd be a seperate option for fscache
(open question as to whether or not fscache with < dir makes sense..I
think probably not).

> > I've a design for a "tight" cache, which will also not be
> > as performant as loose but will add consistent dir-caching on top of
> > readahead and writeback -- once we've properly vetted that it should
> > likely be the default cache option and any fscache should be built on
> > top of it.  I was also thinking of augmenting "tight" and "loose" with
> > a "temporal" cache that works more like NFS and bounds consistency to
> > a particular time quanta.  Loose was always a bit of a "hack" for some
> > particular use cases and has always been a bit problematic in my mind.
>
> Or we could add notifications on file changes from server side, because that's
> what this is actually about, right?
>

Yeah, that's always an option, but would be tricky to work out the 9p
model for this as model is explicitly RPC so we'd have to post a read
for file changes.  We had the same discussion for locks and decided to
keep it simple for now.  I'm not opposed to exploring this, but we'd
want to keep it as a invalidate log with a single open posted read --
could use a synthetic or something similar to the Tauth messages to
have that.  That's gonna go on the end-of-the-backlog for
consideration, but happy to review if someone else wants to go after
it.

> > So, to make sure we are on the same page, was your performance
> > uplifts/penalties versus cache=none or versus legacy cache=loose?
>
> I have not tested cache=none at all, because in the scenario of 9p being a
> root fs, you need at least cache=mmap, otherwise you won't even be able to
> boot a minimum system.
>

Yeah, understood -- mmap ~= writeback so the writeback issues would
persist there.  FWIW, I continue to see no problems with cache=none,
but that makes sense as all the changes are in the cache code.  Will
keep crunching on getting this fixed.

> I compared:
>
>   * master(cache=loose) vs. this(cache=loose)
>
>   * master(cache=loose) vs. this(cache=readahead)
>
>   * master(cache=loose) vs. this(cache=writeback)
>
> > The 10x perf improvement in the patch series was in streaming reads over
> > cache=none.
>
> OK, that's an important information to mention in the first place. Because
> when say you measured a performance plus of x times, I would assume you
> compared it to at least a somewhat similar setup. I mean cache=loose was
> always much faster than cache=none before.
>

Sorry that I didn't make that more clear.  The original motivation for
the patch series was the cpu project that Ron and I have been
collaborating on and cache==loose was problematic for that use case so
we wanted something that approached the performance of cache==loose
but with tighter consistency (in particular the ability to actually do
read-ahead with open-to-close consistency).  As you pointed out
though, there was a 5% improvement in loose (probably due to reduction
of messages associated with management of the writeback_fid).  In any
case, the hope is to make cache=mmap (and eventually cache=tight) the
default cache mode versus cache=none -- but have to get this stable
first.

As I said, the dir-cache changes in the WIP patch series are expected
to benefit loose a bit more (particularly around the dir-read pain
points) and I spotted several cases where loose appears to be
re-requesting files it already has in cache -- so there may be more to
it.  But that being said, I don't expected to get 10x out of those
changes (although depends on the types of operations being performed).
Will know better when I get further along.

         -eric


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
