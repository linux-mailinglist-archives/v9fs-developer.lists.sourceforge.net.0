Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B6F19F94B
	for <lists+v9fs-developer@lfdr.de>; Mon,  6 Apr 2020 17:54:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jLU4p-0006pC-EU; Mon, 06 Apr 2020 15:54:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <torvalds@linuxfoundation.org>) id 1jLU4n-0006p3-Cm
 for v9fs-developer@lists.sourceforge.net; Mon, 06 Apr 2020 15:54:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Npl54g1ItqpAme/2buCJ5Yu5mdmAHuNU9wsDMO3jye0=; b=ee9c5QFX1nZ0K4c/125j8CJztp
 FkQOq7VLSMjHyA5K68wcxXMwwGEboOWr0P5di7HnnXVfnI+1O4SJTXbsGPqWKgn6K+TUAUSbLMu6f
 U2R8qp9++oaYLicMIAMKwE78mjLCCUcuyhny8yBsfAxL6a9wqy6WhpMHq3hfjTWxk4tE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Npl54g1ItqpAme/2buCJ5Yu5mdmAHuNU9wsDMO3jye0=; b=bp6f8oEtYTI6A98RCLQqaKdN14
 c959/MXlqji9wPQ2v/4MzLceZkLtE0sZvxN7cMiFVNFFLpSdD/mOwm/K/J0VcPBvMtJcbjL9m0pvn
 zLKc4pVHeMxNzwtpLySwWYsfTMtjZJaiZdiYTu/djjvKNYKOTzj7xOgQVYdlQmsHKa2w=;
Received: from mail-lj1-f194.google.com ([209.85.208.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jLU4i-005f63-Ni
 for v9fs-developer@lists.sourceforge.net; Mon, 06 Apr 2020 15:54:17 +0000
Received: by mail-lj1-f194.google.com with SMTP id q19so176607ljp.9
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 06 Apr 2020 08:54:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Npl54g1ItqpAme/2buCJ5Yu5mdmAHuNU9wsDMO3jye0=;
 b=H4p3L21IZ+E6Zf51TcjhGAy5KKt6jEvVABr7zIB8jRl0G2SuDYdEetPYUT+1ZxEWS6
 6DgxrfZ6KnN4+KFuLplobcwfZUamqs9zkVWbAh1hO2ee6JuLvqUGOXWlP1C2HoiCV4Fx
 R0dS7eJj7qE9B5xQZOSWZcZAPWfCpE9O+mXpk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Npl54g1ItqpAme/2buCJ5Yu5mdmAHuNU9wsDMO3jye0=;
 b=Z+IUp9RQMfZi5rDkbtLu6alyH6LppuRpdlN01junP0vvC0BQjvbRvnnS+1XyaTAabA
 9W5d3uKFaHiZrts7hm2mqta/1OUcyx3BOxmjiDpqlIxgz504aoSXvqEa42KL/8GntIhJ
 gEJc+xHF1XAmTChKz8Ln3dpgGsQpM9STIRnlZ0ED/HZjQWxdeeNAYgcQQcyq/rVfEVKB
 WrP/rvUNIwXH7L4p9HNHzCSOyC4s5E0tIIaxle8ywsKY6eaFF3+Zu9elFt5L4g0GhIvb
 t4KT/bcpx3S0VFM/ImSEg3Rye7EFwcmcUPgaVxzcLqea9Ypf1drBVeACCteN87iXatet
 o55A==
X-Gm-Message-State: AGi0PubA0TlIPAZMM04WAevlfbFIAjEXfBT6Prh+zSAsoJvg3Vp3odFt
 8t9AD48p4LyEz3MIwViZ20CqbLcOyAY=
X-Google-Smtp-Source: APiQypLAZr2GGtv//aVQeHQTRnB/0C985xsbmTZI61OYJvk5O/5Gb+TxIwKFZdDFDFqLY+LiKcoNhg==
X-Received: by 2002:a2e:800a:: with SMTP id j10mr12748624ljg.65.1586188445387; 
 Mon, 06 Apr 2020 08:54:05 -0700 (PDT)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com.
 [209.85.208.182])
 by smtp.gmail.com with ESMTPSA id t6sm11707869lfb.55.2020.04.06.08.54.04
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Apr 2020 08:54:04 -0700 (PDT)
Received: by mail-lj1-f182.google.com with SMTP id k21so236577ljh.2
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 06 Apr 2020 08:54:04 -0700 (PDT)
X-Received: by 2002:a2e:b4cb:: with SMTP id r11mr12993787ljm.201.1586188444079; 
 Mon, 06 Apr 2020 08:54:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200406110702.GA13469@nautica>
In-Reply-To: <20200406110702.GA13469@nautica>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 6 Apr 2020 08:53:48 -0700
X-Gmail-Original-Message-ID: <CAHk-=whVEPEsKhU4w9y_sjbg=4yYHKDfgzrpFdy=-f9j+jTO3w@mail.gmail.com>
Message-ID: <CAHk-=whVEPEsKhU4w9y_sjbg=4yYHKDfgzrpFdy=-f9j+jTO3w@mail.gmail.com>
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.194 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.194 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jLU4i-005f63-Ni
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

On Mon, Apr 6, 2020 at 4:07 AM Dominique Martinet
<asmadeus@codewreck.org> wrote:
>
> - Fix read with O_NONBLOCK to allow incomplete read and return
> immediately

Hmm. This is kind of special semantics (normally a POSIX filesystem
ignores O_NONBLOCK), but I guess it makes sense for a network
filesystem.

It might be worth a bti more documentation/commenting because of the
special semantics. For example, since you don't have 'poll()',
O_NONBLOCK doesn't really mean "nonblocking", it means "stop earlier"
if I read that patch right. You can't just return -EAGAIN because
there's no way to then avoid busy looping..

                Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
