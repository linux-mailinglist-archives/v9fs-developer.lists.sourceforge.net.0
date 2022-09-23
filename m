Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7835E761E
	for <lists+v9fs-developer@lfdr.de>; Fri, 23 Sep 2022 10:46:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1obeKY-0004qj-1z;
	Fri, 23 Sep 2022 08:46:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1obeJs-0004pR-3N
 for v9fs-developer@lists.sourceforge.net;
 Fri, 23 Sep 2022 08:46:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Vf1NEWqk11H8KSC65DJFpAIlffceRFfS9qoJJcLMBss=; b=NX+fW3vsSDjET5QAnCZA6gb/iS
 TosjTYgHYPgCK50TY+daltHh9jkfnvfXYKrP5nFfglCIZHCAdn1psWMqxloo9h1+06pjQjaqrqkiE
 e0wkcDNEx8/DhzOoDQSnvBONjYZVw19/rcGaKJT3xkpDYwmFNFlABp2JiNvhdPU//w+k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Vf1NEWqk11H8KSC65DJFpAIlffceRFfS9qoJJcLMBss=; b=PY29RRsXzKuDR1LTRW0dnofhTo
 Z1dCM3fV2w7jZCzLgx3C2PG4KpI83jdQiqLpbjkn/K+UBMfr9CV9ABut8nOF94tLCW5REzqJo6CWG
 AHycd7ovqPJGORn2OyAGHoZS1/9EpMr8IO+ei098V4JK4OfxHsB9l3SgR/fO73tDYgNo=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1obeJp-00HOZj-Vd for v9fs-developer@lists.sourceforge.net;
 Fri, 23 Sep 2022 08:45:59 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 1F0D8B8169F;
 Fri, 23 Sep 2022 08:45:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30503C43145;
 Fri, 23 Sep 2022 08:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1663922744;
 bh=VOeV0Bwix53e9PcTJ/28Rd0x7ixxeEzA1kmKTwpUcqo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lmLbn6TwgnLT13CkMX9Wc+c2qkJCWdOSwuPUpW4SlcSMk36qoCzUtorg8PGjZfmLG
 b9e84XCnsS6+WyNCI46ikNItJouIS9S9tD/K6EkrgXAmWNP4Az+IHxzseqvPZIjvUL
 X6Nrg9iNqgKJ8BM4xozc89hG/Jc35CTv94/zBzeC4rC+OJDxa8cy3bU4OmPESFZShr
 YTGDcsSwSGFRZq2YwvqHRJXMm4si7W3CY5xk/mQLaJo5etUtEeopQeHjo/tzTFpJqo
 /NXtnsZrkNfnfHMZNokJd8Wbox4rs1Sun3DTTJJm5WHdC2JsUckuVNbLuB0CWVyT72
 AcqQEfvFIV2Zg==
Date: Fri, 23 Sep 2022 10:45:39 +0200
From: Christian Brauner <brauner@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20220923084539.vazq4eiceovoclcf@wittgenstein>
References: <20220922151728.1557914-1-brauner@kernel.org>
 <d74030ae-4b9a-5b39-c203-4b813decd9eb@schaufler-ca.com>
 <CAHk-=whLbq9oX5HDaMpC59qurmwj6geteNcNOtQtb5JN9J0qFw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=whLbq9oX5HDaMpC59qurmwj6geteNcNOtQtb5JN9J0qFw@mail.gmail.com>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Sep 22, 2022 at 10:57:38AM -0700,
 Linus Torvalds wrote:
 > On Thu, Sep 22, 2022 at 9:27 AM Casey Schaufler <casey@schaufler-ca.com>
 wrote: > > > > Could we please see the entire patch set on th [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1obeJp-00HOZj-Vd
Subject: Re: [V9fs-developer] [RFC PATCH 00/29] acl: add vfs posix acl api
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
Cc: linux-cifs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-security-module@vger.kernel.org, Seth Forshee <sforshee@kernel.org>,
 Casey Schaufler <casey@schaufler-ca.com>, v9fs-developer@lists.sourceforge.net,
 linux-integrity@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Sep 22, 2022 at 10:57:38AM -0700, Linus Torvalds wrote:
> On Thu, Sep 22, 2022 at 9:27 AM Casey Schaufler <casey@schaufler-ca.com> wrote:
> >
> > Could we please see the entire patch set on the LSM list?
> 
> While I don't think that's necessarily wrong, I would like to point
> out that the gitweb interface actually does make it fairly easy to
> just see the whole patch-set.
> 
> IOW, that
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/vfs/idmapping.git/log/?h=fs.acl.rework
> 
> that Christian pointed to is not a horrible way to see it all. Go to
> the top-most commit, and it's easy to follow the parent links.
> 
> It's a bit more work to see them in another order, but I find the
> easiest way is actually to just follow the parent links to get the
> overview of what is going on (reading just the commit messages), and
> then after that you "reverse course" and use the browser back button
> to just go the other way while looking at the details of the patches.
> 
> And I suspect a lot of people are happier *without* large patch-sets
> being posted to the mailing lists when most patches aren't necessarily
> at all relevant to that mailing list except as context.

The problem is also that it's impossible to please both parties here.

A good portion of people doesn't like being flooded with patches they
don't really care about and the other portion gets worked up when they
only see a single patch.

So honestly I just always make a judgement call based on the series. But
b4 makes it so so easy to just retrieve the whole series. So even if I
only receive a single patch and am curious then I just use b4.

I've even got it integrated into mutt directly:

# Pipe message to b4 to download patches and threads
macro index,pager A "<pipe-message>b4 am --apply-cover-trailers --sloppy-trailers --add-my-sob --guess-base --check-newer-revisions --no-cache --quilt-ready <enter>"
macro index,pager M "<pipe-message>b4 mbox <enter>"




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
