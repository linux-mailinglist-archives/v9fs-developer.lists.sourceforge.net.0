Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA9A1A1339
	for <lists+v9fs-developer@lfdr.de>; Tue,  7 Apr 2020 19:59:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jLsVa-0002BA-Gr; Tue, 07 Apr 2020 17:59:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <torvalds@linuxfoundation.org>) id 1jLsVZ-0002Az-Es
 for v9fs-developer@lists.sourceforge.net; Tue, 07 Apr 2020 17:59:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RdWHnkyUOuIQT5df0SRBbcUjsw9tkuNDCfUJgegsx2Y=; b=HNldsgFIi5fPIxnt5ffCZwahOC
 Q85AWr2SGcj6oMuyl/fxHXCirSD68/Fvi7W5R2wO3PlriPeRscqVbf9E2Rg34afxpCxGUoVfgqze6
 tpbBWkAT3JwDP/n//2SajW/R4esURzSTCoSNlleHZ5K/WTXs9FdLD78/iEAc5kuV9t44=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RdWHnkyUOuIQT5df0SRBbcUjsw9tkuNDCfUJgegsx2Y=; b=NGdsBl7uqsEsGXrYNV8ZPsDdjj
 JFDSl67bOI8aUkmSiTsZbkEXW2whPV52oVu3ErXCixL+cm1HfmJ2JsBCsRL571whZk5wRgSZmuElE
 yt38T1HrREtOJWQQL1zmA91xQeVISzRTTqijqAQmTa5e0aL/ESBKVT141viTvbnRMG7Q=;
Received: from mail-lf1-f68.google.com ([209.85.167.68])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jLsVU-00AuQj-Qd
 for v9fs-developer@lists.sourceforge.net; Tue, 07 Apr 2020 17:59:33 +0000
Received: by mail-lf1-f68.google.com with SMTP id k28so3080851lfe.10
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 07 Apr 2020 10:59:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RdWHnkyUOuIQT5df0SRBbcUjsw9tkuNDCfUJgegsx2Y=;
 b=GuMJrA5+OPCrFlqiWIQXdF0sRv1DXcntWrvutmyZqOFRpLpgvLws+UiZLwJA7kK6Sd
 +vwfQHhWYtc8mTZoTJRh3SqPJYbGEQlYNQpReplC+lHRTbAsoBc7dLrK+rxls3EDRoOA
 QbPRBs61u/GOBlZBjbijLCzyGt3+UWROpo2Ks=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RdWHnkyUOuIQT5df0SRBbcUjsw9tkuNDCfUJgegsx2Y=;
 b=dpnhvCiaRcNa9wy9eyvmkOHAp+ncxYjV6KBmklGcSI5mszNDGZEwd25dR5NIq0vpRz
 aCjMU9nQNqtIuq9Fu4pRXDXWguR1m2y2/uaFQn/W+u16U2kzvcx58IrWS3WCUJmA/EJt
 t4P3/g0kmb6va9ZCzV3GDUHl/amUG7hQ46nZ5sWjPetHA20mjHrvxbp0E/xC6P4jv4YV
 zj7sFl+nMSw4OEoKGYgYQHXNqyxDjiKDy2+LI5q2+aB1f821MjylErENuOVgdNQi9pqv
 MK/vqssTrTTU12oSDZ8AXoWO/S8bhZfKS4swzoo69H9ubMCT0Dk5us0kDGuz1DlhTta2
 7NCg==
X-Gm-Message-State: AGi0Pubu5AKCaP41sL4e4JqlaC3uhcjymVaM5NZlPuVH3hMImvXOZabf
 Ns316FbumKy+Qh+cfKCh2A9XZhkl2Q0=
