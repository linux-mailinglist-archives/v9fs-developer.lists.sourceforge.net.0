Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1431919FAF5
	for <lists+v9fs-developer@lfdr.de>; Mon,  6 Apr 2020 19:04:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jLVAs-0001vL-Od; Mon, 06 Apr 2020 17:04:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <torvalds@linuxfoundation.org>) id 1jLVAr-0001vF-T1
 for v9fs-developer@lists.sourceforge.net; Mon, 06 Apr 2020 17:04:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ar7jflrkNXaeWaLLNE+J/V0wCb3y07I41Vn1cDNa1H0=; b=dpCXyWtUivu56wcEQjK79h4KxE
 NEbFHkqO1D6bzHchJhpHkl+o3QHwPGUlcY76SYysxVCbSQI+kr476OD/XbjCfB0cjo1FH1fW+4c9D
 6Ry4WtmTGCavui+GTU9wQXNqJIwzWQbwE/q4KKUiAogJBll8PIrF3g+t8S+zOa4hvX4k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ar7jflrkNXaeWaLLNE+J/V0wCb3y07I41Vn1cDNa1H0=; b=bbpv0I83oKKqYbq5CcCwuhrUXx
 XM/WnkmSs3Cup/oLgPa6+WQ4nf6dAjd2coXAqdSruyBB3q7Tf7pOj3kYSlZsFZ438mha1LY3NQWKP
 cDNY0lv90dZdKlCB2UTu0Tk5qG1IH4tr9pFW+9pRFMOaa3zaOzieIcmPX7wVCz3OQbwM=;
Received: from mail-lf1-f65.google.com ([209.85.167.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jLVAq-004eJU-Eh
 for v9fs-developer@lists.sourceforge.net; Mon, 06 Apr 2020 17:04:37 +0000
Received: by mail-lf1-f65.google.com with SMTP id f8so46237lfe.12
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 06 Apr 2020 10:04:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ar7jflrkNXaeWaLLNE+J/V0wCb3y07I41Vn1cDNa1H0=;
 b=iAyiGuOhg1NBw6xntWOjfjlwN9HPSP5nDSdo7Jp3I/fwBUQ0KJFRRQOcR/HKfmVC7o
 qnHtvHaPJgAGeNdQfEkNAtbjCg1eAhwAJJRKbDQ3v/rLuR8aMVuXHQIiAZrb4at4+sBj
 MTvWffSqk+SyA3JRUrj2Z2o42xS9DNGcGc5MY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ar7jflrkNXaeWaLLNE+J/V0wCb3y07I41Vn1cDNa1H0=;
 b=YTvzS+nERa5I0Mz6vY6Ieu+RDdfFS44ZPEO7a9Cqt27oI43yzuR22atGzp359MY8F7
 6eap3EmnKiSqjwTncsAO9OmHVbUgbqejuIZnEavzzO8HgXAcgHcyYotp7vLgKXLJnCCn
 a3i8zzFPjZ99cvijPj8U49K6ySYHCmg2YQNpCEw9HUFEiNgsEqziHxc0hzBKs/hMAL8V
 jDoAgh967apF+HAHTe2its/M80zORyXIfZoNX1C9ktNPlZ5aRX6vcKJ/TliudZ4L8Rks
 x4PG5bkKAF60mh5cY5/A5Llq6yrF2bOAdSVn3qgdWIViKEFrpdBr0ETcGoTCkHknj0gw
 fkRQ==
X-Gm-Message-State: AGi0Puah2HK7sA73WvEfwBWbZFOz3YUEErKVkAf7KPvYgZUPbJrBmXoC
 1anfXyuDVlb8j8ndkEPe2A+T6oNbvvw=
X-Google-Smtp-Source: APiQypJ4qdWIv8/ITHHI2gzqbLKI2ecXAQ4rdT8AnlwQ81TE2f+UnBZFf68VUKE1SChavzXqde3bWQ==
X-Received: by 2002:a05:6512:14a:: with SMTP id
 m10mr9430368lfo.152.1586192669098; 
 Mon, 06 Apr 2020 10:04:29 -0700 (PDT)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com.
 [209.85.167.45])
 by smtp.gmail.com with ESMTPSA id v10sm11744580lfb.61.2020.04.06.10.04.28
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Apr 2020 10:04:28 -0700 (PDT)
Received: by mail-lf1-f45.google.com with SMTP id f8so46146lfe.12
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 06 Apr 2020 10:04:28 -0700 (PDT)
X-Received: by 2002:a05:6512:14a:: with SMTP id
 m10mr9430308lfo.152.1586192667631; 
 Mon, 06 Apr 2020 10:04:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200406110702.GA13469@nautica>
 <CAHk-=whVEPEsKhU4w9y_sjbg=4yYHKDfgzrpFdy=-f9j+jTO3w@mail.gmail.com>
 <20200406164057.GA18312@nautica>
 <20200406164641.GF21484@bombadil.infradead.org>
In-Reply-To: <20200406164641.GF21484@bombadil.infradead.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 6 Apr 2020 10:04:11 -0700
X-Gmail-Original-Message-ID: <CAHk-=wiAiGMH=bw5N1nOVWYkE9=Pcx+mxyMwjYfGEt+14hFOVQ@mail.gmail.com>
Message-ID: <CAHk-=wiAiGMH=bw5N1nOVWYkE9=Pcx+mxyMwjYfGEt+14hFOVQ@mail.gmail.com>
To: Matthew Wilcox <willy@infradead.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jLVAq-004eJU-Eh
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Sergey Alirzaev <l29ah@cock.li>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Apr 6, 2020 at 9:46 AM Matthew Wilcox <willy@infradead.org> wrote:
>
> POSIX may well "allow" short reads, but userspace programmers basically
> never check the return value from read().  Short reads aren't actually
> allowed.  That's why signals are only allowed to interrupt syscalls if
> they're fatal (and the application will never see the returned value
> because it's already dead).

Well, that's true for some applications.

But look at anybody who ever worked more with NFS mounts, and they got
used to having the 'intr' mount flag set and incomplete reads and
-EAGAIN as a result.

So a lot of normal applications are actually used to partial reads
even from file reads.

Are there apps that react badly? I'm sure - but they also wouldn't
have O_NONBLOCK set on a regular file. The only reason to set
O_NONBLOCK is because you think the fd might be a pipe or something,
and you _are_ ready to get partial reads.

So the 9p behavior certainly isn't outrageously out of line for a
network filesystem. In fact, because of O_NONBLOCK rather than a mount
option, I think it's a lot safer than a fairly standard NFS option.

               Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
