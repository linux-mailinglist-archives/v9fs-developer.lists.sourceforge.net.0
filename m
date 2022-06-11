Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F152D5477E5
	for <lists+v9fs-developer@lfdr.de>; Sun, 12 Jun 2022 01:17:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o0ALu-000472-N0; Sat, 11 Jun 2022 23:17:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <sudipm.mukherjee@gmail.com>) id 1o0ALt-00046v-57
 for v9fs-developer@lists.sourceforge.net; Sat, 11 Jun 2022 23:17:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7tY0AdLKGQcBZThRCKqEnHHKhqjAUktylGqxkcbwV5M=; b=QZH7oCEdpiLQAU8CBhs/6vWtAz
 JCBSLc8NljrCUS4/meEhspiRiTovgaHBhl+3XtFysjnbo55M8KhSbE5r3cX3RLurdXpLyMobMS81e
 R3JWwiI15B4iIY6D1g4kOYoPdWOmtfahXGtOCcUnNDXla8R5l8K3iGmKrbvpw+E+i+O4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7tY0AdLKGQcBZThRCKqEnHHKhqjAUktylGqxkcbwV5M=; b=KLKeVDusam+heAiHUtInc4Ylld
 Cs7C5uwf9+94NAYxUQSyUxSyDpo08aoy/D/6kExHtVxzS6XrOqr/OoUZiyx28y025rTezrOjT66sn
 +1u+xxOPhtpc4HPNyiWgYEKb2LbVuz42mu/mhJ80nLmg0cx2/Ogws6RwfUImUQEZF540=;
Received: from mail-yw1-f171.google.com ([209.85.128.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o0ALm-00059J-0P
 for v9fs-developer@lists.sourceforge.net; Sat, 11 Jun 2022 23:17:07 +0000
Received: by mail-yw1-f171.google.com with SMTP id
 00721157ae682-30c143c41e5so21640557b3.3
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 11 Jun 2022 16:17:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7tY0AdLKGQcBZThRCKqEnHHKhqjAUktylGqxkcbwV5M=;
 b=MkUznwHRAxP9+dhosAeqvGb2QHCUqhvglnLe+Ay0eMDpsTrsROFrqBqQNV907jqR1k
 PE2DZB0piQZii/9kYn3Nn6qK4782QU37QOcmw7/isWdIyQV+2HSeVQdT43sMKW2+E8JI
 dhOaGyLje/PreClJgBIcQ6/7fcZqE4h66uDkBxHR/kjW+qZwvD5X9qTF+pX9Ulcqw6XA
 P3abM7JyEvmvQmqbrIwWVbuRM2ZH8kxFqEIKDrMHJjfFKdsDBG/HUMY4NmC/FetK5vbt
 q9BwbuOnI+NtI6u57xBjA1qJzpd2I2vWt4s2kFz6zP9JEHmDYIQhgT8OsOrjWu2Qs1BM
 7PeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7tY0AdLKGQcBZThRCKqEnHHKhqjAUktylGqxkcbwV5M=;
 b=tpo97gOHStLGj51dKgbBxJwVOBNCJWnZtAj0vNR1xqemyDUZgA2F6h6kEHj2bx1EI5
 2KPH2Lh6C0zysUiBLwLvjHwWlztX3y9KPxfOR2w2aWdVnVdmCmgShkOabQLOsMhUa0K/
 S9PVsZHMw7mTQMujivemk9vBd/mMDH59AOfMameDyRyBdZsrqsycABeINtf38Xv6nwhc
 QL2eum0+OS92voD141C2HQHELWaiUeImJzRkSMs06d4ZRomX+lVYKkE2hF+UCWLaEORs
 o4ytmxSHewSV2qZG5qqsVeVGMDOVhEuP7/SL/vu874w/2HBYJsx44OYynDE2sRNuJ3vf
 cn1g==
X-Gm-Message-State: AOAM5313+U0dOEYaQOZdTCbga/mRjChK0d707cYg+LJJ1G34sluSZ5rq
 BfTgmwdMj8MomC0vBYnqxovCSV/tqRY59N+6wTk=
X-Google-Smtp-Source: ABdhPJzlwYpvKTPyyPdeXtV2pl9MFSrG58VQNbCZMgzIM4+A3xkdjLHgnk9bXvveXs22MFjk8SlQTB1IJrT1XFksgVA=
X-Received: by 2002:a81:25cc:0:b0:30f:ea57:af01 with SMTP id
 l195-20020a8125cc000000b0030fea57af01mr54129487ywl.488.1654989417608; Sat, 11
 Jun 2022 16:16:57 -0700 (PDT)
MIME-Version: 1.0
References: <YqRyL2sIqQNDfky2@debian> <YqSGv6uaZzLxKfmG@zeniv-ca.linux.org.uk>
 <YqSMmC/UuQpXdxtR@zeniv-ca.linux.org.uk>
 <YqSQ++8UnEW0AJ2y@zeniv-ca.linux.org.uk>
In-Reply-To: <YqSQ++8UnEW0AJ2y@zeniv-ca.linux.org.uk>
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Date: Sun, 12 Jun 2022 00:16:21 +0100
Message-ID: <CADVatmOJvTj21vrL5cnAVjWx46cB4r_kB+T2ankDj+mKH2-7=w@mail.gmail.com>
To: Al Viro <viro@zeniv.linux.org.uk>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Jun 11, 2022 at 1:56 PM Al Viro wrote: > > On Sat,
 Jun 11, 2022 at 12:37:44PM +0000, Al Viro wrote: > > On Sat, Jun 11, 2022
 at 12:12:47PM +0000, Al Viro wrote: > > > > > > > At a guess, sho [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.171 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sudipm.mukherjee[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.171 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o0ALm-00059J-0P
Subject: Re: [V9fs-developer] mainline build failure due to 6c77676645ad
 ("iov_iter: Fix iter_xarray_get_pages{, _alloc}()")
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
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Gao Xiang <xiang@kernel.org>, linux-erofs@lists.ozlabs.org,
 linux-afs@lists.infradead.org, devel@lists.orangefs.org,
 Mike Marshall <hubcap@omnibond.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sat, Jun 11, 2022 at 1:56 PM Al Viro <viro@zeniv.linux.org.uk> wrote:
>
> On Sat, Jun 11, 2022 at 12:37:44PM +0000, Al Viro wrote:
> > On Sat, Jun 11, 2022 at 12:12:47PM +0000, Al Viro wrote:
> >
> >
> > > At a guess, should be
> > >     return min((size_t)nr * PAGE_SIZE - offset, maxsize);
> > >
> > > in both places.  I'm more than half-asleep right now; could you verify that it
> > > (as the last lines of both iter_xarray_get_pages() and iter_xarray_get_pages_alloc())
> > > builds correctly?
> >
> > No, I'm misreading it - it's unsigned * unsigned long - unsigned vs. size_t.
> > On arm it ends up with unsigned long vs. unsigned int; functionally it *is*
> > OK (both have the same range there), but it triggers the tests.  Try
> >
> >       return min_t(size_t, nr * PAGE_SIZE - offset, maxsize);
> >
> > there (both places).
>
> The reason we can't overflow on multiplication there, BTW, is that we have
> nr <= count, and count has come from weirdly open-coded
>         DIV_ROUND_UP(size + offset, PAGE_SIZE)
> IMO we'd better make it explicit, so how about the following:

Thanks. Fixed the build for me.


-- 
Regards
Sudip


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