X-Google-Smtp-Source: APiQypKEE4P8lrc9BUtPyxIE/2BFF8WBjtnKNHFBa+vV7AyJXg41Jpqai3UWmQSV0cP+4mkHCYJz0w==
X-Received: by 2002:ac2:5192:: with SMTP id u18mr2190199lfi.114.1586282361252; 
 Tue, 07 Apr 2020 10:59:21 -0700 (PDT)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com.
 [209.85.167.51])
 by smtp.gmail.com with ESMTPSA id v21sm14878857lji.81.2020.04.07.10.59.20
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 Apr 2020 10:59:20 -0700 (PDT)
Received: by mail-lf1-f51.google.com with SMTP id t11so3112681lfe.4
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 07 Apr 2020 10:59:20 -0700 (PDT)
X-Received: by 2002:a19:240a:: with SMTP id k10mr2247587lfk.30.1586282359598; 
 Tue, 07 Apr 2020 10:59:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200406110702.GA13469@nautica>
 <CAHk-=whVEPEsKhU4w9y_sjbg=4yYHKDfgzrpFdy=-f9j+jTO3w@mail.gmail.com>
 <20200406164057.GA18312@nautica>
 <20200407021626.cd3wwbg7ayiwt4ry@l29ah-x201.l29ah-x201>
In-Reply-To: <20200407021626.cd3wwbg7ayiwt4ry@l29ah-x201.l29ah-x201>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 7 Apr 2020 10:59:03 -0700
X-Gmail-Original-Message-ID: <CAHk-=wiE6_L2NnSo82erMHxbP8fa=f_b64G+Muu0JnUEBgDwOg@mail.gmail.com>
Message-ID: <CAHk-=wiE6_L2NnSo82erMHxbP8fa=f_b64G+Muu0JnUEBgDwOg@mail.gmail.com>
To: L29Ah <l29ah@cock.li>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.68 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: cock.li]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jLsVU-00AuQj-Qd
Subject: Re: [V9fs-developer] [GIT PULL] 9p update for 5.7
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
Cc: linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Apr 6, 2020 at 7:16 PM L29Ah <l29ah@cock.li> wrote:
>
> In fact i would prefer disabling the full reads unconditionally, but AFAIR some userspace programs might interpret a short read as EOF (and also would need to check the logic that motivated the kernel-side looping).

Oh, it's even worse than "might interpret a short read as EOF".

Lots of ad-hoc small tools will basically do something like

     fd = open(name, O_RDONLY);
     fstat(fd, &st);
     buf = malloc(st.st_size);
     read(fd, buf, st.st_size);

and be done with it. Obviously they may have some error handling (ie
imagine the above being written with proper tests for buf beign NULL
and 'fstat()' returning an error), but if they check the return value
of "read()" at all, it might be just to verify that it matches
st.st_size.

I've written stuff like that myself.

Sure, the "real" programs I write would have loops with EAGAIN and
partial reads, and maybe I'd have a helper function called "xread()"
that does that.  And most major applications will do things like that,
exactly because they've seen years of development, they're trying to
be portable, and they might even have hit other network filesystems
that do partial reads or return EAGAIN - or they might have more
complex functionality anyway which allows you to pipe things in from a
buffer etc.

But the above kind of "assume read() gets the whole thing" is not
unusual for quick hacks.

After all, it's a _valid_ assumption for a proper POSIX filesystem,
although it obviously _also_ assumes that nobody else is writing to
that file at the same time.

And some of those quick hacks may end up existing for years in major
code-bases, who knows..

[ Honesty in advertising: the Linux VFS layer itself says "screw
POSIX" for some things.

  Particularly, if somebody tries to do a read larger than 2GB in
size, the VFS layer will just say "POSIX is garbage in this situation,
we _will_ truncate this read".

  So if you deal with huge files, you _have_ to do the proper "loop
until EOF" even for regular files, and POSIX be damned.

  The kernel refuses to do crazy things, and no amount of standard
paperwork matters. ]

But basically honoring full reads for any _reasonable_ situation is
pretty much required for a lot of reasons. Yes, lots of apps will deal
gracefully with partial reads - maybe even most. But "lots" is not
"all".

             Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
