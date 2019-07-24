Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7471D7408A
	for <lists+v9fs-developer@lfdr.de>; Wed, 24 Jul 2019 23:02:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hqOOr-0001Hx-Jr; Wed, 24 Jul 2019 21:02:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <matthieu.baerts@tessares.net>) id 1hqOOq-0001Hq-Hc
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 21:02:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0aHp8GMq5VIPzwLrbtG0ugwqEF39kFWBxXGU6U/OZ3U=; b=jWmv26FvcggY7Px+qXo/6/EyaM
 gs72tQBOfl5mdC40ETfP2w4x3i/zFDoN6hjy2FOOXz/Tw6m8BBrR3OHi/BZuu+ENCegFVmXVunBH0
 AJ5C0dMkQpMRsn9cSs9F3Q20m0WnQKEEL4EGUI/iqflQAg8sRM0nzNgfbqjNpKb5/hh4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0aHp8GMq5VIPzwLrbtG0ugwqEF39kFWBxXGU6U/OZ3U=; b=CgWby7OzXKLDcdc2dyyLaEHHG6
 rc0UmcoD8nBqrWxaeeO7FZQnups+h6PoMHO2Buowe/jgDVdTuQeb7fUrMK2Dc8F1fhdfw+ZNyKE75
 PO2KINLeqMaYxcuapwh9lPLhzukkLxt8+RmsycuM/pIEdGxKtBCLSDflw4HTEw/Gu4Jg=;
Received: from mail-lj1-f177.google.com ([209.85.208.177])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hqOOo-00Eaai-O9
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 21:02:12 +0000
Received: by mail-lj1-f177.google.com with SMTP id k18so45826686ljc.11
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 24 Jul 2019 14:02:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tessares-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0aHp8GMq5VIPzwLrbtG0ugwqEF39kFWBxXGU6U/OZ3U=;
 b=l0dhUKUm7FzQDY3ardWMiQt72DVdzjwojDZi4LtweWzD1IU3eIUhrl0GspqzyeCMIT
 EOB7XJWD6hYOvShGKhnlJHcahGm4+IwI4LXGmbHUCdmXoRGdmw+nZQOINvbfLCVCbp2k
 TIlvrfTZkG5QYYScY5QEL7JKmhjQ2r+1m40vOPfiKICpAbNh0CkCqTREaHZiaDA6dur4
 gXLZMXDFT606uvjQTnfz6/hAPgKNT2U1ZQaB9rjPLfcxOoj4pA/FgEgdoZr71w3yECAU
 5D9EZzr9jeEhlP/oIUce81UmkVt3F+orLXGgormgFbo0/EwaKE4ccsPw+JQ8BlwJyzBH
 o7yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0aHp8GMq5VIPzwLrbtG0ugwqEF39kFWBxXGU6U/OZ3U=;
 b=JSbbJRYCZHNItItQIGK1w7zC+a1sCbgNtZ6aNAb7ZZyiFROEcDl2dN9x3mhPkBCLbB
 X9ysGUT3PxrWYoUX5Erpl09bTEgf/CZd2EBplTyLRVQVDGyFWCIeG4r2BB8HvEmJfs81
 CbEBwL1g7rWoNAxzLyJJKMuX30q3GtwJz8dp0EGQvt3897OGeKqJ3WcrXw0a0lOwvsv7
 2XTanXLtISX8CmHVg7x1zBhd1ZuAKvC0+9Vz9NkP5xnNnhJPQNZSuqHyT8rc7XcXpt9c
 GhbnLOqg94cgzPfiHZZvJyHcmFEI2gG1Nx2+aZWrO6PKKJ7PiM10cKqL4+uFbUzQFJDt
 +d8g==
X-Gm-Message-State: APjAAAXkqKMRCPZ7FBthPoGkBWz7CBDsep8HfrxO1TrmLFq/J8F6+jnq
 iuP7GXkpuBMCP6Hn7hyw/tZH2vQtCOxCTIxGdB6seQ==
X-Google-Smtp-Source: APXvYqx1zF74kaJKIzAqgW30P1eZwrflopGLcStUJ3hiNWcOoJdfZktWo0Y8iE1O/Jl0LD0eNrEF2bycCW6ITOFhLaE=
X-Received: by 2002:a2e:3602:: with SMTP id d2mr8232483lja.112.1564002123908; 
 Wed, 24 Jul 2019 14:02:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190718135255.GA21431@nautica>
 <0e508114-4e3c-f2ee-6160-9207a54414e4@tessares.net>
 <20190718155744.GA31023@nautica>
 <CAKuKrB=BaJLV87e3RVwpda5KYZB4ikwh20+kvbYk0JYYwNOZig@mail.gmail.com>
 <20190724154610.GA11211@nautica>
 <CAKuKrBnSpgPhTeih_yHCTZKEzvbu_8j1+KsE90vNsDzDDqGbpA@mail.gmail.com>
 <20190724161702.GA17344@nautica>
In-Reply-To: <20190724161702.GA17344@nautica>
From: Matthieu Baerts <matthieu.baerts@tessares.net>
Date: Wed, 24 Jul 2019 23:01:52 +0200
Message-ID: <CAKuKrB=h9_V3rPKthAfdyGiq_1J1a3_=HF2c6o3pcDUu5Fs=mA@mail.gmail.com>
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: tessares.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.177 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hqOOo-00Eaai-O9
Subject: Re: [V9fs-developer] New KASAN warnings with kernel v4.14.133
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
Cc: Sasha Levin <sashal@kernel.org>, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Dominique,

On Wed, Jul 24, 2019 at 6:17 PM Dominique Martinet
<asmadeus@codewreck.org> wrote:
>
> Matthieu Baerts wrote on Wed, Jul 24, 2019:
> > On Wed, Jul 24, 2019 at 5:46 PM Dominique Martinet
> > <asmadeus@codewreck.org> wrote:
> > > That stack trace had kernel_init which made me look at your rootflags
> > > again, and this is actually normal: the root mount is 9p2000.u which
> > > will use this function, while the outshare mount is 9p2000.L, so all is
> > > working as expected here as well.
> > >
> > > I just forgot there were two different mounts involved and didn't expect
> > > them to use different mount options (and much less to interact with each
> > > other at this level), but since you found the culprit we don't need to
> > > look that way anymore.
> >
> > That's indeed interesting to see the options are different. To be
> > honest, I didn't configure this and the test I was running is part of
> > an old test framework. I don't know why the options are different.
> > Do you think it would be better to use "9p2000.L" for the root mount as well?
>
> Well... I honestly think it should have no impact, the two mounts are
> separate enough and should not interact with each other.
>
> The greedy me thinks it's better to keep it different to have more
> problems and report them :D
>
> The nicer one thinks it's probably safer to make them both 9p2000.L at
> some point even if it shouldn't matter too much.
>
> Your call :)

Thank you for your reply!
I will then not to ask to change the options to detect more issues :-D

> > Have a good (hot) afternoon/evening!
>
> (Look at the positives, free sauna for everyone!)

(I usually do but today it was less fun to see the field on fire next
to my place. Fortunately, no big issue, we managed to control the
fire! :) )

Cheers,
Matt
-- 
Matthieu Baerts | R&D Engineer
matthieu.baerts@tessares.net
Tessares SA | Hybrid Access Solutions
www.tessares.net
1 Avenue Jean Monnet, 1348 Louvain-la-Neuve, Belgium


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
