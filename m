Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B67D5E7642
	for <lists+v9fs-developer@lfdr.de>; Fri, 23 Sep 2022 10:53:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1obeR3-0003lT-7y;
	Fri, 23 Sep 2022 08:53:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1obeQi-0003l8-O6
 for v9fs-developer@lists.sourceforge.net;
 Fri, 23 Sep 2022 08:53:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=darG64KYs9HMJkS6NjDB06TuCxk3WnQECkDg/eGQEmA=; b=OAL4V3TRWSLKZsdcOL+kviVWRM
 DRHURm098gMfJn7GCjYv87sTuYFHdY2MA3k1FC4Bqe8g9BnmdKXvlGBglGD9MdUCMdkf+fcsnONMa
 bveUgVRqja6zNYOprDb9eYE6dmnPpq3XOOF+mNNJ7dmy3SEHofVITY/sSpEwaOzJiUzs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=darG64KYs9HMJkS6NjDB06TuCxk3WnQECkDg/eGQEmA=; b=gQxyOqSlc5VvtMwsFY666281Vt
 Z6K0/2WewvsZL9zV7bsCJ+3Wki5n057/ENfIQ/K6xS3xff+pOZHOdS41WqDg4I8LqwULQ4u9u+LiG
 fe5iqY6ALbcMKlbU1tEPELWxDC5ytbb8shU3WhH/41TxBObWvssPLWBU3cyp50e9q0ec=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1obeQt-0001Cp-77 for v9fs-developer@lists.sourceforge.net;
 Fri, 23 Sep 2022 08:53:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 26CEBB825E8;
 Fri, 23 Sep 2022 08:53:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82E77C433C1;
 Fri, 23 Sep 2022 08:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1663923182;
 bh=6UkifW9opBuMiDyAjvnxiHu2FKrBLty2CaTZoLX1Qf8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fuMMxSihZdLFcnHxLfHUb1BkuwfWdTeggmnBd3ei4gKudohhYIFgUKLJumYoKoCti
 x62wROUR3srA6pEupaT2QuwXqAMyTDOCbvPrRyhK331ablFW6VjJjjL9Lgeo16Xkbn
 kcP6mqIfuGDyX/GE0SuxV7ZFBUQlgR8Hv3voEXFGe0eTwnSBLo0f7i1UbDxI3wxOye
 KWS90gaEv/h5cv+t8dSHarFtQegDs0wGdSTLIyJ+jhLiT5ojCi3QmlVq6NVq8a+W5N
 Jgy2EIk59xsdbPHu3tTY35yY0RMk9AYXnL3e4rJBaG332J12GTsVh2GB9/0mn853lw
 W1fO3xgL+uqag==
Date: Fri, 23 Sep 2022 10:52:56 +0200
From: Christian Brauner <brauner@kernel.org>
To: Paul Moore <paul@paul-moore.com>, "Serge E. Hallyn" <serge@hallyn.com>,
 Casey Schaufler <casey@schaufler-ca.com>
