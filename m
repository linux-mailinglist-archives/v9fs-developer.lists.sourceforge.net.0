Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A808E5E6BF6
	for <lists+v9fs-developer@lfdr.de>; Thu, 22 Sep 2022 21:46:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1obS9u-0007lu-92;
	Thu, 22 Sep 2022 19:46:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <torvalds@linuxfoundation.org>) id 1obS9p-0007lj-5k
 for v9fs-developer@lists.sourceforge.net;
 Thu, 22 Sep 2022 19:46:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TgDgY+ntTJT5LrRO/2yKf3PhPIjqGDJ5ckxVAeXb9pM=; b=lQjzLyIJEHXHhRG4Qn7QGk/e6b
 8jRZzmmzdWNdaz5jcRRK2a0uq+ZNultJK/WHdOP9AdGiOCwAITR+4ZR6W8aB94YF9bSwci4az3Emu
 djo2tWtGbMJtR71FO3Xg/wN4Bx1lBT1jbX264Jo2IU3LaKEpqgF6+pq/TEjIwcRlEF9w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TgDgY+ntTJT5LrRO/2yKf3PhPIjqGDJ5ckxVAeXb9pM=; b=IfEhuOOHU+MiQvRH3wNbnMS0KV
 wlOf7x8tC135wFg93QFEl7Y+LKaD6VDuX/4Wai4BGi2bxuSYSMRzQIJTRV8C13RWhbSo+HqEETJMo
 2bedUNZJgShJAWECqVeQ8WLNNmGFoz9DRDq52aRnTpsM+SM548Vl8cmyP01lI10FxS6I=;
Received: from mail-yb1-f176.google.com ([209.85.219.176])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1obS9h-0000eZ-ND for v9fs-developer@lists.sourceforge.net;
 Thu, 22 Sep 2022 19:46:48 +0000
Received: by mail-yb1-f176.google.com with SMTP id 198so14353716ybc.1
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 22 Sep 2022 12:46:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date;
 bh=TgDgY+ntTJT5LrRO/2yKf3PhPIjqGDJ5ckxVAeXb9pM=;
 b=EzxJCwqj8SUwpLATOCTQCPXxDArAx6jFOBINEfe0RkA59zcTvCk63VJoJ1bzwwuIVb
 V1mD5vSARYHIY+JC4SPQ/okkb4NfsVbzqL94CXKsz3w9yhvAfHII3L0jSoZFPnLVF9K/
 b96T0Tc7ngdEn6LxvZQF4QI0CBnLRHl8wFXus=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=TgDgY+ntTJT5LrRO/2yKf3PhPIjqGDJ5ckxVAeXb9pM=;
 b=32goCVOwT6MwHjEuFgC2kSd37aRhDmd0lxbS1SrUz5ZZp5zESl3nSBsk7lBVlE60qb
 NxwqqYK0wSvO8z/eZlr66Y4odizG9ehXfq7wuwfcadWrCz2fF0+tDpfVhtIiVVGudWv4
 Udc6IEdEqjz10m0sLliGwlzQZh75A/AgBJLLID7R0XTAPD9OXsH5UJTsyhREnCs6WHPi
 f43sXlMsj/M9sWtSUTHHHKWXBuuW4ygJ9Dg7cqgVdXZ315FB9XRLGKj2RxNqpQi6atow
 GuDZ2Rzy5f9m8xIAz7HRbXIwYhu1QiJFdg4dk3+n3JZldp+UIyM/DnTL0R8DAJHHfAO8
 kF9A==
X-Gm-Message-State: ACrzQf0NdBJ8bdJwOU8x0CJn3/LFAJjaNHSAnQotZdTSjA6CcVmcIQhu
 nhBOw8Tm9h8OyKEjHQV4XhWqZsifb1+whg==
X-Google-Smtp-Source: AMsMyM7nG7UVRpsTh3J3KJYy4t1SV42LHcs9tVgSkgCRj3wOLfLNw8Aa+KvKxA/1UMJPiSshs0w84Q==
X-Received: by 2002:a9d:20e3:0:b0:655:d819:244b with SMTP id
 x90-20020a9d20e3000000b00655d819244bmr2254700ota.232.1663869478307; 
 Thu, 22 Sep 2022 10:57:58 -0700 (PDT)
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com.
 [209.85.160.54]) by smtp.gmail.com with ESMTPSA id
 bm43-20020a0568081aab00b0034d14c6ce3dsm2683804oib.16.2022.09.22.10.57.54
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 22 Sep 2022 10:57:55 -0700 (PDT)
Received: by mail-oa1-f54.google.com with SMTP id
 586e51a60fabf-127ba06d03fso15001863fac.3
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 22 Sep 2022 10:57:54 -0700 (PDT)
X-Received: by 2002:a05:6870:c0c9:b0:127:c4df:5b50 with SMTP id
 e9-20020a056870c0c900b00127c4df5b50mr2732855oad.126.1663869474518; Thu, 22
 Sep 2022 10:57:54 -0700 (PDT)
MIME-Version: 1.0
References: <20220922151728.1557914-1-brauner@kernel.org>
 <d74030ae-4b9a-5b39-c203-4b813decd9eb@schaufler-ca.com>
In-Reply-To: <d74030ae-4b9a-5b39-c203-4b813decd9eb@schaufler-ca.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 22 Sep 2022 10:57:38 -0700
X-Gmail-Original-Message-ID: <CAHk-=whLbq9oX5HDaMpC59qurmwj6geteNcNOtQtb5JN9J0qFw@mail.gmail.com>
Message-ID: <CAHk-=whLbq9oX5HDaMpC59qurmwj6geteNcNOtQtb5JN9J0qFw@mail.gmail.com>
To: Casey Schaufler <casey@schaufler-ca.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Sep 22,
 2022 at 9:27 AM Casey Schaufler <casey@schaufler-ca.com>
 wrote: > > Could we please see the entire patch set on the LSM list? While
 I don't think that's necessarily wrong, I would like to point out that the
 gitweb interface actually does make it fairly easy to just see the whole
 patch-set. 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.176 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.176 listed in list.dnswl.org]
X-Headers-End: 1obS9h-0000eZ-ND
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
 linux-integrity@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Sep 22, 2022 at 9:27 AM Casey Schaufler <casey@schaufler-ca.com> wrote:
>
> Could we please see the entire patch set on the LSM list?

While I don't think that's necessarily wrong, I would like to point
out that the gitweb interface actually does make it fairly easy to
just see the whole patch-set.

IOW, that

  https://git.kernel.org/pub/scm/linux/kernel/git/vfs/idmapping.git/log/?h=fs.acl.rework

that Christian pointed to is not a horrible way to see it all. Go to
the top-most commit, and it's easy to follow the parent links.

It's a bit more work to see them in another order, but I find the
easiest way is actually to just follow the parent links to get the
overview of what is going on (reading just the commit messages), and
then after that you "reverse course" and use the browser back button
to just go the other way while looking at the details of the patches.

And I suspect a lot of people are happier *without* large patch-sets
being posted to the mailing lists when most patches aren't necessarily
at all relevant to that mailing list except as context.

                 Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
