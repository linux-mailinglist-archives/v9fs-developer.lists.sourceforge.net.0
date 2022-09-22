Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9648C5E6B94
	for <lists+v9fs-developer@lfdr.de>; Thu, 22 Sep 2022 21:13:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1obRdu-00053b-Q1;
	Thu, 22 Sep 2022 19:13:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <paul@paul-moore.com>) id 1obRdt-00053V-JW
 for v9fs-developer@lists.sourceforge.net;
 Thu, 22 Sep 2022 19:13:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2E/C7DbYFbgaIr08r5WQJJ8lH65h8Rlpzk3fsg7D9e8=; b=T9xqravG3Sq3uRGm+hdry1SaLs
 wYM1ZUrFD+9YvRe9/alUmyjyFaarYbDPV9r+qbYL0pBDu2a0+DhMTpT41dOt5wpFyFbQe72jRB9cm
 r3uNVCPs1+Rmn/eMiZ9rh4JjHkah62DjcKCGs77PLi0YVq4IBB7CJ8urMB8xaQVMJPO8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2E/C7DbYFbgaIr08r5WQJJ8lH65h8Rlpzk3fsg7D9e8=; b=LztmVh8BazZCXUvoYn+MMxucWT
 ZJm0nQAEN/40dxWkonFo1lbjceT0Ic18DOQp6yfW78g4WA78t36LR1JjwCoZYiYaqpKSdzKRZIiyl
 E+kqXF8ayZ4ycIhwxEVtJL8oyYTidyspiVL0A6nMZZrYzFTsbBstubJDe0WqHh6nrC9E=;
Received: from mail-oi1-f182.google.com ([209.85.167.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1obRdp-00077I-MO for v9fs-developer@lists.sourceforge.net;
 Thu, 22 Sep 2022 19:13:49 +0000
Received: by mail-oi1-f182.google.com with SMTP id v130so13644087oie.2
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 22 Sep 2022 12:13:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paul-moore-com.20210112.gappssmtp.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date;
 bh=2E/C7DbYFbgaIr08r5WQJJ8lH65h8Rlpzk3fsg7D9e8=;
 b=Sc2t84MYNifRdpTZz6LHCdTHbGpHtePPoew2qsdF9HHe8gStsU2qKwHjLQmE1+oPPg
 I1EurkRBUsiV216mZSYCjX649kwgi5p9dGPj50oSNxaH8t9N5Lyt/GsKj+zklmLR6qEr
 6R4aHXhiCm/iktm0j/EoGmNd0poPj6lF+d3aisz2dZom3AWJS8ZfcYs8qIfw2l7FOMBe
 HWJ3KinBwLAunUH38CmELQ+uYEnv7YZf9KTUM3+NhHM3aV3rTSVddlmYen3IgFOvDILn
 1pehVy8LfZjvBTsHHkBR3BUiOkMUko7Ppki5o5o9Li47YyyXPlz3/ARUMXM7puPuP26M
 yXxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=2E/C7DbYFbgaIr08r5WQJJ8lH65h8Rlpzk3fsg7D9e8=;
 b=PYsyBgzJQqG3RwzYqNcjhl9budj3Om/HtkD8BzxU9Gx+XGA+jt51qM3RmZjBFJsRej
 duiD177auzvJvFbB207D+rOQh8ZIy26yNfIU9yVZm0aB5pBhREktBxc8RbzH2pYf4EWu
 xfgbfNxTzdIGZO4l2Y5SHVWjTigIVFqSNV5UiNHhMHNS6hZII+eJg2x2/TBH9B9MixQx
 jhZi/9nY3qsH419HvjElZUk5/U1eprxqUJtZOOZrdTzovKavqs/8Q14jlY+TwpQe3+l+
 A5rOFVls8WTWqJwAkrCb9F2dHtzKdGek/xikTi7iNDTlLzu7fY4YYYS7bR7tGjM/iItr
 48/A==
X-Gm-Message-State: ACrzQf3AfLZdRvbvcipC8QVvs/ZWTq3wIIafamPLYvLQiC9xYqvJYqdt
 CjXn4nl9+xVKPIykLqNI+2lcFzKzVpPpBiv1IiN/dPvGLQ==
X-Google-Smtp-Source: AMsMyM6d9RAgQ5lrUQAwZbu3DJT1/UNg9egieC9LHbxthXW7OebfrM1G5JLCjS1iPUbSyY1utPnUyQOKNNFWojmurr0=
X-Received: by 2002:a05:6870:600c:b0:12d:9e19:9860 with SMTP id
 t12-20020a056870600c00b0012d9e199860mr2966449oaa.172.1663873675323; Thu, 22
 Sep 2022 12:07:55 -0700 (PDT)
MIME-Version: 1.0
References: <20220922151728.1557914-1-brauner@kernel.org>
 <d74030ae-4b9a-5b39-c203-4b813decd9eb@schaufler-ca.com>
 <CAHk-=whLbq9oX5HDaMpC59qurmwj6geteNcNOtQtb5JN9J0qFw@mail.gmail.com>
 <16ca7e4c-01df-3585-4334-6be533193ba6@schaufler-ca.com>
In-Reply-To: <16ca7e4c-01df-3585-4334-6be533193ba6@schaufler-ca.com>
From: Paul Moore <paul@paul-moore.com>
Date: Thu, 22 Sep 2022 15:07:44 -0400
Message-ID: <CAHC9VhQRST66pVuNM0WGJsh-W01mDD-bX=GpFxCceUJ1FMWrmg@mail.gmail.com>
To: Casey Schaufler <casey@schaufler-ca.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Sep 22,
 2022 at 2:54 PM Casey Schaufler <casey@schaufler-ca.com>
 wrote: > On 9/22/2022 10:57 AM, Linus Torvalds wrote: > > On Thu, Sep 22,
 2022 at 9:27 AM Casey Schaufler <casey@schaufler-ca.c [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.182 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.182 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1obRdp-00077I-MO
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
 linux-security-module@vger.kernel.org, Seth Forshee <sforshee@kernel.org>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 linux-integrity@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Sep 22, 2022 at 2:54 PM Casey Schaufler <casey@schaufler-ca.com> wrote:
> On 9/22/2022 10:57 AM, Linus Torvalds wrote:
> > On Thu, Sep 22, 2022 at 9:27 AM Casey Schaufler <casey@schaufler-ca.com> wrote:
> >> Could we please see the entire patch set on the LSM list?
> > While I don't think that's necessarily wrong, I would like to point
> > out that the gitweb interface actually does make it fairly easy to
> > just see the whole patch-set.
> >
> > IOW, that
> >
> >   https://git.kernel.org/pub/scm/linux/kernel/git/vfs/idmapping.git/log/?h=fs.acl.rework
> >
> > that Christian pointed to is not a horrible way to see it all. Go to
> > the top-most commit, and it's easy to follow the parent links.
>
> I understand that the web interface is fine for browsing the changes.
> It isn't helpful for making comments on the changes. The discussion
> on specific patches (e.g. selinux) may have impact on other parts of
> the system (e.g. integrity) or be relevant elsewhere (e.g. smack). It
> can be a real problem if the higher level mailing list (the LSM list
> in this case) isn't included.

This is probably one of those few cases where Casey and I are in
perfect agreement.  I'd much rather see the patches hit my inbox than
have to go hunting for them and then awkwardly replying to them (and
yes, I know there are ways to do that, I just personally find it
annoying).  I figure we are all deluged with email on a daily basis
and have developed mechanisms to deal with that in a sane way, what is
29 more patches on the pile?

-- 
paul-moore.com


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
