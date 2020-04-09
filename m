Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC1C1A2E90
	for <lists+v9fs-developer@lfdr.de>; Thu,  9 Apr 2020 06:54:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jMPCT-0006hU-VG; Thu, 09 Apr 2020 04:54:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <torvalds@linuxfoundation.org>) id 1jMPCS-0006hG-N5
 for v9fs-developer@lists.sourceforge.net; Thu, 09 Apr 2020 04:54:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pKIxs2zRm8OT5XpGNIVtZkNiB0y/6Wwatz3SR/493kg=; b=T3BWFYl1tLvyn/rXuj+rKs63/7
 JgYLBdDtEOwwGxklgwaDisZsHILNp3PeeMfq9XbJQV78N6DDLXdoeG3FlnDEPsT+p/RgRbQaX38/w
 fCPC0Gnf4bdW+OUgraDYDHbjWdooG9Uetd4u01dJf9INb8dUXUbyA3l8EP+k8iK4c/uM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pKIxs2zRm8OT5XpGNIVtZkNiB0y/6Wwatz3SR/493kg=; b=F0PlU5A9HmgeHLGXrC5DG5Rgby
 CX1UCiwg7eiI5CU6yNi59LoLr+aK6szRksNhie9Vbkmk1GhRjfaC3KCtXfE3wHbarMdfV5vpZhpgg
 iWRxOTJPgEWt1Anh8s6OPTS9MvDkoclKd1pmtHnPRFs/sJNbo/nqU3IAz7UzasAYKMfM=;
Received: from mail-lj1-f195.google.com ([209.85.208.195])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jMPCI-008y44-2h
 for v9fs-developer@lists.sourceforge.net; Thu, 09 Apr 2020 04:54:00 +0000
Received: by mail-lj1-f195.google.com with SMTP id r24so10073942ljd.4
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 08 Apr 2020 21:53:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pKIxs2zRm8OT5XpGNIVtZkNiB0y/6Wwatz3SR/493kg=;
 b=M3rzrXf8/eHi7ET8nMXxx5gyYyNZXr8XRM5XElcbL9uYgSqzUFsyRITiDs2cP3QACa
 X2vBb3j54lhh/qWVj64q1RlLTd8a/iLwfYX435p3ieCor3aDgOTWRJT02f80d7stvV+z
 fG4Zmmnr7nRdXh895Mxr3zKTXfwIwKA8dL0fY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pKIxs2zRm8OT5XpGNIVtZkNiB0y/6Wwatz3SR/493kg=;
 b=ixkI+QvVjyO+J32RqlmUI5X98envGaVCBBej9JS0ezUnxAvX1GbO8nUh/U/yMy+lgd
 P62fqS04HuV6bhUYfA7qOyRQHoox5JaxO+2tgBFb4FoRRgJ/j18nLxB9EaFQJIMuTNhP
 Kgp5LS2fDdQ4GGn35faXQ14jJQgBftZyp48/sohxXRH6aGlWz8IbatCw5oeGnvI9tjy6
 90SF30jPnr1fIWo6ZgWwgSm+j2YcIS3lQf/DDrjYIx0j49lHVlmzAb+P2hJ+jJWfw8ZJ
 Q0aVnzTRUG5ph+Zv5XfxBBD7n1wPpvlgn/LweDy3dzVxMHG5oIX4IjiGlo/IN9vxDzRn
 JQOA==
X-Gm-Message-State: AGi0PuYpMSO3zcuBy2z1RHCviiuyPKvetnPlQZSpBTHvvZYzIiX/AU3L
 DZTDF4OwBdZ2qErc8tEgdT3rHkFTPT8=
X-Google-Smtp-Source: APiQypKDA+vXCu8QSHg8gVOdgvL5SWgiClJbyfNkOb/PFHhS193XhjuJ3cQzrWmOO6mUXhq0jgE/xA==
X-Received: by 2002:a2e:94cb:: with SMTP id r11mr7066607ljh.276.1586408022768; 
 Wed, 08 Apr 2020 21:53:42 -0700 (PDT)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com.
 [209.85.167.43])
 by smtp.gmail.com with ESMTPSA id v22sm14591653ljc.79.2020.04.08.21.53.41
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Apr 2020 21:53:41 -0700 (PDT)
Received: by mail-lf1-f43.google.com with SMTP id s13so6884060lfb.9
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 08 Apr 2020 21:53:41 -0700 (PDT)
X-Received: by 2002:a05:6512:14a:: with SMTP id
 m10mr6567600lfo.152.1586408021187; 
 Wed, 08 Apr 2020 21:53:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200406110702.GA13469@nautica> <20200408151214.GA30977@nautica>
In-Reply-To: <20200408151214.GA30977@nautica>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 8 Apr 2020 21:53:25 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjdwUbCfaMnXRrctDD_ftBRJwbH+x3GtSOJyR1Gtm=HXA@mail.gmail.com>
Message-ID: <CAHk-=wjdwUbCfaMnXRrctDD_ftBRJwbH+x3GtSOJyR1Gtm=HXA@mail.gmail.com>
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.195 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jMPCI-008y44-2h
Subject: Re: [V9fs-developer] [GIT PULL v2] 9p update for 5.7
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

On Wed, Apr 8, 2020 at 8:12 AM Dominique Martinet
<asmadeus@codewreck.org> wrote:
>
> v2 of monday's pull request. The commit date is just now, but that is
> just the documentation patch I applied, there is no code change since
> the last version.

Note that I had already pulled your previous request, I just inquired
about the behavior.

I now pulled the doc update too.

            Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