Message-ID: <20220923085256.2ic6ivf4iuacu5sg@wittgenstein>
References: <20220922151728.1557914-1-brauner@kernel.org>
 <d74030ae-4b9a-5b39-c203-4b813decd9eb@schaufler-ca.com>
 <CAHk-=whLbq9oX5HDaMpC59qurmwj6geteNcNOtQtb5JN9J0qFw@mail.gmail.com>
 <16ca7e4c-01df-3585-4334-6be533193ba6@schaufler-ca.com>
 <CAHC9VhQRST66pVuNM0WGJsh-W01mDD-bX=GpFxCceUJ1FMWrmg@mail.gmail.com>
 <20220922215731.GA28876@mail.hallyn.com>
 <CAHC9VhSBwavTLcgkgJ-AYwH9wzECi3B7BtwdKOx5FJ3n7M+WYg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHC9VhSBwavTLcgkgJ-AYwH9wzECi3B7BtwdKOx5FJ3n7M+WYg@mail.gmail.com>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Sep 22, 2022 at 06:13:44PM -0400, Paul Moore wrote:
 > On Thu, Sep 22, 2022 at 5:57 PM Serge E. Hallyn <serge@hallyn.com> wrote:
 > > On Thu, Sep 22, 2022 at 03:07:44PM -0400, Paul Moore wrote: [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1obeQt-0001Cp-77
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
Cc: linux-cifs@vger.kernel.org, Al Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, linux-security-module@vger.kernel.org,
 Seth Forshee <sforshee@kernel.org>, Casey Schaufler <casey@schaufler-ca.com>,
 v9fs-developer@lists.sourceforge.net, linux-integrity@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 "Serge E. Hallyn" <serge@hallyn.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Sep 22, 2022 at 06:13:44PM -0400, Paul Moore wrote:
> On Thu, Sep 22, 2022 at 5:57 PM Serge E. Hallyn <serge@hallyn.com> wrote:
> > On Thu, Sep 22, 2022 at 03:07:44PM -0400, Paul Moore wrote:
> > > On Thu, Sep 22, 2022 at 2:54 PM Casey Schaufler <casey@schaufler-ca.com> wrote:
> > > > On 9/22/2022 10:57 AM, Linus Torvalds wrote:
> > > > > On Thu, Sep 22, 2022 at 9:27 AM Casey Schaufler <casey@schaufler-ca.com> wrote:
> > > > >> Could we please see the entire patch set on the LSM list?
> > > > > While I don't think that's necessarily wrong, I would like to point
> > > > > out that the gitweb interface actually does make it fairly easy to
> > > > > just see the whole patch-set.
> > > > >
> > > > > IOW, that
> > > > >
> > > > >   https://git.kernel.org/pub/scm/linux/kernel/git/vfs/idmapping.git/log/?h=fs.acl.rework
> > > > >
> > > > > that Christian pointed to is not a horrible way to see it all. Go to
> > > > > the top-most commit, and it's easy to follow the parent links.
> > > >
> > > > I understand that the web interface is fine for browsing the changes.
> > > > It isn't helpful for making comments on the changes. The discussion
> > > > on specific patches (e.g. selinux) may have impact on other parts of
> > > > the system (e.g. integrity) or be relevant elsewhere (e.g. smack). It
> > > > can be a real problem if the higher level mailing list (the LSM list
> > > > in this case) isn't included.
> > >
> > > This is probably one of those few cases where Casey and I are in
> > > perfect agreement.  I'd much rather see the patches hit my inbox than
> > > have to go hunting for them and then awkwardly replying to them (and
> > > yes, I know there are ways to do that, I just personally find it
> > > annoying).  I figure we are all deluged with email on a daily basis
> > > and have developed mechanisms to deal with that in a sane way, what is
> > > 29 more patches on the pile?
> >
> > Even better than the web interface, is find the message-id in any of the
> > emails you did get, and run
> >
> > b4 mbox 20220922151728.1557914-1-brauner@kernel.org
> >
> > In general I'd agree with sending the whole set to the lsm list, but
> > then one needs to start knowing which lists do and don't want the whole
> > set...  b4 mbox and lei are now how I read all kernel related lists.
> 
> In my opinion, sending the entire patchset to the relevant lists
> should be the default for all the reasons mentioned above.  All the
> other methods are fine, and I don't want to stop anyone from using
> their favorite tool, but *requiring* the use of a separate tool to
> properly review and comment on patches gets us away from the
> email-is-universal argument.  Yes, all the other tools mentioned are
> still based in a world of email, but if you are not emailing the
> relevant stakeholders directly (or indirectly via a list), you are
> placing another hurdle in front of the reviewers by requiring them to
> leave their email client based workflow and jump over to lore, b4,
> etc. to review the patchset.
> 
> The lore.kernel.org instance is wonderful, full stop, and the b4 tool
> is equally wonderful, full stop, but they are tools intended to assist
> and optimize; they should not replace the practice of sending patches,
> with the full context, to the relevant parties.

I'm happy to send all of v2 to the security mailing list.

But for v1 could you compromise and just use b4?

b4 mbox 20220922151728.1557914-1-brauner@kernel.org

This would mean you could provide reviews for v1 and we don't need to
fragment the v1 discussion because of a resend to include a mailing list.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
