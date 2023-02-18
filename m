Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 405A069BD84
	for <lists+v9fs-developer@lfdr.de>; Sat, 18 Feb 2023 23:24:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pTVd6-0007Bu-Ek;
	Sat, 18 Feb 2023 22:24:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1pTVd4-0007Bm-Td
 for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 22:24:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZuG2o2GL/RNJE8s44PFg/nieunuAxpEhxU6KAMrsGL4=; b=AlIzA4Z3jWANZEzIvNKNBLlYjk
 P7ofY6EW5Yue3VYsa+ixTWEgRve97al9XAQgbvDuSKEuOEMxvlh5VOEj0l70AcR5L7j+jWd+cXKF4
 1EMxF1f29K29w61ckuETFvJUxWW3HABSdpIlpCDa73LXkwAd1Osq5vDSZnUd/EmxqwII=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZuG2o2GL/RNJE8s44PFg/nieunuAxpEhxU6KAMrsGL4=; b=k8CC3aEv1QvDp60aANg2WNpPuR
 eHWTdtW9dRHUr+ku3ke9rFniFUdIRq/VlOc7izTrbDXXqigZf78Y2Ij9D5alvaCIlxV4unLcEQKvV
 8M1CJ8pNa1Xgfcv40Fn5KNNCNqQafOlIsTjK9lySGRNlr5PqPhMw1blOp9Sz0PQUcIdc=;
