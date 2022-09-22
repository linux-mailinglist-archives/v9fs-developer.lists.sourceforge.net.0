Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C3B5E6F7C
	for <lists+v9fs-developer@lfdr.de>; Fri, 23 Sep 2022 00:14:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1obUSO-0005xm-3p;
	Thu, 22 Sep 2022 22:14:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <paul@paul-moore.com>) id 1obUSM-0005xf-P0
 for v9fs-developer@lists.sourceforge.net;
 Thu, 22 Sep 2022 22:14:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lVxzQXoJt8yJlDUfwhT+9PZwkUKntLnGspL2HrKQRnw=; b=Fi3UkPqbmUINiUNAV93EpokssT
 93ucWjVpJDcdvBmtXTDx6NcN00SXGOPhdsAtv2dTKEtBtkCuew+FPpXWMMnXeW5VD83kl0O3wOgSt
 YdFG3f3IZ7RgMC+muyoRECGRRiZtKYn5ws+pAeNkZYNgXCaIv1uMuOJL1XS07rz5BSAQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lVxzQXoJt8yJlDUfwhT+9PZwkUKntLnGspL2HrKQRnw=; b=KPygIOj1JrixhcLx0myhnifWQ0
 7j7MlqAGnJKfl052lfFTERFsPluPHX9E1WPhyzG6mk/PBPP1hQCZooyOjcYvK4nSc8Hpi0NKgJg4e
 A78Kmv1QAQBoh606YxVs86XL/Ov75B2oJT5XgzQmQKhBl6dsZO5xzTmGz2GnGzwiDcdI=;
Received: from mail-oi1-f169.google.com ([209.85.167.169])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1obUSH-00Gxt6-55 for v9fs-developer@lists.sourceforge.net;
 Thu, 22 Sep 2022 22:14:06 +0000
Received: by mail-oi1-f169.google.com with SMTP id c81so12037902oif.3
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 22 Sep 2022 15:14:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paul-moore-com.20210112.gappssmtp.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date;
 bh=lVxzQXoJt8yJlDUfwhT+9PZwkUKntLnGspL2HrKQRnw=;
 b=2rNsM24o5o8hp8REt3SbWPwTx8H5Ez3ZVvyMWYf5FOdHA8xvcb/s6T3cf9ZhMiy3OP
 MDdYwXnChE4uteJTJDHMEi8RLXFZGzmOTkgTSBHYlLbQL2LOCNWn0DqhjSlw8EX/xU5S
 SCZiL+x23crfmJ/eL3IASKIFIVOL3SKGMReJgMvJTl9GR/r6TUXJq04VuznLBC8FZlK5
 gwnkH0J8ZvFAX8tkJnFHz+4rwP5HuXjWm16MDs1da8iT1dmxlTlJuv45gp2mH/hITSlE
 doBl/3YfKxuORFXqyNLacs3tmmDXNmz4gUtP8RWBRXj3USNFf82tUbXoz6a1mNVkhty+
 GxRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=lVxzQXoJt8yJlDUfwhT+9PZwkUKntLnGspL2HrKQRnw=;
 b=ooKJ9/RDKb3goO0+dN8mAcHhMdbIkcXGjq685QgdvzKEBAoL4AMyfGsCRm7zZfdhhu
 bJnuOd5B/jWPDOjsnerNBO4f2g0v1706vluA+ZLhSTnbEqNcm0sbH2zYodu7Q/Ep4xFh
 sPojYvickiMSI5HqrxI2idJnDU8lHfDHaW/Kg43YnnbSIAqCHVAxd6GyLkI2fz4qwNJ7
 vv8BnjOVTLxvpjUvewXgFUo9vDrt63AjbvXGPBLgq9q1fLcSuo8fNGO/rGCOwSlYnrYi
 wdxGXETDwcwDgtl6OPTbvUC/Zd2+Y/XRl+6KRGZ49Km9l9sZl3Say85CXgbJIeXASjEo
 btKw==
X-Gm-Message-State: ACrzQf2bwjYnr8q417gTfNe95ZjaKXup304Si468q6O0I+MheAwCZGQb
 EYSiG56q40aGyfgAnNKP3dxlpezoOzxm91EqVwZU
X-Google-Smtp-Source: AMsMyM5Onvxiq8nCOD2wBV8RegfymgeU0WI0iCMUw//aI9XM1Wpuhd5pGa5VlijH5GzJXc0eysR5lfHbW/Qiu2J+BYc=
X-Received: by 2002:a05:6808:144b:b0:350:a06a:f8cb with SMTP id
 x11-20020a056808144b00b00350a06af8cbmr7536588oiv.51.1663884834071; Thu, 22
 Sep 2022 15:13:54 -0700 (PDT)
