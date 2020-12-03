Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 04FF82CE04A
	for <lists+v9fs-developer@lfdr.de>; Thu,  3 Dec 2020 22:04:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kkvlw-0000uE-F2; Thu, 03 Dec 2020 21:04:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <torvalds@linuxfoundation.org>) id 1kkvlv-0000u0-4R
 for v9fs-developer@lists.sourceforge.net; Thu, 03 Dec 2020 21:04:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OX2SMwG51HvUvi+B+PocF0hk7d7exgcj6lP8+rKrjjs=; b=Aen67PAnVOO5JZJU80z5ddhaIr
 mEekLm+rcD/BymGU2t0FoMAfg1UW2CLuIOyTokJru8SFD202waQiWTABjwxS5i6tryhES9KMtH5X7
 XOA0Zxg9eH8HIbmoDwaWbW2X3AZOs+/LlxyiflMprP2HK64/dB3B0CM+e63larK90FDE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OX2SMwG51HvUvi+B+PocF0hk7d7exgcj6lP8+rKrjjs=; b=ctHz4/WS0vrz/LteAQGgxRdcbR
 AOq+g3O3uiXxBH59Dw+MZydKs71X4P3UpD+0L6kN9U3B2zUozcza64e0cGhgHOmBDBabd5yhvpi7Q
 4dRsrlrYjpgNB/c46fGcfuUZinhcaomKm4gEyKXuPanx1Iu26QzGvs1EJbTp4ILbWvzo=;
Received: from mail-lj1-f194.google.com ([209.85.208.194])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kkvln-00E25G-Ny
 for v9fs-developer@lists.sourceforge.net; Thu, 03 Dec 2020 21:04:15 +0000
Received: by mail-lj1-f194.google.com with SMTP id f24so4078548ljk.13
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 03 Dec 2020 13:04:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OX2SMwG51HvUvi+B+PocF0hk7d7exgcj6lP8+rKrjjs=;
 b=FFyRD27Mubz6B1RzFoK/vfuBNBlicnF5AqVaBzfkspFWarDQXm1G48GRCwRJ5WnVFV
 ceCpLDkx5GiSh/lBWd0aN71pqGdEd7ruda+cx2S/bbW0fAoDoycU7rYrYMDw5Vk5NUA4
 NoxUJal2d/tWgsWLVeLqj1vvs0QHd2cAQvDmo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OX2SMwG51HvUvi+B+PocF0hk7d7exgcj6lP8+rKrjjs=;
 b=sK4D58Byg64ImeHtpJgz38Uomvb16xbRkKZGwtbhOqq2A/xswPQ/T3DjY7ChhFGo3w
 vSkyxJYNMQNZspNcaxiww/QJUioBLquFepSYIRRcdilAkQaV1rTkv4W6p1+VgWqKmiqr
 sfP9n4xYapEjLMXeuB39SHOP25IuuGDr6vcZAzryl2WQXGkWMbi3cxvUlezlyh9RGMC8
 Lwl5JjZ3wasdLuTmtS+paAcw6r7CaZVkKBMWg+68iIjkB2Tm3sFt/5HN8DWgLlGTgZrN
 XZb7zdn5AGJwfi6zjr3RT7EJ+JLWJG3HEH5/cUDQZ6OJR6MVeoPdBnIY0RlRbHlHWTpm
 UAog==
X-Gm-Message-State: AOAM533uT6xz+mTYFLj8aGbHap0XGx9JMoRkXtlncpS3k/SlYJMJ/DAm
 zFfF1Hyjw2stIs8ci2OdH298Wrrxia9i1A==
X-Google-Smtp-Source: ABdhPJwIVBDLDoKKdVZjCzxuhhhFNgg8HEiupx7C8btcNccUBDZK2TpjkYOKE/ZW25OLauVqLeKYdg==
X-Received: by 2002:ac2:43a6:: with SMTP id t6mr1947211lfl.205.1607025434633; 
 Thu, 03 Dec 2020 11:57:14 -0800 (PST)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com.
 [209.85.208.173])
 by smtp.gmail.com with ESMTPSA id w2sm855968lfe.40.2020.12.03.11.57.13
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 03 Dec 2020 11:57:13 -0800 (PST)
Received: by mail-lj1-f173.google.com with SMTP id a1so2586022ljq.3
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 03 Dec 2020 11:57:13 -0800 (PST)
X-Received: by 2002:a05:651c:339:: with SMTP id
 b25mr1977070ljp.285.1607025433176; 
 Thu, 03 Dec 2020 11:57:13 -0800 (PST)
MIME-Version: 1.0
References: <20201203103315.GA3298@nautica>
In-Reply-To: <20201203103315.GA3298@nautica>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 3 Dec 2020 11:56:57 -0800
X-Gmail-Original-Message-ID: <CAHk-=wigRSokT5YLRGH5Jyun1CwgYHR_1RMcoHjUyz7NJ8wG_g@mail.gmail.com>
Message-ID: <CAHk-=wigRSokT5YLRGH5Jyun1CwgYHR_1RMcoHjUyz7NJ8wG_g@mail.gmail.com>
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kkvln-00E25G-Ny
Subject: Re: [V9fs-developer] [GIT PULL] 9p update for 5.10-rc7 (restore
 splice ops)
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
 Netdev <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Dec 3, 2020 at 2:33 AM Dominique Martinet
<asmadeus@codewreck.org> wrote:
>
>
> Hi Linus,
>
> Someone just reported splice got disabled in 5.10-rc1, here's a couple
> of patches to turn it back on using generic helpers.

Pulled.

> (Thanks for letting me know my mails got flagged as spam last time, I've
> taken the time to setup dkim/dmarc which brings its share of problems
> with some mailing lists but hopefully will help here)

It looks good here, but I would suggest you edit your DKIM configuration a bit.

In particular, you have "List-ID" in your set of header files that
DKIM hashes, and that means that any mailing list that then adds that
header will destroy your DKIM hash.

So you seem to make it almost intentionally hard for your DKIM to be
valid when you send emails to a list.

I'd suggest you keep the DKIM hash to just the basic fields that your
MUA will fill in, ie things like

  Date:From:To:Cc:Subject:References:In-Reply-To:Message-ID

because if somebody messes with *those*, then I think they are doing
something wrong - in ways that adding a "List-ID" as it goes through a
mailing list is not.

(But I'm not a DKIM expert, just a spam hater).

              Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