Received: from mail-wr1-f52.google.com ([209.85.221.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pTVd3-0000OF-D9 for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 22:24:26 +0000
Received: by mail-wr1-f52.google.com with SMTP id a11so1287284wro.2
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 18 Feb 2023 14:24:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=ZuG2o2GL/RNJE8s44PFg/nieunuAxpEhxU6KAMrsGL4=;
 b=I2jVuYWJxksxcMHQQpuoXzhLieMj0S63A9cp7urpwrV1cDglutxDwlQEKR8DXJMYns
 2jFY8AEl5JSxMStjTx8xEmfbME9H8+hWdx/K6mhmNrjLqWDNkRjx3utbDI7yAJBK8CE5
 yL9XWi2+3vz0e9q5s4AvAAqmBl2KIMC39AgiQuvyq5pmIuaD5DfiRjlzvjp9FEuLH/tZ
 1plqInPGFLnv+q92zAAE4UyOSHtLqNwHVWF095NwhCFVlFCRIGATDIIMF1FNVoo0O6VW
 VE4NTLJTdz/GEa5hMJwYJiJRf33u4h1l4FgQ8T7lnUPeVfk0sImXmjSni8zBXWMw9jjT
 ZJ1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ZuG2o2GL/RNJE8s44PFg/nieunuAxpEhxU6KAMrsGL4=;
 b=XeagsPU0eDVVCxeXWknK9LUe19LnF/6gDMhhD8ZnVnHooO0CW37+ApPf5gFiLzoep1
 8fJxu0D6OU/oFNOb600diDIYN2xChVFh85/V+Jauh87XGMSRkcKnp5IoN9hFbXpD0dPu
 t/SIJlQMawGk7B6RzyO3ReHYqq3j8HbPFmjeMJb49mVrb5AosdiyLllUp2OmHrfHaRiq
 OX4OhQ/Au/YvSrPsTIoBIbHTSHtDkLgxUsOgo1JeOlia3npghu+X3kqNRWq+25z1GhLg
 WYuZYmVRSrMeIgiyFihxvchzXPgSv4DFXh+KiEkZy41w1eYRPNmqcISUjzPlUkzGm9Y8
 ElFA==
X-Gm-Message-State: AO0yUKVKvB7oqcMe3aU1H/Hp4ALTcQoBOYyTLQsOObHkasZwDnpe3I4p
 yQQe9nd8aC1x/LyWK+DJTEGkvxvxP43osfahDKo=
X-Google-Smtp-Source: AK7set/8C2BA2FqfnJj/e7X7zoX19p8JKyl+A/sZzeZ6ksu1sutnX7O97s6TC9bvDSG5NOVWYJZYRpzaP5aCtq9OU5c=
X-Received: by 2002:a5d:6e8a:0:b0:2c5:50db:e9fc with SMTP id
 k10-20020a5d6e8a000000b002c550dbe9fcmr60421wrz.674.1676759059334; Sat, 18 Feb
 2023 14:24:19 -0800 (PST)
MIME-Version: 1.0
References: <20230124023834.106339-1-ericvh@kernel.org>
 <20230218003323.2322580-11-ericvh@kernel.org>
 <Y/Ch8o/6HVS8Iyeh@codewreck.org> <1983433.kCcYWV5373@silver>
In-Reply-To: <1983433.kCcYWV5373@silver>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Sat, 18 Feb 2023 16:24:08 -0600
Message-ID: <CAFkjPT=xhEEedeYcyn1FFcngqOJf_+8ynz4zeLbsXPOGoY6aqw@mail.gmail.com>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Yeah, I guess it depends on what options we want to separate,
 writeback == mmap so we can eliminate one option and just use mmap I suppose.
 I feel like readahead has value as it maintains the most con [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.52 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.52 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pTVd3-0000OF-D9
Subject: Re: [V9fs-developer] [PATCH v4 10/11] fs/9p: writeback mode fixes
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

Yeah, I guess it depends on what options we want to separate,
writeback == mmap so we can eliminate one option and just use mmap I
suppose.  I feel like readahead has value as it maintains the most
consistency on the host file system since it shouldn't be doing any
writeback buffering.  readahead and mmap are different than loose in
that they don't do any do any dir cache.  To your earlier comments (in
a different thread) it very well may be that eventually we separate
these into file_cache=[ readahead | mmap | loose ] and dir_cache = [
tight | temporal | loose ] and fscache is its own beast.  It struck me
as well with xattr enabled we may want to have separate caches for
xattr caching since it generates a load of traffic with security on.

On Sat, Feb 18, 2023 at 1:58 PM Christian Schoenebeck
<linux_oss@crudebyte.com> wrote:
>
> On Saturday, February 18, 2023 11:01:22 AM CET asmadeus@codewreck.org wrote:
> > Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 12:33:22AM +0000:
> > > This fixes several detected problems from preivous
> > > patches when running with writeback mode.  In
> > > particular this fixes issues with files which are opened
> > > as write only and getattr on files which dirty caches.
> > >
> > > This patch makes sure that cache behavior for an open file is stored in
> > > the client copy of fid->mode.  This allows us to reflect cache behavior
> > > from mount flags, open mode, and information from the server to
> > > inform readahead and writeback behavior.
> > >
> > > This includes adding support for a 9p semantic that qid.version==0
> > > is used to mark a file as non-cachable which is important for
> > > synthetic files.  This may have a side-effect of not supporting
> > > caching on certain legacy file servers that do not properly set
> > > qid.version.  There is also now a mount flag which can disable
> > > the qid.version behavior.
> > >
> > > Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org>
> >
> > Didn't have time to review it all thoroughly, sending what I have
> > anyway...
> >
> > > diff --git a/Documentation/filesystems/9p.rst b/Documentation/filesystems/9p.rst
> > > index 0e800b8f73cc..0c2c7a181d85 100644
> > > --- a/Documentation/filesystems/9p.rst
> > > +++ b/Documentation/filesystems/9p.rst
> > > @@ -79,18 +79,14 @@ Options
> > >
> > >    cache=mode       specifies a caching policy.  By default, no caches are used.
> > >
> > > -                        none
> > > -                           default no cache policy, metadata and data
> > > -                                alike are synchronous.
> > > -                   loose
> > > -                           no attempts are made at consistency,
> > > -                                intended for exclusive, read-only mounts
> > > -                        fscache
> > > -                           use FS-Cache for a persistent, read-only
> > > -                           cache backend.
> > > -                        mmap
> > > -                           minimal cache that is only used for read-write
> > > -                                mmap.  Northing else is cached, like cache=none
> > > +                   =========       =============================================
> > > +                   none            no cache of file or metadata
> > > +                   readahead       readahead caching of files
> > > +                   writeback       delayed writeback of files
> > > +                   mmap            support mmap operations read/write with cache
> > > +                   loose           meta-data and file cache with no coherency
> > > +                   fscache         use FS-Cache for a persistent cache backend
> > > +                   =========       =============================================
> >
> > perhaps a word saying the caches are incremental, only one can be used,
> > and listing them in order?
> > e.g. it's not clear from this that writeback also enables readahead,
> > and as a user I'd try to use cache=readahead,cache=writeback and wonder
> > why that doesn't work (well, I guess it would in that order...)
>
> +1 on docs
>
> The question was also whether to make these true separate options before being
> merged.
>
> I give these patches a spin tomorrow.
>
>
>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