MIME-Version: 1.0
References: <20220922151728.1557914-1-brauner@kernel.org>
 <d74030ae-4b9a-5b39-c203-4b813decd9eb@schaufler-ca.com>
 <CAHk-=whLbq9oX5HDaMpC59qurmwj6geteNcNOtQtb5JN9J0qFw@mail.gmail.com>
 <16ca7e4c-01df-3585-4334-6be533193ba6@schaufler-ca.com>
 <CAHC9VhQRST66pVuNM0WGJsh-W01mDD-bX=GpFxCceUJ1FMWrmg@mail.gmail.com>
 <20220922215731.GA28876@mail.hallyn.com>
In-Reply-To: <20220922215731.GA28876@mail.hallyn.com>
From: Paul Moore <paul@paul-moore.com>
Date: Thu, 22 Sep 2022 18:13:44 -0400
Message-ID: <CAHC9VhSBwavTLcgkgJ-AYwH9wzECi3B7BtwdKOx5FJ3n7M+WYg@mail.gmail.com>
To: "Serge E. Hallyn" <serge@hallyn.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Sep 22,
 2022 at 5:57 PM Serge E. Hallyn <serge@hallyn.com>
 wrote: > On Thu, Sep 22, 2022 at 03:07:44PM -0400, Paul Moore wrote: > >
 On Thu, Sep 22, 2022 at 2:54 PM Casey Schaufler <casey@schau [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.169 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.169 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1obUSH-00Gxt6-55
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
Cc: linux-cifs@vger.kernel.org, Christian Brauner <brauner@kernel.org>,
 linux-fsdevel@vger.kernel.org, linux-security-module@vger.kernel.org,
 Seth Forshee <sforshee@kernel.org>, Casey Schaufler <casey@schaufler-ca.com>,
 v9fs-developer@lists.sourceforge.net, linux-integrity@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Sep 22, 2022 at 5:57 PM Serge E. Hallyn <serge@hallyn.com> wrote:
> On Thu, Sep 22, 2022 at 03:07:44PM -0400, Paul Moore wrote:
> > On Thu, Sep 22, 2022 at 2:54 PM Casey Schaufler <casey@schaufler-ca.com> wrote:
> > > On 9/22/2022 10:57 AM, Linus Torvalds wrote:
> > > > On Thu, Sep 22, 2022 at 9:27 AM Casey Schaufler <casey@schaufler-ca.com> wrote:
> > > >> Could we please see the entire patch set on the LSM list?
> > > > While I don't think that's necessarily wrong, I would like to point
> > > > out that the gitweb interface actually does make it fairly easy to
> > > > just see the whole patch-set.
> > > >
> > > > IOW, that
> > > >
> > > >   https://git.kernel.org/pub/scm/linux/kernel/git/vfs/idmapping.git/log/?h=fs.acl.rework
> > > >
> > > > that Christian pointed to is not a horrible way to see it all. Go to
> > > > the top-most commit, and it's easy to follow the parent links.
> > >
> > > I understand that the web interface is fine for browsing the changes.
> > > It isn't helpful for making comments on the changes. The discussion
> > > on specific patches (e.g. selinux) may have impact on other parts of
> > > the system (e.g. integrity) or be relevant elsewhere (e.g. smack). It
> > > can be a real problem if the higher level mailing list (the LSM list
> > > in this case) isn't included.
> >
> > This is probably one of those few cases where Casey and I are in
> > perfect agreement.  I'd much rather see the patches hit my inbox than
> > have to go hunting for them and then awkwardly replying to them (and
> > yes, I know there are ways to do that, I just personally find it
> > annoying).  I figure we are all deluged with email on a daily basis
> > and have developed mechanisms to deal with that in a sane way, what is
> > 29 more patches on the pile?
>
> Even better than the web interface, is find the message-id in any of the
> emails you did get, and run
>
> b4 mbox 20220922151728.1557914-1-brauner@kernel.org
>
> In general I'd agree with sending the whole set to the lsm list, but
> then one needs to start knowing which lists do and don't want the whole
> set...  b4 mbox and lei are now how I read all kernel related lists.

In my opinion, sending the entire patchset to the relevant lists
should be the default for all the reasons mentioned above.  All the
other methods are fine, and I don't want to stop anyone from using
their favorite tool, but *requiring* the use of a separate tool to
properly review and comment on patches gets us away from the
email-is-universal argument.  Yes, all the other tools mentioned are
still based in a world of email, but if you are not emailing the
relevant stakeholders directly (or indirectly via a list), you are
placing another hurdle in front of the reviewers by requiring them to
leave their email client based workflow and jump over to lore, b4,
etc. to review the patchset.

The lore.kernel.org instance is wonderful, full stop, and the b4 tool
is equally wonderful, full stop, but they are tools intended to assist
and optimize; they should not replace the practice of sending patches,
with the full context, to the relevant parties.

-- 
paul-moore.com


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
